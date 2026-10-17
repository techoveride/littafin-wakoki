# Store graphics and promo video

Regenerate after UI changes. Needs Python 3 with Pillow and numpy, an Android
emulator, and Windows' Segoe UI fonts (they cover the Hausa letters ƙ ɗ ɓ; set
`FONT_DIR` to use another folder with the same file names). Run from the project
root, with `ADB` pointing at adb.exe and the emulator as `ANDROID_SERIAL`
(default `emulator-5554`).

1. Ad-free build on the emulator (the flag only hides ads; release builds are unaffected):

       flutter build apk --release --dart-define=STORE_SCREENSHOTS=true
       adb install -r build/app/outputs/flutter-apk/app-release.apk

2. Raw screens (phone, 7" and 10" tablet) → `design/store/screenshots/raw/`:

       python design/store/tools/capture_screens.py .

3. Framed Play screenshots (9:16, captions) → `design/store/screenshots/{phone,tablet7,tablet10}/`:

       python design/store/tools/compose_screenshots.py .

4. Feature graphic (1024x500) → `design/store/feature_graphic_1024x500.png`:

       python design/store/tools/feature_graphic.py .

5. Promo video (1920x1080, ~74 s) → `design/store/video/littafin_wakoki_promo.mp4`.
   Needs `pip install mido imageio-ffmpeg` (or ffmpeg on PATH / `FFMPEG`).

       python design/store/tools/record_clips.py <clips_dir> [clip names to redo]
       python design/store/tools/render_tune.py tunes/aud_1.mid <soundtrack.wav> 80
       python design/store/tools/make_video.py . <clips_dir> <soundtrack.wav> design/store/video/littafin_wakoki_promo.mp4

   The soundtrack is hymn 1's tune (Nicaea, J. B. Dykes, 1861, public domain)
   rendered as an organ, so YouTube Content ID has nothing to claim.
