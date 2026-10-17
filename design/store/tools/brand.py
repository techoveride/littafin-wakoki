"""Shared colours and fonts for the Littafin Waƙoƙi store graphics."""
import os

from PIL import ImageFont

DEEP = (8, 46, 22)        # deep forest green
FOREST = (46, 125, 50)    # app primary #2E7D32
LIME = (15, 196, 15)      # splash green #0FC40F
GOLD = (255, 193, 7)      # warm accent
PALE = (196, 240, 178)    # caption second line

# Segoe UI covers the Hausa letters ƙ, ɗ and ɓ (Poppins and Roboto don't).
FONT_DIR = os.environ.get("FONT_DIR", r"C:\Windows\Fonts")
FONTS = {
    "bold": "segoeuib.ttf",
    "semibold": "seguisb.ttf",
    "regular": "segoeui.ttf",
    "symbol": "seguisym.ttf",
}


def font(weight, size):
    return ImageFont.truetype(os.path.join(FONT_DIR, FONTS[weight]), int(size))
