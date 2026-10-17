"""Records short feature clips from a running emulator for the promo video.

Install the ad-free build first (see capture_screens.py), then:
    python record_clips.py <out_dir>
Writes <out_dir>/<clip>.mp4 (phone portrait, plus one tablet clip).

UI lookups (uiautomator) take seconds, so every position is found in a
calibration pass first; recordings then use instant taps with fixed timing.
"""
import os
import subprocess
import sys
import time

import adb_ui as u

out_dir = sys.argv[1]
only = set(sys.argv[2:])  # optional: clip names to (re)record
os.makedirs(out_dir, exist_ok=True)

PHONE_SIZE = "720x1606"     # ~ the Pixel 9 Pro aspect, small enough to encode
TABLET_SIZE = "1000x1600"


def launch(wait=9):
    u.shell(f"am force-stop {u.PKG}")
    u.shell(f"monkey -p {u.PKG} -c android.intent.category.LAUNCHER 1")
    time.sleep(wait)
    u.find("Open navigation menu")


def wanted(name):
    return not only or name in only


def record(name, seconds, actions, size=PHONE_SIZE):
    """Runs [actions] while recording for [seconds]."""
    if not wanted(name):
        return
    launch()
    remote = f"/sdcard/{name}.mp4"
    proc = subprocess.Popen([u.ADB, "-s", u.SERIAL, "shell", "screenrecord", "--size", size,
                             "--bit-rate", "12000000", "--time-limit", str(seconds), remote])
    time.sleep(1.2)
    actions()
    proc.wait(timeout=seconds + 20)
    time.sleep(1.5)
    u.adb("pull", remote, os.path.join(out_dir, f"{name}.mp4"))
    u.shell(f"rm {remote}")
    print(name)


def tap(xy, wait=1.0):
    u.tap_xy(*xy, wait=wait)


def screen_size():
    return tuple(map(int, u.shell("wm size").split()[-1].split("x")))


def swipe_up(distance=0.35, ms=900):
    w, h = screen_size()
    u.shell(f"input swipe {w // 2} {int(h * 0.75)} {w // 2} {int(h * (0.75 - distance))} {ms}")


def type_words(text, delay=0.35):
    """Types word by word (each adb call takes ~0.3 s, so per-letter is too slow)."""
    for word_i, word in enumerate(text.split(" ")):
        u.shell("input text " + ("%s" if word_i else "") + word)
        time.sleep(delay)


def appbar_buttons():
    return sorted([n for n in u.nodes() if n.clickable and n.cls == "Button" and not n.label
                   and n.bounds[1] < 400], key=lambda n: n.bounds[0])


def row(number):
    return u.find(rf"^{number}\n").center


# --- setup: phone screen, clean data, clean status bar
u.shell("wm size reset")
u.shell("wm density reset")
u.shell("settings put system font_scale 1.0")
u.shell(f"pm clear {u.PKG}")
u.demo_status_bar(True)
launch()
launch()

# --- calibration (no recording)
C = {}
C["menu"] = u.find("Open navigation menu").center
bar = appbar_buttons()
C["sort"], C["search"] = bar[-2].center, bar[-1].center
C["fav_tab"] = u.find("^Favorite").center
tap(C["search"], wait=1.6)
C["search_field"] = next(n for n in u.nodes() if n.cls == "EditText").center
launch()
for n in ("0001", "0003", "0005", "0006", "0009"):
    C[n] = row(n)
tap(C["0001"], wait=2.5)
hb = appbar_buttons()
C["play"], C["stop"], C["heart"] = hb[0].center, hb[1].center, hb[-1].center
C["back"] = u.find("^Back$").center
tap(C["heart"])          # favourite 0001
tap(C["back"], wait=1.5)
tap(C["0006"], wait=2.5)
tap(C["heart"])          # favourite 0006
tap(C["back"], wait=1.5)
tap(C["menu"], wait=1.5)
for key, label in (("compose", "^Compose Song"), ("settings", "^Settings$"), ("night", "^Night Mode$")):
    C[key] = u.find(label).center
drawer = u.find("^Night Mode$")
C["scrim"] = ((drawer.bounds[2] + screen_size()[0]) // 2, drawer.center[1])
tap(C["settings"], wait=2)
C["font_size"] = u.find("^Font Size").center
tap(C["font_size"], wait=2)
C["pt20"] = u.find(r"^20 pt").center
C["close"] = u.find("^Close$").center
tap(C["close"])
launch()
tap(C["menu"], wait=1.5)
tap(C["compose"], wait=2)
for _ in range(10):
    fields = [n for n in u.nodes() if n.cls == "EditText"]
    if len(fields) >= 4:
        break
    time.sleep(1)
C["title_field"], C["lyrics_field"] = fields[0].center, fields[3].center
print("calibrated", len(C), "positions")

try:
    record("01_browse", 8, lambda: (time.sleep(1.0), swipe_up(0.45, 1500), time.sleep(1.4),
                                    swipe_up(0.45, 1500), time.sleep(1.5)))

    record("02_read", 8, lambda: (time.sleep(0.6), tap(C["0003"], 1.8), swipe_up(0.30, 1700),
                                  time.sleep(0.8), swipe_up(0.30, 1700)))

    record("03_tune", 7, lambda: (time.sleep(0.6), tap(C["0001"], 1.5), tap(C["play"], 3.5)))
    if wanted("03_tune"):
        tap(C["stop"])

    def search():
        time.sleep(0.6)
        tap(C["search"], 1.2)
        tap(C["search_field"], 0.8)
        type_words("Yesu")
        time.sleep(1.2)
        u.key("KEYCODE_BACK", wait=0.6)
        swipe_up(0.25, 1300)
    record("04_search", 13, search)

    def favourite():
        time.sleep(1.0)
        tap(C["0005"], 1.5)
        tap(C["heart"], 1.2)
        tap(C["back"], 1.2)
        tap(C["fav_tab"], 3.0)
    record("05_favorite", 13, favourite)

    def night():
        time.sleep(0.6)
        tap(C["menu"], 1.0)
        tap(C["night"], 1.2)
        tap(C["scrim"], 1.6)
        tap(C["0009"], 2.0)
        swipe_up(0.25, 1500)
    record("06_night", 11, night)
    if wanted("06_night"):  # turn night mode back off
        launch()
        tap(C["menu"], 1.0)
        tap(C["night"], 1.2)
        tap(C["scrim"], 1.0)

    def text_size():
        time.sleep(0.6)
        tap(C["menu"], 1.0)
        tap(C["settings"], 1.3)
        tap(C["font_size"], 1.5)
        tap(C["pt20"], 1.2)
        tap(C["close"], 1.0)
    record("07_text", 8, text_size)

    def compose():
        time.sleep(0.6)
        tap(C["menu"], 1.0)
        tap(C["compose"], 1.3)
        tap(C["title_field"], 0.8)
        type_words("Mu Yabi Ubangiji")
        tap(C["lyrics_field"], 0.8)
        type_words("Mu yabi Ubangiji domin alherinsa")
    record("08_compose", 22, compose)

    # Tablet: two-pane layout
    if wanted("09_tablet"):
        u.shell("wm size 1600x2560")
        u.shell("wm density 320")
        launch()
        rows = {n: row(n) for n in ("0002", "0005", "0009")}

        def tablet():
            time.sleep(0.8)
            for n in ("0002", "0005", "0009"):
                tap(rows[n], 1.8)
        record("09_tablet", 7, tablet, size=TABLET_SIZE)
finally:
    u.shell("wm size reset")
    u.shell("wm density reset")
    u.demo_status_bar(False)
