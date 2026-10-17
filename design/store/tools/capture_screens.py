"""Captures raw app screens for the Play listing from a running emulator.

Install an ad-free build first:
    flutter build apk --release --dart-define=STORE_SCREENSHOTS=true
    adb install -r build/app/outputs/flutter-apk/app-release.apk

Then:  python capture_screens.py <project_dir> [phone|tablet7|tablet10 ...]
Writes design/store/screenshots/raw/<device>/<name>.png. App data is cleared
first, so favourites and settings start from scratch.
"""
import os
import sys
import time

import adb_ui as u

project = sys.argv[1]
devices = sys.argv[2:] or ["phone", "tablet7", "tablet10"]
raw_root = os.path.join(project, "design", "store", "screenshots", "raw")

# wm size / density per device; None keeps the emulator's own screen.
DEVICES = {
    "phone": None,
    "tablet7": ("1200x1920", 320),   # 600 x 960 dp
    "tablet10": ("1600x2560", 320),  # 800 x 1280 dp
}

FAVOURITES = ["0001", "0003", "0006", "0009"]


def launch():
    u.shell(f"am force-stop {u.PKG}")
    u.shell(f"monkey -p {u.PKG} -c android.intent.category.LAUNCHER 1")
    time.sleep(9)
    u.find("Open navigation menu")


def open_hymn(number, tablet):
    u.tap(rf"^{number}\n", wait=2.5)


def hymn_action_buttons():
    """Unlabelled action buttons in the hymn view: phone app bar = play, stop,
    heart; tablet pane = play, stop in the bar plus heart/share FABs."""
    return sorted(
        (n for n in u.nodes() if n.clickable and n.cls == "Button" and not n.label),
        key=lambda n: (n.bounds[1], n.bounds[0]),
    )


def toggle_favourite(tablet):
    buttons = hymn_action_buttons()
    if tablet:
        # FABs sit at the bottom right of the hymn pane: heart then share.
        fabs = sorted([b for b in buttons if b.bounds[1] > 600], key=lambda n: n.bounds[0])
        u.tap_xy(*fabs[-2].center)
    else:
        top = sorted([b for b in buttons if b.bounds[1] < 400], key=lambda n: n.bounds[0])
        u.tap_xy(*top[-1].center)


def press_play(tablet):
    buttons = hymn_action_buttons()
    if tablet:
        # The pane's play/stop bar sits just below the app bar (which holds
        # sort/search); play is the left of the two.
        play = sorted([b for b in buttons if 250 < b.bounds[1] < 700], key=lambda n: n.bounds[0])[0]
    else:
        play = sorted([b for b in buttons if b.bounds[1] < 400], key=lambda n: n.bounds[0])[0]
    u.tap_xy(*play.center, wait=3)


def toggle_night_mode():
    u.tap("Open navigation menu")
    u.tap("^Night Mode$", wait=2)
    # The drawer stays open; tap the dimmed area beside it to close it.
    drawer = u.find("^Night Mode$")
    width = int(u.shell("wm size").split()[-1].split("x")[0])
    u.tap_xy((drawer.bounds[2] + width) // 2, drawer.center[1], wait=1.5)


def back(tablet):
    if not tablet:
        u.tap("^Back$")


def capture(device):
    size = DEVICES[device]
    tablet = size is not None
    if size:
        u.shell(f"wm size {size[0]}")
        u.shell(f"wm density {size[1]}")
    else:
        u.shell("wm size reset")
        u.shell("wm density reset")
    u.shell("settings put system font_scale 1.0")
    u.shell("settings put system user_rotation 0")
    u.shell("settings put system accelerometer_rotation 0")
    u.shell(f"pm clear {u.PKG}")
    u.demo_status_bar(True)
    out = os.path.join(raw_root, device)
    shot = lambda name: u.screenshot(os.path.join(out, f"{name}.png"))

    launch()  # first launch seeds the hymn database
    launch()

    # Favourites, used by several shots below
    for number in FAVOURITES:
        open_hymn(number, tablet)
        toggle_favourite(tablet)
        back(tablet)

    # 01 Home: the hymn list (tablet: list + hymn 1)
    launch()
    if tablet:
        open_hymn("0001", tablet)
    shot("01_home")

    # 02 Hymn: reading view
    open_hymn("0003", tablet)
    shot("02_hymn")

    # 03 Tune: playing the melody
    press_play(tablet)
    shot("03_tune")
    press_play(tablet)  # pause again
    back(tablet)

    # 04 Search by words
    launch()
    appbar = sorted(
        [n for n in u.nodes() if n.clickable and n.cls == "Button" and not n.label and n.bounds[1] < 400],
        key=lambda n: n.bounds[0])
    u.tap_xy(*appbar[-1].center)
    u.type_text("Yesu")
    u.key("KEYCODE_BACK")  # hide keyboard, keep results
    if tablet:
        u.tap(r"^\d{4}\n.*Yesu", wait=2.5)
    shot("04_search")

    # 05 Favourites tab
    launch()
    u.tap("^Favorite", wait=2)
    if tablet:
        open_hymn("0006", tablet)
    shot("05_favorites")

    # 06 Night mode, reading a hymn
    launch()
    toggle_night_mode()
    open_hymn("0009", tablet)
    shot("06_night")
    launch()
    toggle_night_mode()

    # 07 Text size choices
    launch()
    u.tap("Open navigation menu")
    u.tap("^Settings$", wait=2)
    u.tap("^Font Size", wait=2)
    shot("07_text")
    u.tap("^Close$")

    # 08 Compose your own song
    launch()
    u.tap("Open navigation menu")
    u.tap("^Compose Song", wait=2)
    fields = [n for n in u.nodes() if n.cls == "EditText"]
    entries = [
        "Mu Yabi Ubangiji",
        "Mawakan Coci",
        "Tune 45",
    ]
    for field, text in zip(fields, entries):
        u.tap_xy(*field.center, wait=0.8)
        u.type_text(text)
    u.tap_xy(*fields[3].center, wait=0.8)
    for i, line in enumerate(["Mu yabi Ubangiji,", "Domin alherinsa,", "Ya cece mu duka,", "Halleluya!"]):
        if i:
            u.key("KEYCODE_ENTER", wait=0.3)
        u.type_text(line)
    u.key("KEYCODE_BACK")  # hide keyboard
    shot("08_compose")

    u.demo_status_bar(False)
    print(device, "->", out)


try:
    for d in devices:
        capture(d)
finally:
    u.shell("wm size reset")
    u.shell("wm density reset")
    u.shell("settings put system accelerometer_rotation 1")
    u.demo_status_bar(False)
