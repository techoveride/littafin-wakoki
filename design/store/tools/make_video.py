"""Assembles the YouTube promo video (1920x1080, 30 fps) from recorded clips.

Usage: python make_video.py <project_dir> <clips_dir> <soundtrack.wav> <out.mp4>
Needs: Pillow and ffmpeg (FFMPEG env var, or imageio-ffmpeg's bundled binary).
"""
import os
import re
import subprocess
import sys
import tempfile

from PIL import Image, ImageDraw, ImageFilter

from brand import DEEP, FOREST, LIME, GOLD, PALE, font

project, clips_dir, soundtrack, out_path = sys.argv[1:5]
W, H, FPS = 1920, 1080, 30
FADE = 0.4

try:
    FFMPEG = os.environ.get("FFMPEG") or __import__("imageio_ffmpeg").get_ffmpeg_exe()
except ImportError:
    FFMPEG = "ffmpeg"

SCENES = [
    # clip, title, subtitle, seconds
    ("01_browse", "650+ Hausa hymns", "The complete Littafin Waƙoƙi on your phone", 7.0),
    ("02_read", "Clear, readable lyrics", "Every verse and chorus, easy on the eyes", 7.5),
    ("03_tune", "Play the tune", "Learn new hymns by ear and sing along", 6.5),
    ("04_search", "Find any hymn fast", "Search by number, title or words", 7.5),
    ("05_favorite", "Save your favourites", "One tap to the hymns you sing most", 7.5),
    ("06_night", "Night mode", "Comfortable reading in evening services", 6.5),
    ("07_text", "Your text size", "Adjust size, spacing and colours", 6.5),
    ("08_compose", "Add your own songs", "Keep your church's songs alongside", 9.0),
    ("09_tablet", "Made for tablets too", "Hymn list and lyrics side by side", 6.5),
]
INTRO, OUTRO = 4.0, 5.5

tmp = tempfile.mkdtemp(prefix="promo_")
os.makedirs(os.path.dirname(os.path.abspath(out_path)), exist_ok=True)
icon_src = Image.open(os.path.join(project, "images", "main_icon.png")).convert("RGBA")


def lerp(a, b, t):
    return tuple(int(a[i] + (b[i] - a[i]) * t) for i in range(3))


def background():
    img = Image.new("RGB", (W, H))
    d = ImageDraw.Draw(img)
    for x in range(W):
        d.line([(x, 0), (x, H)], fill=lerp(DEEP, FOREST, x / (W - 1)))
    img = img.convert("RGBA")
    glow = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    g = ImageDraw.Draw(glow)
    g.ellipse([W * 0.55, H * -0.3, W * 1.15, H * 0.9], fill=LIME + (90,))
    g.ellipse([W * 0.62, H * 0.5, W * 1.1, H * 1.4], fill=GOLD + (45,))
    img.alpha_composite(glow.filter(ImageFilter.GaussianBlur(160)))
    notes = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    nd = ImageDraw.Draw(notes)
    nd.text((W * -0.02, H * 0.30), "♫", font=font("symbol", 760), fill=(255, 255, 255, 12))
    img.alpha_composite(notes)
    return img


def icon_tile(size, radius):
    tile = icon_src.resize((size, size), Image.LANCZOS)
    mask = Image.new("L", (size, size), 0)
    ImageDraw.Draw(mask).rounded_rectangle([0, 0, size - 1, size - 1], radius=radius, fill=255)
    tile.putalpha(mask)
    return tile


def shadowed(base, box, radius, blur=24, alpha=130, offset=(8, 18)):
    sh = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    x0, y0, x1, y1 = box
    ImageDraw.Draw(sh).rounded_rectangle([x0 + offset[0], y0 + offset[1], x1 + offset[0], y1 + offset[1]],
                                         radius=radius, fill=(0, 0, 0, alpha))
    base.alpha_composite(sh.filter(ImageFilter.GaussianBlur(blur)))


