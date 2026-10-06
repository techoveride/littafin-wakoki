import 'package:flutter/material.dart';
import 'package:littafin_wakoki/model/globals.dart' as globals;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wakelock/wakelock.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String _fontRadioSelected = '18.0';
  String _lineRadioSelected = '1.2';
  String _bgRadioSelected = 'white';
  String _textRadioSelected = 'black';

  bool _wakeLock = true;

  final ScrollController _scrollControl = ScrollController();

  late ColorScheme theme;
  late Color splash;
  late Color accentColor;

  @override
  void initState() {
    super.initState();
    initialisePrefs();
  }

  _saveBgColor(int colorVal) async {
    SharedPreferences bgColorPref = await SharedPreferences.getInstance();
    bgColorPref.setInt("bgColor", colorVal);
  }

  _saveTextColor(int colorVal) async {
    SharedPreferences txtColorPref = await SharedPreferences.getInstance();
    txtColorPref.setInt("txtColor", colorVal);
  }

  _saveLineSpacing(double value) async {
    SharedPreferences lineSpPref = await SharedPreferences.getInstance();
    lineSpPref.setDouble("lineSp", value);
  }

  _saveFontSize(double value) async {
    SharedPreferences fontSizePref = await SharedPreferences.getInstance();
    fontSizePref.setDouble("fontSize", value);
  }

  _saveWakeLock(bool flag) async {
    SharedPreferences wakeLockPref = await SharedPreferences.getInstance();
    wakeLockPref.setBool("wakelock", flag);
  }

  // methods for accessing stored values
  Future<int?> _loadBgColor() async {
    SharedPreferences bgColorPref = await SharedPreferences.getInstance();
    var color = bgColorPref.getInt("bgColor");
    setState(() {
      if (color != null) _bgRadioSelected = bgColorIdentifier(color);
    });
    return color;
  }

  Future<int?> _loadTxtColor() async {
    SharedPreferences txtColorPref = await SharedPreferences.getInstance();
    var color = txtColorPref.getInt("txtColor");
    setState(() {
      if (color != null) _textRadioSelected = txtColorIdentifier(color);
    });
    return color;
  }

  Future<double?> _loadFontSize() async {
    SharedPreferences fontSizePref = await SharedPreferences.getInstance();
    var size = fontSizePref.getDouble("fontSize");
    setState(() {
      if (size != null) _fontRadioSelected = size.toString();
    });
    return size;
  }

  Future<double?> _loadLineSp() async {
    SharedPreferences lineSpPref = await SharedPreferences.getInstance();
    var size = lineSpPref.getDouble("lineSp");
    setState(() {
      if (size != null) _lineRadioSelected = size.toString();
    });
    return size;
  }

  Future<bool?> _loadWakeLock() async {
    SharedPreferences wakeLockPref = await SharedPreferences.getInstance();
    var lock = wakeLockPref.getBool("wakelock");
    setState(() {
      if (lock != null) _wakeLock = lock;
      _wakeLock == true ? Wakelock.enable() : Wakelock.disable();
    });
    return lock;
  }

  setBackground(String val) {
    setState(() {
      switch (val) {
        case 'white':
          globals.bgColor = Colors.white;
          _saveBgColor(Colors.white.value);
          break;
        case 'red':
          globals.bgColor = Colors.red;

          _saveBgColor(Colors.red.value);
          break;
        case 'blue':
          globals.bgColor = Colors.blue;

          _saveBgColor(Colors.blue.value);

          break;
        case 'green':
          globals.bgColor = Colors.green;

          _saveBgColor(Colors.green.value);

          break;
        case 'black':
          globals.bgColor = Colors.black;

          _saveBgColor(Colors.black.value);
          break;
        case 'silver':
          globals.bgColor = Colors.black12;

          _saveBgColor(Colors.black12.value);

          break;
        case 'grey':
          globals.bgColor = Colors.grey;

          _saveBgColor(Colors.grey.value);

          break;
        case 'lime':
          globals.bgColor = Colors.lime;

          _saveBgColor(Colors.lime.value);

          break;
        case 'teal':
          globals.bgColor = Colors.teal;

          _saveBgColor(Colors.teal.value);

          break;
        case 'navy':
          globals.bgColor = Colors.blueAccent;

          _saveBgColor(Colors.blueAccent.value);

          break;
        case 'indigo':
          globals.bgColor = Colors.indigo;

          _saveBgColor(Colors.indigo.value);

          break;
        default:
          globals.bgColor = Colors.lightGreenAccent;

          _saveBgColor(Colors.lightGreenAccent.value);

          break;
      }
    });
  }

  setTextColor(String val) {
    setState(() {
      switch (val) {
        case 'white':
          globals.txtColor = Colors.white;
          _saveTextColor(Colors.white.value);
          break;
        case 'red':
          globals.txtColor = Colors.red;

          _saveTextColor(Colors.red.value);
          break;
        case 'blue':
          globals.txtColor = Colors.blue;

          _saveTextColor(Colors.blue.value);

          break;
        case 'green':
          globals.txtColor = Colors.green;

          _saveTextColor(Colors.green.value);

          break;
        case 'black':
          globals.txtColor = Colors.black;

          _saveTextColor(Colors.black.value);
          break;
        case 'silver':
          globals.txtColor = Colors.black12;

          _saveTextColor(Colors.black12.value);

          break;
        case 'grey':
          globals.txtColor = Colors.grey;

          _saveTextColor(Colors.grey.value);

          break;
        case 'lime':
          globals.txtColor = Colors.lime;

          _saveTextColor(Colors.lime.value);

          break;
        case 'teal':
          globals.txtColor = Colors.teal;

          _saveTextColor(Colors.teal.value);

          break;
        case 'navy':
          globals.txtColor = Colors.blueAccent;

          _saveTextColor(Colors.blueAccent.value);

          break;
        case 'indigo':
          globals.txtColor = Colors.indigo;

          _saveTextColor(Colors.indigo.value);

          break;
        default:
          globals.txtColor = Colors.lightGreenAccent;

          _saveTextColor(Colors.lightGreenAccent.value);

          break;
      }
    });
  }

  setFontSize(String val) {
    switch (val) {
      case '16.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      case '18.0':
        globals.fontSize = double.parse(val);

        _saveFontSize(double.parse(val));
        break;
      case '20.0':
        globals.fontSize = double.parse(val);

        _saveFontSize(double.parse(val));
        break;
      case '22.0':
        globals.fontSize = double.parse(val);

        _saveFontSize(double.parse(val));
        break;
      case '24.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      case '26.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      case '28.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      case '30.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      case '32.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      case '34.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      case '36.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      default:
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
    }
  }

  setLineSpacing(String val) {
    switch (val) {
      case '1.2':
        globals.lineSp = double.parse(val);
        _saveLineSpacing(double.parse(val));
        break;
      case '1.5':
        globals.lineSp = double.parse(val);
        _saveLineSpacing(double.parse(val));
        break;
      case '2.0':
        globals.lineSp = double.parse(val);
        _saveLineSpacing(double.parse(val));
        break;
      case '2.2':
        globals.lineSp = double.parse(val);
        _saveLineSpacing(double.parse(val));
        break;
      case '2.5':
        globals.lineSp = double.parse(val);
        _saveLineSpacing(double.parse(val));
        break;
      default:
        globals.lineSp = double.parse(val);
        _saveLineSpacing(double.parse(val));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context).colorScheme;
    splash = Theme.of(context).splashColor;
    accentColor = Theme.of(context).colorScheme.secondary;
    fontSizeDialog() {
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
                title: Column(
                  children: const <Widget>[
                    Text("Font Size"),
                    Divider(
                      thickness: 3,
                    )
                  ],
                ),
                content: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Scrollbar(
                      controller: _scrollControl,
                      child: SingleChildScrollView(
                        controller: _scrollControl,
                        child: StatefulBuilder(
                          builder: (_, StateSetter setState) {
                            return Column(
                              children: <Widget>[
                                RadioListTile(
                                  groupValue: _fontRadioSelected,
                                  title: const Text("16sp"),
                                  value: '16.0',
                                  onChanged: (val) {
                                    setState(() =>
                                        _fontRadioSelected = val.toString());
                                    setFontSize(val.toString());
                                  },
                                ),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: const Text("18sp"),
                                    value: '18.0',
                                    onChanged: (val) {
                                      setState(() =>
                                          _fontRadioSelected = val.toString());
                                      setFontSize(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: const Text("20sp"),
                                    value: '20.0',
                                    onChanged: (val) {
                                      setState(() =>
                                          _fontRadioSelected = val.toString());
                                      setFontSize(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: const Text("22sp"),
                                    value: '22.0',
                                    onChanged: (val) {
                                      setState(() =>
                                          _fontRadioSelected = val.toString());
                                      setFontSize(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: const Text("24sp"),
                                    value: '24.0',
                                    onChanged: (val) {
                                      setState(() =>
                                          _fontRadioSelected = val.toString());
                                      setFontSize(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: const Text("26sp"),
                                    value: '26.0',
                                    onChanged: (val) {
                                      setState(() =>
                                          _fontRadioSelected = val.toString());
                                      setFontSize(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: const Text("28sp"),
                                    value: '28.0',
                                    onChanged: (val) {
                                      setState(() =>
                                          _fontRadioSelected = val.toString());
                                      setFontSize(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: const Text("30sp"),
                                    value: '30.0',
                                    onChanged: (val) {
                                      setState(() =>
                                          _fontRadioSelected = val.toString());
                                      setFontSize(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: const Text("32sp"),
                                    value: '32.0',
                                    onChanged: (val) {
                                      setState(() =>
                                          _fontRadioSelected = val.toString());
                                      setFontSize(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: const Text("34sp"),
                                    value: '34.0',
                                    onChanged: (val) {
                                      setState(() =>
                                          _fontRadioSelected = val.toString());
                                      setFontSize(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: const Text("36sp"),
                                    value: '36.0',
                                    onChanged: (val) {
                                      setState(() =>
                                          _fontRadioSelected = val.toString());
                                      setFontSize(val.toString());
                                    }),
                                const Divider(
                                  thickness: 3,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    )),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(accentColor),
                          overlayColor: MaterialStateProperty.all(splash),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          )),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.cancel),
                      label: const Text(
                        "Done",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
                elevation: 4.0,
                contentPadding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: splash, width: 1.5),
                    borderRadius: BorderRadius.circular(12.0)),
              ));
    }

    lineSpaceDialog() {
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
                title: Column(
                  children: const <Widget>[
                    Text("Line Spacing"),
                    Divider(
                      thickness: 3,
                    )
                  ],
                ),
                content: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Scrollbar(
                      controller: _scrollControl,
                      child: SingleChildScrollView(
                        controller: _scrollControl,
                        child: StatefulBuilder(
                          builder: (_, StateSetter setState) {
                            return Column(
                              children: <Widget>[
                                RadioListTile(
                                    groupValue: _lineRadioSelected,
                                    title: const Text("1sp"),
                                    value: '1.0',
                                    onChanged: (val) {
                                      setState(() =>
                                          _lineRadioSelected = val.toString());
                                      setLineSpacing(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _lineRadioSelected,
                                    title: const Text("1.2sp"),
                                    value: '1.2',
                                    onChanged: (val) {
                                      setState(() =>
                                          _lineRadioSelected = val.toString());
                                      setLineSpacing(val.toString());
                                    }),
                                RadioListTile(
                                  groupValue: _lineRadioSelected,
                                  title: const Text("1.5sp"),
                                  onChanged: (val) {
                                    setState(() =>
                                        _lineRadioSelected = val.toString());
                                    setLineSpacing(val.toString());
                                  },
                                  value: '1.5',
                                ),
                                RadioListTile(
                                    groupValue: _lineRadioSelected,
                                    title: const Text("2sp"),
                                    value: '2.0',
                                    onChanged: (val) {
                                      setState(() =>
                                          _lineRadioSelected = val.toString());
                                      setLineSpacing(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _lineRadioSelected,
                                    title: const Text("2.2sp"),
                                    value: '2.2',
                                    onChanged: (val) {
                                      setState(() =>
                                          _lineRadioSelected = val.toString());
                                      setLineSpacing(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _lineRadioSelected,
                                    title: const Text("2.5sp"),
                                    value: '2.5',
                                    onChanged: (val) {
                                      setState(() =>
                                          _lineRadioSelected = val.toString());
                                      setLineSpacing(val.toString());
                                    }),
                                const Divider(
                                  thickness: 3,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    )),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(accentColor),
                          overlayColor: MaterialStateProperty.all(splash),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          )),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.cancel),
                      label: const Text(
                        "Done",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
                elevation: 4.0,
                contentPadding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: splash, width: 1.5),
                    borderRadius: BorderRadius.circular(12.0)),
              ));
    }

    textColorDialog() {
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
                title: Column(
                  children: const <Widget>[
                    Text("Text Color"),
                    Divider(
                      thickness: 3,
                    )
                  ],
                ),
                content: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Scrollbar(
                      controller: _scrollControl,
                      child: SingleChildScrollView(
                        controller: _scrollControl,
                        child: StatefulBuilder(
                          builder: (_, StateSetter setState) {
                            return Column(
                              children: <Widget>[
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: const Text("White"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("white"),
                                        radius: 18.0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                    ),
                                    value: 'white',
                                    onChanged: (val) {
                                      setState(() {
                                        _textRadioSelected = val.toString();
                                      });
                                      setTextColor(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: const Text("Red"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("red"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'red',
                                    onChanged: (val) {
                                      setState(() =>
                                          _textRadioSelected = val.toString());
                                      setTextColor(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: const Text("Blue"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("blue"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'blue',
                                    onChanged: (val) {
                                      setState(() =>
                                          _textRadioSelected = val.toString());
                                      setTextColor(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: const Text("Green"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("green"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'green',
                                    onChanged: (val) {
                                      setState(() =>
                                          _textRadioSelected = val.toString());
                                      setTextColor(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: const Text("Black"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("black"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'black',
                                    onChanged: (val) {
                                      setState(() =>
                                          _textRadioSelected = val.toString());
                                      setTextColor(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: const Text("Silver"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("silver"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'silver',
                                    onChanged: (val) {
                                      setState(() =>
                                          _textRadioSelected = val.toString());
                                      setTextColor(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: const Text("Grey"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("grey"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'grey',
                                    onChanged: (val) {
                                      setState(() =>
                                          _textRadioSelected = val.toString());
                                      setTextColor(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: const Text("Lime"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("lime"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'lime',
                                    onChanged: (val) {
                                      setState(() =>
                                          _textRadioSelected = val.toString());
                                      setTextColor(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: const Text("Teal"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("teal"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'teal',
                                    onChanged: (val) {
                                      setState(() =>
                                          _textRadioSelected = val.toString());
                                      setTextColor(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: const Text("Navy"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("navy"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'navy',
                                    onChanged: (val) {
                                      setState(() =>
                                          _textRadioSelected = val.toString());
                                      setTextColor(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: const Text("Indigo"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("indigo"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'indigo',
                                    onChanged: (val) {
                                      setState(() =>
                                          _textRadioSelected = val.toString());
                                      setTextColor(val.toString());
                                    }),
                                const Divider(
                                  thickness: 3,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    )),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(accentColor),
                          overlayColor: MaterialStateProperty.all(splash),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          )),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.cancel),
                      label: const Text(
                        "Done",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
                elevation: 4.0,
                contentPadding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: theme.primaryVariant, width: 1.5),
                    borderRadius: BorderRadius.circular(12.0)),
              ));
    }

    bgColorDialog() {
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
                title: Column(
                  children: const <Widget>[
                    Text("Background Color"),
                    Divider(
                      thickness: 3,
                    )
                  ],
                ),
                content: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Scrollbar(
                      controller: _scrollControl,
                      child: SingleChildScrollView(
                        controller: _scrollControl,
                        child: StatefulBuilder(
                          builder: (_, StateSetter setState) {
                            return Column(
                              children: <Widget>[
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: const Text("White"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("white"),
                                        radius: 18.0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                    ),
                                    value: 'white',
                                    onChanged: (val) {
                                      setState(() {
                                        _bgRadioSelected = val.toString();
                                      });
                                      setBackground(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: const Text("Red"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("red"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'red',
                                    onChanged: (val) {
                                      setState(() =>
                                          _bgRadioSelected = val.toString());
                                      setBackground(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: const Text("Blue"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("blue"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'blue',
                                    onChanged: (val) {
                                      setState(() =>
                                          _bgRadioSelected = val.toString());
                                      setBackground(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: const Text("Green"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("green"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'green',
                                    onChanged: (val) {
                                      setState(() =>
                                          _bgRadioSelected = val.toString());
                                      setBackground(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: const Text("Black"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("black"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'black',
                                    onChanged: (val) {
                                      setState(() =>
                                          _bgRadioSelected = val.toString());
                                      setBackground(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: const Text("Silver"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("silver"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'silver',
                                    onChanged: (val) {
                                      setState(() =>
                                          _bgRadioSelected = val.toString());
                                      setBackground(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: const Text("Grey"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("grey"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'grey',
                                    onChanged: (val) {
                                      setState(() =>
                                          _bgRadioSelected = val.toString());
                                      setBackground(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: const Text("Lime"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("lime"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'lime',
                                    onChanged: (val) {
                                      setState(() =>
                                          _bgRadioSelected = val.toString());
                                      setBackground(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: const Text("Teal"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("teal"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'teal',
                                    onChanged: (val) {
                                      setState(() =>
                                          _bgRadioSelected = val.toString());
                                      setBackground(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: const Text("Navy"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("navy"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'navy',
                                    onChanged: (val) {
                                      setState(() =>
                                          _bgRadioSelected = val.toString());
                                      setBackground(val.toString());
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: const Text("Indigo"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("indigo"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'indigo',
                                    onChanged: (val) {
                                      setState(() =>
                                          _bgRadioSelected = val.toString());
                                      setBackground(val.toString());
                                    }),
                                const Divider(
                                  thickness: 3,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    )),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(accentColor),
                          overlayColor: MaterialStateProperty.all(splash),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          )),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.cancel),
                      label: const Text(
                        "Done",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
                elevation: 4.0,
                contentPadding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: splash, width: 1.5),
                    borderRadius: BorderRadius.circular(12.0)),
              ));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          )
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
              title: const Text("Font Size"),
              subtitle: const Text("Change the size of the Lyrics"),
              onTap: () => fontSizeDialog()),
          const Divider(
            thickness: 2.0,
          ),
          ListTile(
            title: const Text("Line Spacing"),
            subtitle:
                const Text("Change the space between lines of the Lyrics"),
            onTap: () => lineSpaceDialog(),
          ),
          const Divider(
            thickness: 2.0,
          ),
          ListTile(
            title: const Text("Text Color"),
            subtitle: const Text("Change the color of the Lyrics"),
            trailing: CircleAvatar(
              backgroundColor: globals.txtColor,
              radius: 18.0,
              child: Container(),
            ),
            onTap: () => textColorDialog(),
          ),
          const Divider(
            thickness: 2.0,
          ),
          ListTile(
            title: const Text("Background Color"),
            subtitle: const Text("Change the background color of the Lyrics"),
            trailing: CircleAvatar(
              backgroundColor: globals.bgColor,
              radius: 18.0,
              child: Container(),
            ),
            onTap: () => bgColorDialog(),
          ),
          const Divider(
            thickness: 2.0,
          ),
          ListTile(
            trailing: Checkbox(
                value: _wakeLock,
                onChanged: (val) {
                  setState(() => _wakeLock = val!);
                  _saveWakeLock(_wakeLock);
                }),
            title: const Text("Keep Screen Awake"),
            subtitle: const Text("When checked screen stays turned on"),
          ),
          const Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }

  String txtColorIdentifier(int color) {
    switch (color) {
      case 4294967295:
        return _textRadioSelected = 'white';

      case 4294198070:
        return _textRadioSelected = 'red';

        break;
      case 4280391411:
        return _textRadioSelected = 'blue';

        break;
      case 4283215696:
        return _textRadioSelected = 'green';

      case 4278190080:
        return _textRadioSelected = 'black';

      case 1660944383:
        return _textRadioSelected = 'silver';

        break;
      case 4288585374:
        return _textRadioSelected = 'grey';

        break;
      case 4291681337:
        return _textRadioSelected = 'lime';

        break;
      case 4278228616:
        return _textRadioSelected = 'teal';

        break;
      case 4282682111:
        return _textRadioSelected = 'navy';

        break;
      case 4282339765:
        return _textRadioSelected = 'indigo';

        break;

      default:
        return _textRadioSelected = 'white';
        break;
    }
  }

  String bgColorIdentifier(int color) {
    switch (color) {
      case 4294967295:
        return _bgRadioSelected = 'white';
        break;
      case 4294198070:
        return _bgRadioSelected = 'red';

        break;
      case 4280391411:
        return _bgRadioSelected = 'blue';

        break;
      case 4283215696:
        return _bgRadioSelected = 'green';

        break;
      case 4278190080:
        return _bgRadioSelected = 'black';

        break;
      case 1660944383:
        return _bgRadioSelected = 'silver';

        break;
      case 4288585374:
        return _bgRadioSelected = 'grey';

        break;
      case 4291681337:
        return _bgRadioSelected = 'lime';

        break;
      case 4278228616:
        return _bgRadioSelected = 'teal';

        break;
      case 4282682111:
        return _bgRadioSelected = 'navy';

        break;
      case 4282339765:
        return _bgRadioSelected = 'indigo';

        break;

      default:
        return _bgRadioSelected = 'white';
        break;
    }
  }

  void initialisePrefs() {
    _loadWakeLock();
    _loadLineSp();
    _loadFontSize();
    _loadBgColor();
    _loadTxtColor();
  }

  Color getTextColor(String val) {
    switch (val) {
      case 'white':
        return Colors.white;
        break;
      case 'red':
        return Colors.red;

        break;
      case 'blue':
        return Colors.blue;

        break;
      case 'green':
        return Colors.green;

        break;
      case 'black':
        return Colors.black;

        break;
      case 'silver':
        return Colors.black12;

        break;
      case 'grey':
        return Colors.grey;

        break;
      case 'lime':
        return Colors.lime;

        break;
      case 'teal':
        return Colors.teal;

        break;
      case 'navy':
        return Colors.blueAccent;

        break;
      case 'indigo':
        return Colors.indigo;

        break;
      default:
        return Colors.lightGreenAccent;

        break;
    }
  }

  Color getBgColor(String val) {
    switch (val) {
      case 'white':
        return Colors.white;
        break;
      case 'red':
        return Colors.red;

        break;
      case 'blue':
        return Colors.blue;

      case 'green':
        return Colors.green;

        break;
      case 'black':
        return Colors.black;

      case 'silver':
        return Colors.black12;

      case 'grey':
        return Colors.grey;

      case 'lime':
        return Colors.lime;

      case 'teal':
        return Colors.teal;

      case 'navy':
        return Colors.blueAccent;

      case 'indigo':
        return Colors.indigo;

      default:
        return Colors.lightGreenAccent;
    }
  }
}

/*
class Settings extends StatefulWidget {
//  final VoidCallback refreshState;
//   final TabController tabController;
//
//   const Settings({Key? key, this.tabController}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String _fontRadioSelected = '18.0';
  String _lineRadioSelected = '1.2';
  String _bgRadioSelected = 'white';
  String _textRadioSelected = 'black';
  bool _wakeLock = false;

  final ScrollController _scrollControl = ScrollController();

  @override
  void initState() {
    super.initState();
    initialisePrefs();
  }

  _saveBgColor(int colorVal) async {
    SharedPreferences bgColorPref = await SharedPreferences.getInstance();
    bgColorPref.setInt("bgColor", colorVal);
  }

  _saveTextColor(int colorVal) async {
    SharedPreferences txtColorPref = await SharedPreferences.getInstance();
    txtColorPref.setInt("txtColor", colorVal);
  }

  _saveLineSpacing(double value) async {
    SharedPreferences lineSpPref = await SharedPreferences.getInstance();
    lineSpPref.setDouble("lineSp", value);
  }

  _saveFontSize(double value) async {
    SharedPreferences fontSizePref = await SharedPreferences.getInstance();
    fontSizePref.setDouble("fontSize", value);
  }

  _saveWakeLock(bool flag) async {
    SharedPreferences wakeLockPref = await SharedPreferences.getInstance();
    wakeLockPref.setBool("wakelock", flag);
  }

  // methods for accessing stored values
  Future<int> _loadBgColor() async {
    SharedPreferences bgColorPref = await SharedPreferences.getInstance();
    var color = bgColorPref.getInt("bgColor");
    setState(() {
      if (color != null) _bgRadioSelected = bgColorIdentifier(color);
    });
    return color;
  }

  Future<int> _loadTxtColor() async {
    SharedPreferences txtColorPref = await SharedPreferences.getInstance();
    var color = txtColorPref.getInt("txtColor");
    setState(() {
      if (color != null) _textRadioSelected = txtColorIdentifier(color);
    });
    return color;
  }

  Future<double> _loadFontSize() async {
    SharedPreferences fontSizePref = await SharedPreferences.getInstance();
    var size = fontSizePref.getDouble("fontSize");
    setState(() {
      if (size != null) _fontRadioSelected = size.toString();
    });
    return size;
  }

  Future<double> _loadLineSp() async {
    SharedPreferences lineSpPref = await SharedPreferences.getInstance();
    var size = lineSpPref.getDouble("lineSp");
    setState(() {
      if (size != null) _lineRadioSelected = size.toString();
    });
    return size;
  }

  Future<bool?> _loadWakeLock() async {
    SharedPreferences wakeLockPref = await SharedPreferences.getInstance();
    var lock = wakeLockPref.getBool("wakelock");
    setState(() {
      if (lock != null) _wakeLock = lock;
      _wakeLock == true ? Wakelock.enable() : Wakelock.disable();
    });
    return lock;
  }

  setBackground(String val) {
    setState(() {
      switch (val) {
        case 'white':
          globals.bgColor = Colors.white;
          _saveBgColor(Colors.white.value);
          break;
        case 'red':
          globals.bgColor = Colors.red;

          _saveBgColor(Colors.red.value);
          break;
        case 'blue':
          globals.bgColor = Colors.blue;

          _saveBgColor(Colors.blue.value);

          break;
        case 'green':
          globals.bgColor = Colors.green;

          _saveBgColor(Colors.green.value);

          break;
        case 'black':
          globals.bgColor = Colors.black;

          _saveBgColor(Colors.black.value);
          break;
        case 'silver':
          globals.bgColor = Colors.black12;

          _saveBgColor(Colors.black12.value);

          break;
        case 'grey':
          globals.bgColor = Colors.grey;

          _saveBgColor(Colors.grey.value);

          break;
        case 'lime':
          globals.bgColor = Colors.lime;

          _saveBgColor(Colors.lime.value);

          break;
        case 'teal':
          globals.bgColor = Colors.teal;

          _saveBgColor(Colors.teal.value);

          break;
        case 'navy':
          globals.bgColor = Colors.blueAccent;

          _saveBgColor(Colors.blueAccent.value);

          break;
        case 'indigo':
          globals.bgColor = Colors.indigo;

          _saveBgColor(Colors.indigo.value);

          break;
        default:
          globals.bgColor = Colors.lightGreenAccent;

          _saveBgColor(Colors.lightGreenAccent.value);

          break;
      }
    });
  }

  setTextColor(String val) {
    setState(() {
      switch (val) {
        case 'white':
          globals.txtColor = Colors.white;
          _saveTextColor(Colors.white.value);
          break;
        case 'red':
          globals.txtColor = Colors.red;

          _saveTextColor(Colors.red.value);
          break;
        case 'blue':
          globals.txtColor = Colors.blue;

          _saveTextColor(Colors.blue.value);

          break;
        case 'green':
          globals.txtColor = Colors.green;

          _saveTextColor(Colors.green.value);

          break;
        case 'black':
          globals.txtColor = Colors.black;

          _saveTextColor(Colors.black.value);
          break;
        case 'silver':
          globals.txtColor = Colors.black12;

          _saveTextColor(Colors.black12.value);

          break;
        case 'grey':
          globals.txtColor = Colors.grey;

          _saveTextColor(Colors.grey.value);

          break;
        case 'lime':
          globals.txtColor = Colors.lime;

          _saveTextColor(Colors.lime.value);

          break;
        case 'teal':
          globals.txtColor = Colors.teal;

          _saveTextColor(Colors.teal.value);

          break;
        case 'navy':
          globals.txtColor = Colors.blueAccent;

          _saveTextColor(Colors.blueAccent.value);

          break;
        case 'indigo':
          globals.txtColor = Colors.indigo;

          _saveTextColor(Colors.indigo.value);

          break;
        default:
          globals.txtColor = Colors.lightGreenAccent;

          _saveTextColor(Colors.lightGreenAccent.value);

          break;
      }
    });
  }

  setFontSize(String val) {
    switch (val) {
      case '16.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      case '18.0':
        globals.fontSize = double.parse(val);

        _saveFontSize(double.parse(val));
        break;
      case '20.0':
        globals.fontSize = double.parse(val);

        _saveFontSize(double.parse(val));
        break;
      case '22.0':
        globals.fontSize = double.parse(val);

        _saveFontSize(double.parse(val));
        break;
      case '24.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      case '26.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      case '28.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      case '30.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      case '32.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      case '34.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      case '36.0':
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
      default:
        globals.fontSize = double.parse(val);
        _saveFontSize(double.parse(val));
        break;
    }
  }

  setLineSpacing(String val) {
    switch (val) {
      case '1.2':
        globals.lineSp = double.parse(val);
        _saveLineSpacing(double.parse(val));
        break;
      case '1.5':
        globals.lineSp = double.parse(val);
        _saveLineSpacing(double.parse(val));
        break;
      case '2.0':
        globals.lineSp = double.parse(val);
        _saveLineSpacing(double.parse(val));
        break;
      case '2.2':
        globals.lineSp = double.parse(val);
        _saveLineSpacing(double.parse(val));
        break;
      case '2.5':
        globals.lineSp = double.parse(val);
        _saveLineSpacing(double.parse(val));
        break;
      default:
        globals.lineSp = double.parse(val);
        _saveLineSpacing(double.parse(val));
        break;
    }
  }

  ColorScheme theme;
  Color splash;

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context).colorScheme;
    splash = Theme.of(context).splashColor;
    fontSizeDialog() {
      showDialog(
          context: context,
          builder: (_) => new AlertDialog(
                title: Column(
                  children: <Widget>[
                    const Text("Font Size"),
                    const Divider(
                      thickness: 3,
                    )
                  ],
                ),
                content: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Scrollbar(
                      controller: _scrollControl,
                      child: SingleChildScrollView(
                        controller: _scrollControl,
                        child: StatefulBuilder(
                          builder: (_, StateSetter setState) {
                            return Column(
                              children: <Widget>[
                                RadioListTile(
                                  groupValue: _fontRadioSelected,
                                  title: Text("16sp"),
                                  value: '16.0',
                                  onChanged: (val) {
                                    setState(() {
                                      _fontRadioSelected = val;
                                    });
                                    setFontSize(val);
                                  },
                                ),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: Text("18sp"),
                                    value: '18.0',
                                    onChanged: (val) {
                                      setState(() => _fontRadioSelected = val);
                                      setFontSize(val);
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: Text("20sp"),
                                    value: '20.0',
                                    onChanged: (val) {
                                      setState(() => _fontRadioSelected = val);
                                      setFontSize(val);
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: Text("22sp"),
                                    value: '22.0',
                                    onChanged: (val) {
                                      setState(() => _fontRadioSelected = val);
                                      setFontSize(val);
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: Text("24sp"),
                                    value: '24.0',
                                    onChanged: (val) {
                                      setState(() => _fontRadioSelected = val);
                                      setFontSize(val);
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: Text("26sp"),
                                    value: '26.0',
                                    onChanged: (val) {
                                      setState(() => _fontRadioSelected = val);
                                      setFontSize(val);
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: Text("28sp"),
                                    value: '28.0',
                                    onChanged: (val) {
                                      setState(() => _fontRadioSelected = val);
                                      setFontSize(val);
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: Text("30sp"),
                                    value: '30.0',
                                    onChanged: (val) {
                                      setState(() => _fontRadioSelected = val);
                                      setFontSize(val);
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: Text("32sp"),
                                    value: '32.0',
                                    onChanged: (val) {
                                      setState(() => _fontRadioSelected = val);
                                      setFontSize(val);
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: Text("34sp"),
                                    value: '34.0',
                                    onChanged: (val) {
                                      setState(() => _fontRadioSelected = val);
                                      setFontSize(val);
                                    }),
                                RadioListTile(
                                    groupValue: _fontRadioSelected,
                                    title: Text("36sp"),
                                    value: '36.0',
                                    onChanged: (val) {
                                      setState(() => _fontRadioSelected = val);
                                      setFontSize(val);
                                    }),
                                const Divider(
                                  thickness: 3,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    )),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton.icon(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      onPressed: () {
                        Navigator.of(context).pop();
                        // favHymnDetailKey != null
                        //     ? favHymnDetailKey.currentState.initState()
                        //     : hymnGKey != null
                        //         ? hymnGKey.currentState.initState()
                        //         : null;
                      },
                      splashColor: splash,
                      color: theme.primary,
                      icon: Icon(Icons.cancel),
                      label: Text("Done"),
                    ),
                  )
                ],
                elevation: 4.0,
                contentPadding: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: theme.primaryVariant, width: 1.5),
                    borderRadius: BorderRadius.circular(12.0)),
              ));
    }

    lineSpaceDialog() {
      showDialog(
          context: context,
          builder: (_) => new AlertDialog(
                title: Column(
                  children: <Widget>[
                    const Text("Line Spacing"),
                    const Divider(
                      thickness: 3,
                    )
                  ],
                ),
                content: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Scrollbar(
                      controller: _scrollControl,
                      child: SingleChildScrollView(
                        controller: _scrollControl,
                        child: StatefulBuilder(
                          builder: (_, StateSetter setState) {
                            return Column(
                              children: <Widget>[
                                RadioListTile(
                                    groupValue: _lineRadioSelected,
                                    title: Text("1sp"),
                                    value: '1.0',
                                    onChanged: (val) {
                                      setState(() {
                                        _lineRadioSelected = val;
                                      });
                                      setLineSpacing(val);
                                    }),
                                RadioListTile(
                                    groupValue: _lineRadioSelected,
                                    title: Text("1.2sp"),
                                    value: '1.2',
                                    onChanged: (val) {
                                      setState(() => _lineRadioSelected = val);
                                      setLineSpacing(val);
                                    }),
                                RadioListTile(
                                    groupValue: _lineRadioSelected,
                                    title: Text("1.5sp"),
                                    value: '1.5',
                                    onChanged: (val) {
                                      setState(() => _lineRadioSelected = val);
                                      setLineSpacing(val);
                                    }),
                                RadioListTile(
                                    groupValue: _lineRadioSelected,
                                    title: Text("2sp"),
                                    value: '2.0',
                                    onChanged: (val) {
                                      setState(() => _lineRadioSelected = val);
                                      setLineSpacing(val);
                                    }),
                                RadioListTile(
                                    groupValue: _lineRadioSelected,
                                    title: Text("2.2sp"),
                                    value: '2.2',
                                    onChanged: (val) {
                                      setState(() => _lineRadioSelected = val);
                                      setLineSpacing(val);
                                    }),
                                RadioListTile(
                                    groupValue: _lineRadioSelected,
                                    title: Text("2.5sp"),
                                    value: '2.5',
                                    onChanged: (val) {
                                      setState(() => _lineRadioSelected = val);
                                      setLineSpacing(val);
                                    }),
                                const Divider(
                                  thickness: 3,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    )),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton.icon(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      splashColor: splash,
                      color: theme.primary,
                      icon: Icon(Icons.cancel),
                      label: Text("Done"),
                    ),
                  )
                ],
                elevation: 4.0,
                contentPadding: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: theme.primaryVariant, width: 1.5),
                    borderRadius: BorderRadius.circular(12.0)),
              ));
    }

    textColorDialog() {
      showDialog(
          context: context,
          builder: (_) => new AlertDialog(
                title: Column(
                  children: <Widget>[
                    const Text("Text Color"),
                    const Divider(
                      thickness: 3,
                    )
                  ],
                ),
                content: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Scrollbar(
                      controller: _scrollControl,
                      child: SingleChildScrollView(
                        controller: _scrollControl,
                        child: StatefulBuilder(
                          builder: (_, StateSetter setState) {
                            return Column(
                              children: <Widget>[
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: Text("White"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("white"),
                                        radius: 18.0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                    ),
                                    value: 'white',
                                    onChanged: (val) {
                                      setState(() {
                                        _textRadioSelected = val;
                                      });
                                      setTextColor(val);
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: Text("Red"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("red"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'red',
                                    onChanged: (val) {
                                      setState(() => _textRadioSelected = val);
                                      setTextColor(val);
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: Text("Blue"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("blue"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'blue',
                                    onChanged: (val) {
                                      setState(() => _textRadioSelected = val);
                                      setTextColor(val);
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: Text("Green"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("green"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'green',
                                    onChanged: (val) {
                                      setState(() => _textRadioSelected = val);
                                      setTextColor(val);
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: Text("Black"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("black"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'black',
                                    onChanged: (val) {
                                      setState(() => _textRadioSelected = val);
                                      setTextColor(val);
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: Text("Silver"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("silver"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'silver',
                                    onChanged: (val) {
                                      setState(() => _textRadioSelected = val);
                                      setTextColor(val);
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: Text("Grey"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("grey"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'grey',
                                    onChanged: (val) {
                                      setState(() => _textRadioSelected = val);
                                      setTextColor(val);
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: Text("Lime"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("lime"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'lime',
                                    onChanged: (val) {
                                      setState(() => _textRadioSelected = val);
                                      setTextColor(val);
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: Text("Teal"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("teal"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'teal',
                                    onChanged: (val) {
                                      setState(() => _textRadioSelected = val);
                                      setTextColor(val);
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: Text("Navy"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("navy"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'navy',
                                    onChanged: (val) {
                                      setState(() => _textRadioSelected = val);
                                      setTextColor(val);
                                    }),
                                RadioListTile(
                                    groupValue: _textRadioSelected,
                                    title: ListTile(
                                      title: Text("Indigo"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("indigo"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'indigo',
                                    onChanged: (val) {
                                      setState(() => _textRadioSelected = val);
                                      setTextColor(val);
                                    }),
                                const Divider(
                                  thickness: 3,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    )),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton.icon(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      splashColor: splash,
                      color: theme.primary,
                      icon: Icon(Icons.cancel),
                      label: Text("Done"),
                    ),
                  )
                ],
                elevation: 4.0,
                contentPadding: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: theme.primaryVariant, width: 1.5),
                    borderRadius: BorderRadius.circular(12.0)),
              ));
    }

    bgColorDialog() {
      showDialog(
          context: context,
          builder: (_) => new AlertDialog(
                title: Column(
                  children: <Widget>[
                    const Text("Background Color"),
                    const Divider(
                      thickness: 3,
                    )
                  ],
                ),
                content: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Scrollbar(
                      controller: _scrollControl,
                      child: SingleChildScrollView(
                        controller: _scrollControl,
                        child: StatefulBuilder(
                          builder: (_, StateSetter setState) {
                            return Column(
                              children: <Widget>[
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: Text("White"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("white"),
                                        radius: 18.0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                    ),
                                    value: 'white',
                                    onChanged: (val) {
                                      setState(() {
                                        _bgRadioSelected = val;
                                      });
                                      setBackground(val);
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: Text("Red"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("red"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'red',
                                    onChanged: (val) {
                                      setState(() => _bgRadioSelected = val);
                                      setBackground(val);
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: Text("Blue"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("blue"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'blue',
                                    onChanged: (val) {
                                      setState(() => _bgRadioSelected = val);
                                      setBackground(val);
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: Text("Green"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("green"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'green',
                                    onChanged: (val) {
                                      setState(() => _bgRadioSelected = val);
                                      setBackground(val);
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: Text("Black"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("black"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'black',
                                    onChanged: (val) {
                                      setState(() => _bgRadioSelected = val);
                                      setBackground(val);
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: Text("Silver"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("silver"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'silver',
                                    onChanged: (val) {
                                      setState(() => _bgRadioSelected = val);
                                      setBackground(val);
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: Text("Grey"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("grey"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'grey',
                                    onChanged: (val) {
                                      setState(() => _bgRadioSelected = val);
                                      setBackground(val);
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: Text("Lime"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("lime"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'lime',
                                    onChanged: (val) {
                                      setState(() => _bgRadioSelected = val);
                                      setBackground(val);
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: Text("Teal"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("teal"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'teal',
                                    onChanged: (val) {
                                      setState(() => _bgRadioSelected = val);
                                      setBackground(val);
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: Text("Navy"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("navy"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'navy',
                                    onChanged: (val) {
                                      setState(() => _bgRadioSelected = val);
                                      setBackground(val);
                                    }),
                                RadioListTile(
                                    groupValue: _bgRadioSelected,
                                    title: ListTile(
                                      title: Text("Indigo"),
                                      trailing: CircleAvatar(
                                        backgroundColor: getTextColor("indigo"),
                                        radius: 18.0,
                                        child: Container(),
                                      ),
                                    ),
                                    value: 'indigo',
                                    onChanged: (val) {
                                      setState(() => _bgRadioSelected = val);
                                      setBackground(val);
                                    }),
                                const Divider(
                                  thickness: 3,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    )),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton.icon(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      splashColor: splash,
                      color: theme.primary,
                      icon: Icon(Icons.cancel),
                      label: Text("Done"),
                    ),
                  )
                ],
                elevation: 4.0,
                contentPadding: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: theme.primaryVariant, width: 1.5),
                    borderRadius: BorderRadius.circular(12.0)),
              ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          )
        ],
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
                title: Text("Font Size"),
                subtitle: Text("Change the size of the Lyrics"),
                onTap: () => fontSizeDialog()),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              title: Text("Line Spacing"),
              subtitle: Text("Change the space between lines of the Lyrics"),
              onTap: () => lineSpaceDialog(),
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              title: Text("Text Color"),
              subtitle: Text("Change the color of the Lyrics"),
              trailing: CircleAvatar(
                backgroundColor: globals.txtColor,
                radius: 18.0,
                child: Container(),
              ),
              onTap: () => textColorDialog(),
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              title: Text("Background Color"),
              subtitle: Text("Change the background color of the Lyrics"),
              trailing: CircleAvatar(
                backgroundColor: globals.bgColor,
                radius: 18.0,
                child: Container(),
              ),
              onTap: () => bgColorDialog(),
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              trailing: Checkbox(
                  value: _wakeLock,
                  onChanged: (val) {
                    setState(() => _wakeLock = val);
                    _saveWakeLock(_wakeLock);
                  }),
              title: Text("Keep Screen Awake"),
              subtitle: Text("When checked screen stays turned on"),
            ),
            Divider(
              thickness: 2.0,
            ),
          ],
        ),
      ),
    );
  }

  String txtColorIdentifier(int color) {
    switch (color) {
      case 4294967295:
        return _textRadioSelected = 'white';

        break;
      case 4294198070:
        return _textRadioSelected = 'red';

        break;
      case 4280391411:
        return _textRadioSelected = 'blue';

        break;
      case 4283215696:
        return _textRadioSelected = 'green';

        break;
      case 4278190080:
        return _textRadioSelected = 'black';

        break;
      case 1660944383:
        return _textRadioSelected = 'silver';

        break;
      case 4288585374:
        return _textRadioSelected = 'grey';

        break;
      case 4291681337:
        return _textRadioSelected = 'lime';

        break;
      case 4278228616:
        return _textRadioSelected = 'teal';

        break;
      case 4282682111:
        return _textRadioSelected = 'navy';

        break;
      case 4282339765:
        return _textRadioSelected = 'indigo';

        break;

      default:
        return _textRadioSelected = 'white';
        break;
    }
  }

  String bgColorIdentifier(int color) {
    switch (color) {
      case 4294967295:
        return _bgRadioSelected = 'white';

        break;
      case 4294198070:
        return _bgRadioSelected = 'red';

        break;
      case 4280391411:
        return _bgRadioSelected = 'blue';

        break;
      case 4283215696:
        return _bgRadioSelected = 'green';

        break;
      case 4278190080:
        return _bgRadioSelected = 'black';

        break;
      case 1660944383:
        return _bgRadioSelected = 'silver';

        break;
      case 4288585374:
        return _bgRadioSelected = 'grey';

        break;
      case 4291681337:
        return _bgRadioSelected = 'lime';

        break;
      case 4278228616:
        return _bgRadioSelected = 'teal';

        break;
      case 4282682111:
        return _bgRadioSelected = 'navy';

        break;
      case 4282339765:
        return _bgRadioSelected = 'indigo';

        break;

      default:
        return _bgRadioSelected = 'white';
        break;
    }
  }

  void initialisePrefs() {
    print(Colors.grey.value);
    _loadWakeLock();
    _loadLineSp();
    _loadFontSize();
    _loadBgColor();
    _loadTxtColor();
  }

  Color getTextColor(String val) {
    switch (val) {
      case 'white':
        return Colors.white;
        break;
      case 'red':
        return Colors.red;

        break;
      case 'blue':
        return Colors.blue;

        break;
      case 'green':
        return Colors.green;

        break;
      case 'black':
        return Colors.black;

        break;
      case 'silver':
        return Colors.black12;

        break;
      case 'grey':
        return Colors.grey;

        break;
      case 'lime':
        return Colors.lime;

        break;
      case 'teal':
        return Colors.teal;

        break;
      case 'navy':
        return Colors.blueAccent;

        break;
      case 'indigo':
        return Colors.indigo;

        break;
      default:
        return Colors.lightGreenAccent;

        break;
    }
  }

  Color getBgColor(String val) {
    switch (val) {
      case 'white':
        return Colors.white;
        break;
      case 'red':
        return Colors.red;

        break;
      case 'blue':
        return Colors.blue;

        break;
      case 'green':
        return Colors.green;

        break;
      case 'black':
        return Colors.black;

        break;
      case 'silver':
        return Colors.black12;

        break;
      case 'grey':
        return Colors.grey;

        break;
      case 'lime':
        return Colors.lime;

        break;
      case 'teal':
        return Colors.teal;

        break;
      case 'navy':
        return Colors.blueAccent;

        break;
      case 'indigo':
        return Colors.indigo;

        break;
      default:
        return Colors.lightGreenAccent;

        break;
    }
  }
}
*/
