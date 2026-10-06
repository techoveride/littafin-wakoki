import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:littafin_wakoki/model/globals.dart' as globals;
import 'package:littafin_wakoki/util/main_details_screen.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model/hymn.dart';

//local variables
late File jsonFile;
bool fileExists = false;

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();

  await getApplicationDocumentsDirectory().then((directory) async {
    jsonFile = File(join(directory.path, globals.fileName));
    fileExists = jsonFile.existsSync();
    globals.load("001-Ubangiji Allah, Ga Mu Nan Gabanka");
    if (fileExists) {
      if (kDebugMode) {
        print("File Already Created");
      }
      //Loads hymns from bootup
      var hymn = json.decode(jsonFile.readAsStringSync());
      globals.defaultHymn =
          List<Hymns>.from(hymn.map((i) => Hymns.fromJson(i)));
      //load finished
    } else {
      if (kDebugMode) {
        print("Creating and Writing to File");
      }
      final file = await getApplicationDocumentsDirectory().then((dir) {
        return File(join(dir.path, globals.fileName));
      });
      file.writeAsStringSync(json.encode(listHymns));
      //Loads hymns from bootup
      var hymn = json.decode(jsonFile.readAsStringSync());
      globals.defaultHymn =
          List<Hymns>.from(hymn.map((i) => Hymns.fromJson(i)));
      //load finished
    }
  });
  //Loads the theme mode of the before bootup
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool? status = preferences.getBool("nightMode");
  if (status != null) {
    globals.nightMode = status;
  } else {
    globals.nightMode = false;
  }

  //load hymn Details prefs
  var colorBg = preferences.getInt("bgColor");
  if (colorBg != null) {
    globals.bgColor = Color(colorBg);
  } else {
    globals.bgColor = Colors.white;
  }

  var colorText = preferences.getInt("txtColor");
  if (colorText != null) {
    globals.txtColor = Color(colorText);
  } else {
    globals.txtColor = Colors.black;
  }

  var sizeFont = preferences.getDouble("fontSize");
  if (sizeFont != null) {
    globals.fontSize = sizeFont;
  } else {
    globals.fontSize = 18.0;
  }

  var sizeLineSp = preferences.getDouble("lineSp");
  if (sizeLineSp != null) {
    globals.lineSp = sizeLineSp;
  } else {
    globals.lineSp = 1.2;
  }

  runApp(MyApp());
  // whenever your initialization is completed, remove the splash screen:
  FlutterNativeSplash.remove();
}

/*ThemeData _defaultTheme() {
  return ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.lightGreen,
      splashColor: Colors.lightGreenAccent,
      // fontFamily: _fontFamily,
      textTheme: TextTheme(
          headline: TextStyle(fontWeight: FontWeight.w400),
          subhead: TextStyle(fontWeight: FontWeight.w400),
          title: TextStyle(fontWeight: FontWeight.w400),
          subtitle: TextStyle(fontWeight: FontWeight.w400)));
}

setTheme(bool mode) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool("nightMode", mode);

  nightMode = mode;
  nightMode == true
      ? _themeMode = ThemeData.dark()
      : _themeMode = _defaultTheme();
}*/

StreamController<bool> isLightTheme = StreamController();

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        initialData: globals.nightMode,
        stream: isLightTheme.stream,
        builder: (context, snapshot) {
          return MaterialApp(
              theme: snapshot.data! ? ThemeData.dark() : globals.defaultTheme(),
              debugShowCheckedModeBanner: false,
              home: MasterDetailsScreen());
        });
  }
}
