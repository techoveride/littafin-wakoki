"""Renders a hymn MIDI file to a soft organ WAV for the promo video soundtrack.

Usage: python render_tune.py <in.mid> <out.wav> [seconds]
Needs: numpy, mido (pip install mido).
"""
import sys
import wave

import mido
import numpy as np

src, dst = sys.argv[1], sys.argv[2]
limit = float(sys.argv[3]) if len(sys.argv) > 3 else None
RATE = 44100

# Collect (start, end, pitch, velocity) from all channels.
notes, active, t = [], {}, 0.0
for msg in mido.MidiFile(src):
    t += msg.time
    if limit and t > limit + 2:
        break
    if msg.type == "note_on" and msg.velocity > 0:
        active[(msg.channel, msg.note)] = (t, msg.velocity)
    elif msg.type in ("note_off", "note_on"):
        start = active.pop((msg.channel, msg.note), None)
        if start:
            notes.append((start[0], t, msg.note, start[1]))

end = max(n[1] for n in notes) + 2.0
if limit:
    end = min(end, limit + 2.0)
out = np.zeros(int(end * RATE) + RATE)

# Organ-like tone: a few harmonics, gentle attack and release.
HARMONICS = [(1, 1.0), (2, 0.45), (3, 0.22), (4, 0.12), (6, 0.05)]
ATTACK, RELEASE = 0.03, 0.25
for start, stop, pitch, vel in notes:
    if start >= end:
        continue
    freq = 440.0 * 2 ** ((pitch - 69) / 12)
    dur = max(stop - start, 0.08) + RELEASE
    n = int(dur * RATE)
    tt = np.arange(n) / RATE
    tone = sum(a * np.sin(2 * np.pi * freq * h * tt) for h, a in HARMONICS if freq * h < RATE / 2)
    env = np.minimum(1.0, tt / ATTACK)
    held = max(stop - start, 0.08)
    env *= np.where(tt > held, np.exp(-(tt - held) / (RELEASE / 3)), 1.0)
    i = int(start * RATE)
    seg = tone * env * (vel / 127.0)
    out[i:i + n] += seg[: len(out) - i]

# Small-room reverb: convolve with decaying noise.
rng = np.random.default_rng(7)
ir_len = int(1.6 * RATE)
ir = rng.standard_normal(ir_len) * np.exp(-np.arange(ir_len) / (0.35 * RATE))
ir[0] = 1.0
wet = np.fft.irfft(np.fft.rfft(out, len(out) + ir_len) * np.fft.rfft(ir, len(out) + ir_len))[: len(out)]
mix = 0.75 * out / (np.abs(out).max() + 1e-9) + 0.25 * wet / (np.abs(wet).max() + 1e-9)

# Fade out at the end and normalise to -3 dBFS.
fade = int(2.0 * RATE)
mix[-fade:] *= np.linspace(1, 0, fade)
mix = mix / np.abs(mix).max() * 0.7
pcm = (np.stack([mix, mix], axis=1) * 32767).astype(np.int16)

with wave.open(dst, "wb") as w:
    w.setnchannels(2)
    w.setsampwidth(2)
    w.setframerate(RATE)
    w.writeframes(pcm.tobytes())
print(dst, f"{len(mix) / RATE:.1f}s")