def device_box(clip_w, clip_h, screen_h=900, cx=1380):
    """Screen rectangle and bezel for a clip of the given pixel size."""
    sw = int(screen_h * clip_w / clip_h) // 2 * 2
    sx, sy = cx - sw // 2, (H - screen_h) // 2
    return sx, sy, sw, screen_h


def scene_layers(title, subtitle, index, clip_w, clip_h):
    sx, sy, sw, sh = device_box(clip_w, clip_h)
    bezel, corner = 16, 34
    bg = background()
    shadowed(bg, (sx - bezel, sy - bezel, sx + sw + bezel, sy + sh + bezel), corner + bezel, blur=30)
    ImageDraw.Draw(bg).rounded_rectangle([sx - bezel, sy - bezel, sx + sw + bezel, sy + sh + bezel],
                                         radius=corner + bezel, fill=(18, 22, 19, 255))
    # Bezel overlay: opaque only where it rounds off the video's corners.
    cover = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    hole = Image.new("L", (W, H), 255)
    ImageDraw.Draw(hole).rounded_rectangle([sx, sy, sx + sw - 1, sy + sh - 1], radius=corner, fill=0)
    frame = Image.new("RGBA", (W, H), (18, 22, 19, 255))
    region = Image.new("L", (W, H), 0)
    ImageDraw.Draw(region).rectangle([sx, sy, sx + sw, sy + sh], fill=255)
    cover.paste(frame, (0, 0), Image.composite(hole, Image.new("L", (W, H), 0), region))

    text = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    d = ImageDraw.Draw(text)
    left, mid = 150, H // 2
    d.rounded_rectangle([left, mid - 175, left + 64, mid - 168], radius=4, fill=GOLD + (255,))
    d.text((left, mid - 120), f"{index:02d}", font=font("semibold", 34), fill=PALE + (255,), anchor="ls")
    lines = wrap(title, font("bold", 84), 760)
    for i, line in enumerate(lines):
        d.text((left, mid - 30 + i * 96), line, font=font("bold", 84), fill=(255, 255, 255, 255), anchor="ls")
    d.text((left, mid + 40 + (len(lines) - 1) * 96), subtitle, font=font("semibold", 36),
           fill=PALE + (255,), anchor="ls")
    return bg, cover, text, (sx, sy, sw, sh)


def wrap(text, f, max_w):
    words, lines, cur = text.split(), [], ""
    for w in words:
        trial = (cur + " " + w).strip()
        if f.getlength(trial) <= max_w or not cur:
            cur = trial
        else:
            lines.append(cur)
            cur = w
    return lines + [cur]


