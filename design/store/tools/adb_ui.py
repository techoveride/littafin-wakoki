"""Small adb + uiautomator helpers for driving the app on an emulator."""
import os
import re
import subprocess
import time

ADB = os.environ.get("ADB", "adb")
SERIAL = os.environ.get("ANDROID_SERIAL", "emulator-5554")
PKG = "com.hymnestry.littafinwakoki"


def adb(*args, check=True):
    out = subprocess.run([ADB, "-s", SERIAL, *args], capture_output=True)
    if check and out.returncode != 0:
        raise RuntimeError(out.stderr.decode(errors="replace"))
    return out.stdout.decode("utf-8", errors="replace")


def shell(cmd):
    return adb("shell", cmd)


class Node:
    def __init__(self, attrs):
        self.desc = attrs.get("content-desc", "").replace("&#10;", "\n")
        self.text = attrs.get("text", "")
        self.cls = attrs.get("class", "").split(".")[-1]
        self.clickable = attrs.get("clickable") == "true"
        x0, y0, x1, y1 = map(int, re.findall(r"\d+", attrs["bounds"]))
        self.bounds = (x0, y0, x1, y1)
        self.center = ((x0 + x1) // 2, (y0 + y1) // 2)

    @property
    def label(self):
        return self.desc or self.text

    def __repr__(self):
        return f"<{self.cls} {self.bounds} {self.label[:40]!r}>"


def nodes(retries=6):
    """Current UI hierarchy as a flat list of nodes."""
    for _ in range(retries):
        out = adb("exec-out", "uiautomator", "dump", "/dev/tty", check=False)
        xml = out[: out.rfind(">") + 1] if "<hierarchy" in out else ""
        if xml:
            result = []
            for m in re.finditer(r"<node ([^>]*)>", xml):
                attrs = dict(re.findall(r'([\w-]+)="([^"]*)"', m.group(1)))
                if "bounds" in attrs:
                    result.append(Node(attrs))
            return result
        time.sleep(1)
    raise RuntimeError("uiautomator dump failed")


def find(pattern, clickable=None, retries=8):
    """First node whose label matches regex [pattern]; waits for it to appear."""
    rx = re.compile(pattern, re.S)
    for _ in range(retries):
        for n in nodes():
            if rx.search(n.label) and (clickable is None or n.clickable == clickable):
                return n
        time.sleep(1)
    raise LookupError(f"no node matching {pattern!r}")


def tap_xy(x, y, wait=1.5):
    shell(f"input tap {x} {y}")
    time.sleep(wait)


def tap(pattern, wait=1.5, **kw):
    n = find(pattern, **kw)
    tap_xy(*n.center, wait=wait)
    return n


def type_text(text):
    shell("input text " + text.replace(" ", "%s").replace("'", "\\'"))
    time.sleep(0.5)


def key(name, wait=1.0):
    shell(f"input keyevent {name}")
    time.sleep(wait)


def screenshot(path):
    png = subprocess.run([ADB, "-s", SERIAL, "exec-out", "screencap", "-p"], capture_output=True).stdout
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "wb") as f:
        f.write(png)


def demo_status_bar(on=True):
    """Clean status bar for screenshots: 9:41, full battery and signal, no icons."""
    if not on:
        shell("am broadcast -a com.android.systemui.demo -e command exit")
        return
    shell("settings put global sysui_demo_allowed 1")
    for cmd in (
        "-e command enter",
        "-e command clock -e hhmm 0941",
        "-e command battery -e level 100 -e plugged false",
        "-e command network -e wifi show -e level 4",
        "-e command network -e mobile hide",
        "-e command notifications -e visible false",
    ):
        shell("am broadcast -a com.android.systemui.demo " + cmd)
