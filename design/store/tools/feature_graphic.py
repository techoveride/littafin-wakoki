"""Google Play feature graphic, 1024x500. Rendered at 2x and downscaled."""
import os
import sys

from PIL import Image, ImageDraw, ImageFilter

from brand import DEEP, FOREST, LIME, GOLD, PALE, font

project = sys.argv[1]
out_dir = os.path.join(project, "design", "store")
os.makedirs(out_dir, exist_ok=True)

S = 2
W, H = 1024 * S, 500 * S


def lerp(a, b, t):
    return tuple(int(a[i] + (b[i] - a[i]) * t) for i in range(3))


# Background: deep forest -> app green, left to right
bg = Image.new("RGB", (W, H))
d = ImageDraw.Draw(bg)
for x in range(W):
    d.line([(x, 0), (x, H)], fill=lerp(DEEP, FOREST, min(1, x / (W - 1) * 1.1)))
img = bg.convert("RGBA")

# Soft glows behind the icon
glow = Image.new("RGBA", (W, H), (0, 0, 0, 0))
g = ImageDraw.Draw(glow)
g.ellipse([W * 0.60, H * -0.20, W * 1.08, H * 0.85], fill=LIME + (110,))
g.ellipse([W * 0.66, H * 0.45, W * 1.05, H * 1.25], fill=GOLD + (55,))
img.alpha_composite(glow.filter(ImageFilter.GaussianBlur(90 * S)))

# Faint music notes for texture on the left
notes = Image.new("RGBA", (W, H), (0, 0, 0, 0))
nd = ImageDraw.Draw(notes)
for ch, x, y, size in (("♫", -0.03, -0.12, 520), ("♪", 0.36, 0.42, 300), ("♩", 0.50, -0.08, 210)):
    nd.text((W * x, H * y), ch, font=font("symbol", size * S), fill=(255, 255, 255, 14))
img.alpha_composite(notes)

# Right: the app icon on a rounded tile
tile = int(250 * S)
tx, ty = int(W * 0.735 - tile / 2), int(H / 2 - tile / 2)
shadow = Image.new("RGBA", (W, H), (0, 0, 0, 0))
ImageDraw.Draw(shadow).rounded_rectangle(
    [tx + 6 * S, ty + 14 * S, tx + tile + 6 * S, ty + tile + 14 * S], radius=56 * S, fill=(0, 0, 0, 120))
img.alpha_composite(shadow.filter(ImageFilter.GaussianBlur(18 * S)))
icon = Image.open(os.path.join(project, "images", "main_icon.png")).convert("RGBA").resize((tile, tile), Image.LANCZOS)
mask = Image.new("L", (tile, tile), 0)
ImageDraw.Draw(mask).rounded_rectangle([0, 0, tile - 1, tile - 1], radius=56 * S, fill=255)
img.paste(icon, (tx, ty), mask)
ImageDraw.Draw(img).rounded_rectangle([tx, ty, tx + tile, ty + tile], radius=56 * S,
                                      outline=(255, 255, 255, 90), width=2 * S)


# Feature chips around the icon
def chip(text, cx, cy, accent):
    f = font("semibold", 19 * S)
    d = ImageDraw.Draw(img)
    tw = d.textlength(text, font=f)
    pad_x, h = 20 * S, 44 * S
    x0, y0 = int(cx - tw / 2 - pad_x), int(cy - h / 2)
    x1, y1 = int(cx + tw / 2 + pad_x + 12 * S), int(cy + h / 2)
    sh = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    ImageDraw.Draw(sh).rounded_rectangle([x0, y0 + 6 * S, x1, y1 + 6 * S], radius=h // 2, fill=(0, 0, 0, 90))
    img.alpha_composite(sh.filter(ImageFilter.GaussianBlur(10 * S)))
    d = ImageDraw.Draw(img)
    d.rounded_rectangle([x0, y0, x1, y1], radius=h // 2, fill=(255, 255, 255, 245))
    d.ellipse([x0 + 14 * S, cy - 6 * S, x0 + 26 * S, cy + 6 * S], fill=accent)
    d.text((x0 + pad_x + 12 * S, cy), text, font=f, fill=DEEP, anchor="lm")


chip("650+ hymns", W * 0.735, ty - 4 * S, LIME)
chip("Play the tune", tx + tile + 2 * S, H * 0.62, GOLD)
chip("Works offline", tx - 14 * S, H * 0.74, FOREST)

# Left: name, subtitle and features
d = ImageDraw.Draw(img)
left = int(68 * S)
base = int(H * 0.30)
d.text((left, base), "Littafin", font=font("bold", 66 * S), fill=(255, 255, 255), anchor="ls")
d.text((left, base + 78 * S), "Waƙoƙi", font=font("bold", 66 * S), fill=(255, 255, 255), anchor="ls")
d.rounded_rectangle([left, base + 102 * S, left + 70 * S, base + 108 * S], radius=3 * S, fill=GOLD)
d.text((left, base + 150 * S), "Hausa Christian Hymn Book", font=font("semibold", 25 * S), fill=PALE, anchor="ls")
d.text((left, base + 188 * S), "Lyrics · Tunes · Favourites · Night mode", font=font("regular", 20 * S),
       fill=(220, 236, 220), anchor="ls")

final = img.convert("RGB").resize((1024, 500), Image.LANCZOS)
path = os.path.join(out_dir, "feature_graphic_1024x500.png")
final.save(path, optimize=True)
print(path, final.size, os.path.getsize(path) // 1024, "KB")
