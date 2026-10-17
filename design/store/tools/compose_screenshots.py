"""Frames raw app captures into Google Play screenshots (9:16) with captions."""
import os
import sys

from PIL import Image, ImageDraw, ImageFilter, ImageFont

from brand import DEEP, FOREST, LIME, GOLD, PALE, font

project = sys.argv[1]
raw_root = os.path.join(project, "design", "store", "screenshots", "raw")
out_root = os.path.join(project, "design", "store", "screenshots")

CAPTIONS = {
    "01_home": ("650+ Hausa hymns", "in your pocket"),
    "02_hymn": ("Clear lyrics,", "easy to read"),
    "03_tune": ("Play the tune", "and sing along"),
    "04_search": ("Find any hymn", "by number or words"),
    "05_favorites": ("Keep your favourite", "hymns close"),
    "06_night": ("Night mode for", "evening services"),
    "07_text": ("Choose a text size", "that suits you"),
    "08_compose": ("Add your church's", "own songs"),
}

# Play canvas size per device
DEVICES = {
    "phone": (1080, 1920),
    "tablet7": (1440, 2560),
    "tablet10": (2160, 3840),
}


def lerp(a, b, t):
    return tuple(int(a[i] + (b[i] - a[i]) * t) for i in range(3))


def background(W, H):
    bg = Image.new("RGB", (W, H))
    d = ImageDraw.Draw(bg)
    for y in range(H):
        d.line([(0, y), (W, y)], fill=lerp(DEEP, FOREST, y / (H - 1)))
    img = bg.convert("RGBA")
    glow = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    g = ImageDraw.Draw(glow)
    g.ellipse([W * 0.45, H * 0.35, W * 1.35, H * 1.05], fill=LIME + (70,))
    g.ellipse([-W * 0.4, H * 0.55, W * 0.45, H * 1.15], fill=GOLD + (45,))
    img.alpha_composite(glow.filter(ImageFilter.GaussianBlur(W * 0.12)))
    return img


def frame(screen, target_h, corner):
    scale = target_h / screen.height
    s = screen.resize((int(screen.width * scale), target_h), Image.LANCZOS)
    bezel = max(10, int(s.width * 0.03))
    W, H = s.width + bezel * 2, s.height + bezel * 2
    body = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    ImageDraw.Draw(body).rounded_rectangle([0, 0, W - 1, H - 1], radius=corner + bezel, fill=(20, 24, 21, 255))
    mask = Image.new("L", s.size, 0)
    ImageDraw.Draw(mask).rounded_rectangle([0, 0, s.width - 1, s.height - 1], radius=corner, fill=255)
    body.paste(s, (bezel, bezel), mask)
    return body


for device, (W, H) in DEVICES.items():
    raw_dir = os.path.join(raw_root, device)
    if not os.path.isdir(raw_dir):
        print("skip", device, "(no raw captures)")
        continue
    out_dir = os.path.join(out_root, device)
    os.makedirs(out_dir, exist_ok=True)
    for name, (line1, line2) in CAPTIONS.items():
        screen = Image.open(os.path.join(raw_dir, f"{name}.png")).convert("RGBA")

        canvas = background(W, H)
        d = ImageDraw.Draw(canvas)
        size = int(W * 0.068)
        cap_top = int(H * 0.055)
        d.text((W // 2, cap_top + size), line1, font=font("bold", size), fill=(255, 255, 255), anchor="ms")
        d.text((W // 2, cap_top + int(size * 2.25)), line2, font=font("bold", size), fill=PALE, anchor="ms")

        top = cap_top + int(size * 2.9)
        avail_h = H - top - int(H * 0.04)
        max_w = int(W * 0.84)
        target_h = min(avail_h, int(max_w * screen.height / screen.width))
        corner = int(min(target_h * 0.035, target_h * screen.width / screen.height * 0.05))
        phone = frame(screen, target_h, corner=corner)

        shadow = Image.new("RGBA", (W, H), (0, 0, 0, 0))
        px = (W - phone.width) // 2
        ImageDraw.Draw(shadow).rounded_rectangle(
            [px + 10, top + 30, px + phone.width + 10, top + phone.height + 30],
            radius=int(target_h * 0.04), fill=(0, 0, 0, 120))
        canvas.alpha_composite(shadow.filter(ImageFilter.GaussianBlur(W * 0.02)))
        canvas.alpha_composite(phone, (px, top))

        canvas.convert("RGB").save(os.path.join(out_dir, f"{name}.png"), optimize=True)
    print(device, (W, H), "->", out_dir)