def card(lines_spec, path, icon_size=300):
    img = background()
    ix, iy = (W - icon_size) // 2, 170
    shadowed(img, (ix, iy, ix + icon_size, iy + icon_size), 64)
    img.alpha_composite(icon_tile(icon_size, 64), (ix, iy))
    d = ImageDraw.Draw(img)
    y = iy + icon_size + 110
    for text, weight, size, color in lines_spec:
        d.text((W // 2, y), text, font=font(weight, size), fill=color, anchor="ms")
        y += int(size * 1.35)
    img.convert("RGB").save(path)


def ff(*args):
    subprocess.run([FFMPEG, "-hide_banner", "-loglevel", "error", "-y", *args], check=True)


def probe(path):
    """(width, height, seconds) of a video."""
    out = subprocess.run([FFMPEG, "-hide_banner", "-i", path], capture_output=True, text=True).stderr
    w, h = re.search(r"Video: .*?, (\d{3,5})x(\d{3,5})", out).groups()
    hh, mm, ss = re.search(r"Duration: (\d+):(\d+):([\d.]+)", out).groups()
    return int(w), int(h), int(hh) * 3600 + int(mm) * 60 + float(ss)


ENC = ["-c:v", "libx264", "-pix_fmt", "yuv420p", "-r", str(FPS), "-preset", "medium", "-crf", "18"]
segments = []

# Intro and outro cards
intro_png, outro_png = os.path.join(tmp, "intro.png"), os.path.join(tmp, "outro.png")
card([("Littafin Waƙoƙi", "bold", 92, (255, 255, 255)),
      ("Hausa Christian Hymn Book", "semibold", 44, PALE)], intro_png)
card([("Littafin Waƙoƙi", "bold", 84, (255, 255, 255)),
      ("Free on Google Play", "semibold", 46, GOLD),
      ("Search “Littafin Wakoki”  ·  hymnestry.techoveridehub.com", "regular", 32, PALE)],
     outro_png, icon_size=260)

for name, png, dur in (("intro", intro_png, INTRO), ("outro", outro_png, OUTRO)):
    seg = os.path.join(tmp, f"{name}.mp4")
    ff("-loop", "1", "-t", str(dur), "-i", png,
       "-vf", f"fade=in:st=0:d={FADE},fade=out:st={dur - FADE}:d={FADE}", *ENC, seg)
    segments.append((name, seg))

for index, (clip, title, subtitle, dur) in enumerate(SCENES, start=1):
    src = os.path.join(clips_dir, f"{clip}.mp4")
    cw, ch, clip_len = probe(src)
    # Speed long clips up (max 2.3x) so the whole action fits the scene.
    speed = min(2.3, max(1.0, clip_len / (dur - 0.5)))
    bg, cover, text, (sx, sy, sw, sh) = scene_layers(title, subtitle, index, cw, ch)
    bg_png, cover_png, text_png = (os.path.join(tmp, f"{clip}_{k}.png") for k in ("bg", "cover", "text"))
    bg.convert("RGB").save(bg_png)
    cover.save(cover_png)
    text.save(text_png)
    seg = os.path.join(tmp, f"{clip}.mp4")
    graph = (
        f"[1:v]setpts=(PTS-STARTPTS)/{speed:.3f},fps={FPS},scale={sw}:{sh}:flags=lanczos,setsar=1,"
        f"tpad=stop_mode=clone:stop_duration={dur},trim=duration={dur},setpts=PTS-STARTPTS[app];"
        f"[3:v]format=rgba,fade=in:st=0.25:d=0.6:alpha=1[txt];"
        f"[0:v][app]overlay={sx}:{sy}[a];[a][2:v]overlay=0:0[b];[b][txt]overlay=0:0,"
        f"fade=in:st=0:d={FADE},fade=out:st={dur - FADE}:d={FADE}[v]"
    )
    ff("-loop", "1", "-t", str(dur), "-i", bg_png, "-i", src,
       "-loop", "1", "-t", str(dur), "-i", cover_png,
       "-loop", "1", "-t", str(dur), "-i", text_png,
       "-filter_complex", graph, "-map", "[v]", "-t", str(dur), *ENC, seg)
    segments.insert(-1, (clip, seg))  # keep the outro last
    print("scene", clip, f"{dur}s", f"x{speed:.2f}")

# Join, then add the soundtrack with fades
listing = os.path.join(tmp, "list.txt")
with open(listing, "w", encoding="utf-8") as f:
    for _, seg in segments:
        f.write(f"file '{seg.replace(os.sep, '/')}'\n")
joined = os.path.join(tmp, "joined.mp4")
ff("-f", "concat", "-safe", "0", "-i", listing, "-c", "copy", joined)
total = INTRO + OUTRO + sum(s[3] for s in SCENES)
ff("-i", joined, "-i", soundtrack,
   "-filter_complex", f"[1:a]atrim=0:{total},afade=in:st=0:d=1,afade=out:st={total - 2.5}:d=2.5,volume=0.9[a]",
   "-map", "0:v", "-map", "[a]", "-c:v", "copy", "-c:a", "aac", "-b:a", "192k",
   "-movflags", "+faststart", "-t", str(total), out_path)
print(out_path, f"{total:.1f}s")
