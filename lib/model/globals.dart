import 'dart:async';
import 'dart:io';

// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:path_provider/path_provider.dart';

import 'hymn.dart';
import 'hymn_list.dart';

//global variables
double fontSize = 0.0;
Color bgColor = Colors.transparent;
Color txtColor = Colors.black;
double lineSp = 0.0;
bool nightMode = false;
IconData play = Icons.play_circle_outline;
IconData pause = Icons.pause_circle_outline;
IconData stop = Icons.stop;
IconData tuneIcon = play;
ThemeData themeMode = defaultTheme();
//webView State
bool isLoaded = false;
//remote config variables
String app_update = "";
String app_version = "";
String more_apps =
    'https://play.google.com/store/apps/dev?id=8322602405382603508';
String share_app = 'https://hymnestry.techoveride.com/';
String APP_STORE_URL =
    'https://phobos.apple.com/WebObjects/MZStore.woa/wa/viewSoftwareUpdate?id=com.hymnestry.littafin_wakoki&mt=8';
String PLAY_STORE_URL =
    'https://play.google.com/store/apps/details?id=com.hymnestry.littafin_wakoki';
String PREMIUM_APP_STORE_URL =
    'https://phobos.apple.com/WebObjects/MZStore.woa/wa/viewSoftwareUpdate?id=com.hymnestry.littafin_wakoki_pro&mt=8';
String PREMIUM_PLAY_STORE_URL =
    'https://play.google.com/store/apps/details?id=com.hymnestry.littafin_wakoki_pro';

late List<Hymns> defaultHymn;
const fileName = "HymnLyricsHausa_v1.json";
// String _fontFamily = 'Courier Prime';
double _subheadFont = 16.0;
double _titleFontSize = 30.0;

//default theme
ThemeData defaultTheme() {
  return ThemeData(
    splashColor: Colors.lightGreenAccent,
    indicatorColor: Colors.lightGreenAccent,
    // fontFamily: _fontFamily,
    textTheme: const TextTheme(
        headline1: TextStyle(fontWeight: FontWeight.w400),
        subtitle1: TextStyle(fontWeight: FontWeight.w400),
        subtitle2: TextStyle(fontWeight: FontWeight.w400),
        headline6: TextStyle(fontWeight: FontWeight.w400)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)))),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.green,
      accentColor: Colors.lightGreen,
    ).copyWith(secondary: Colors.lightGreen),
  );
}

TextStyle titleStyle() {
  return TextStyle(
      // fontFamily: _fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: _titleFontSize,
      color: nightMode == false ? txtColor : Colors.white);
}

TextStyle subheadStyle() {
  return TextStyle(
      // fontFamily: _fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: _subheadFont,
      color: nightMode == false ? txtColor : Colors.white);
}

TextStyle lyricStyle() {
  return TextStyle(
      // fontFamily: _fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
      height: lineSp,
      color: nightMode == false ? txtColor : Colors.white);
}

AudioPlayer player = AudioPlayer();
AudioPlayerState playerState = AudioPlayerState.STOPPED;

get isPlaying => playerState == AudioPlayerState.PLAYING;

get isPaused => playerState == AudioPlayerState.PAUSED;
String mp3Uri = "";
bool fileExists = false;

Future<void> load(String song) async {
  String result;
  String output;
  String songBuf;
  String buffer = song.substring(0, song.indexOf('-')).trim().toLowerCase();
  String yBuffer =
      int.parse(song.substring(2, song.indexOf('-')).trim()).toString();
  if (buffer.contains('y')) {
    songBuf = "y$yBuffer";
  } else {
    songBuf = int.parse(buffer).toString();
  }

  String tune = tunes.where((val) {
    result = val.substring(val.indexOf('_') + 1, val.indexOf('.')).trim();
    return songBuf.length == result.length && songBuf == result;
  }).toString();
  tune == "()"
      ? output = 'aud_0.mp3'
      : output = tune.substring(1, tune.indexOf(')'));
//     print(output);
  await getApplicationDocumentsDirectory().then((dir) async {
    File file = File('${dir.path}/$output');
    fileExists = file.existsSync();
    if (fileExists) {
      if (kDebugMode) {
        print("Tune Already Loaded");
      }
      mp3Uri = file.uri.toString();
    } else {
      final ByteData data = await rootBundle.load('tunes/$output');
      Directory dir = await getApplicationDocumentsDirectory();
      File file = File('${dir.path}/$output');
      await file.writeAsBytes(data.buffer.asUint8List(), flush: true);
      mp3Uri = file.uri.toString();
      if (kDebugMode) {
        print('finished loading, uri=$mp3Uri');
      }
    }
  });
}

Future playSound() async {
  if (mp3Uri.isNotEmpty) {
    // await player.play(mp3Uri, isLocal: true);
    await player.play(mp3Uri);
  }
}
