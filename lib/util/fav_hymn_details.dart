import 'dart:async';
import 'dart:io';

// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:littafin_wakoki/model/globals.dart' as globals;
import 'package:littafin_wakoki/model/hymn.dart';
import 'package:share/share.dart';

GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
GlobalKey<_FavHymnDetailsState> favHymnDetailKey = GlobalKey();

class FavHymnDetails extends StatefulWidget {
  final bool isInTabletLayout;
  final Hymns hymns;
  final double? adPadding;

  const FavHymnDetails(
      {Key? key,
      required this.isInTabletLayout,
      required this.hymns,
      this.adPadding})
      : super(key: key);

  @override
  _FavHymnDetailsState createState() => _FavHymnDetailsState();
}

class _FavHymnDetailsState extends State<FavHymnDetails> {
  late File jsonFile;
  late Directory dir;

  // String fileName = "HymnLyricsHausa.json";
  var hymn;

//  List<Hymns> _favHymnList;

  int hymnSize = 0;

  late IconData favIcon;
  late StreamSubscription audioPlayerStateSubs;
  late String mp3Uri;

  double barHeight = 36.0;
  bool tuneIconVisibility = true;

  late ScrollController _scrollController;

  double barHeightNew = 36.0;

//load Audio file
  void initAudioPlayer() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //do something
    });

    audioPlayerStateSubs =
        globals.player.onPlayerStateChanged.listen((listener) async {
      if (listener == AudioPlayerState.PLAYING) {
        if (kDebugMode) {
          print("Tune playing");
        }
      } else if (listener == AudioPlayerState.STOPPED) {
        if (kDebugMode) {
          print("Tune Stopped");
        }
      } else if (listener == AudioPlayerState.COMPLETED) {
        if (kDebugMode) {
          print("Tune Completed");
        }
        await globals.player.stop();
        setState(() {
          globals.tuneIcon = globals.play;
          globals.playerState = AudioPlayerState.COMPLETED;
        });
        widget.isInTabletLayout
            ? tabOnCompletedSnackbar()
            : onCompletedSnackbar();
      } else if (listener == AudioPlayerState.PAUSED) {
        if (kDebugMode) {
          print("Tune Paused");
        }
      }
    }, onError: (error) async {
      globals.playerState = AudioPlayerState.STOPPED;
      await stopPlayer();
      widget.isInTabletLayout ? audioTabSnackBuilder() : audioSnackBuilder();
      if (kDebugMode) {
        print("AudioPlayer Subscription error $error");
      }
    });
  }

  @override
  void initState() {
    initAudioPlayer();
    _scrollController = ScrollController();
    super.initState();
  }

/*  _loadBgColor() async {
    SharedPreferences bgColorPref = await SharedPreferences.getInstance();
    var color = bgColorPref.getInt("bgColor");
    setState(() {
      if (color != null) globals.bgColor = Color(color);
    });
  }

  _loadTxtColor() async {
    SharedPreferences txtColorPref = await SharedPreferences.getInstance();
    var color = txtColorPref.getInt("txtColor");
    setState(() {
      if (color != null) globals.txtColor = Color(color);
    });
  }

  _loadFontSize() async {
    SharedPreferences fontSizePref = await SharedPreferences.getInstance();
    var size = fontSizePref.getDouble("fontSize");
    setState(() {
      if (size != null)
        globals.fontSize = size;
      else
        globals.fontSize = 18.0;
    });
  }

  _loadLineSp() async {
    SharedPreferences lineSpPref = await SharedPreferences.getInstance();
    var size = lineSpPref.getDouble("lineSp");
    setState(() {
      if (size != null) globals.lineSp = size;
    });
  }*/

  @override
  void dispose() {
    audioPlayerStateSubs.cancel();
    _scrollController.dispose();
    super.dispose();
  }

//  List<Color> myGradient = [
//    Colors.deepOrangeAccent,
//    Colors.deepOrange,
//  ];
//  BoxDecoration mainBoxStyle() {
//    return BoxDecoration(
//        gradient: LinearGradient(
//      begin: Alignment.topCenter,
//      colors: myGradient,
//    ));
//  }

  /*Future<List<Hymns>> getHymn() async {
    jsonFile = await getApplicationDocumentsDirectory()
        .then((dir) => File("${dir.path}/$fileName"));
    fileExists = jsonFile.existsSync();
    if (fileExists) {
      hymn = json.decode(jsonFile.readAsStringSync());
      setState(() {
        _favHymnList = List<Hymns>.from(hymn.map((i) => Hymns.fromJson(i)));
        hymnSize = _favHymnList.length;
      });
    }
//    favInit();
    return _favHymnList;
  }*/

  /* Future<File> _writeData(String message) async {
    final file = await getApplicationDocumentsDirectory().then((dir) {
      return File("${dir.path}/HymnLyricsHausa.json");
    });
    return file.writeAsString('$message');
  }*/

/*  void updateFavorite(int index, int flag) {
//    listHymns = _favHymnList;
//    listHymns[index].favorite = flag;
//    _writeData(json.encode(listHymns));
  }*/

  @override
  Widget build(BuildContext context) {
//Mobile view content
    final Widget content = ListView(
      children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                  widget.hymns.title
                      .substring(widget.hymns.title.indexOf('-') + 1),
                  // 'No hymn selected'
                  textAlign: TextAlign.center,
                  style: globals.titleStyle()),
              subtitle: Text(
                '\n${widget.hymns.author}'
                "\n${widget.hymns.tune!.isNotEmpty ? widget.hymns.tune : ''}",
                textAlign: TextAlign.center,
                style: globals.subheadStyle(),
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.hymns.lyric,
                textAlign: TextAlign.center, style: globals.lyricStyle()),
          ),
        ),
      ],
    );
    //Tab view content
    final Widget tabContent = ListView(
      children: <Widget>[
        Center(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                    widget.hymns.title
                        .substring(widget.hymns.title.indexOf('-') + 1),
                    textAlign: TextAlign.center,
                    style: globals.titleStyle()),
                subtitle: Text(
                  "Hymn~${(widget.hymns.id)}"
                  "\n${widget.hymns.author}"
                  "\n${widget.hymns.tune!.isNotEmpty ? widget.hymns.tune : ''}",
                  textAlign: TextAlign.center,
                  style: globals.subheadStyle(),
                ),
              )),
        ),
        Center(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.hymns.lyric,
                  textAlign: TextAlign.center, style: globals.lyricStyle())),
        ),
      ],
    );

    if (widget.isInTabletLayout) {
      widget.hymns.id == -1 ? hideTabTuneBar(true) : hideTabTuneBar(false);

      return Scaffold(
        body: Container(
          color: globals.nightMode == false ? globals.bgColor : Colors.black45,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: tuneIconVisibility ? 1.0 : 0.0,
                    child: SizedBox(
                        height: barHeight,
                        child: Card(
                          margin: const EdgeInsets.all(0.0),
                          elevation: 4.0,
                          clipBehavior: Clip.none,
                          color: Theme.of(context).colorScheme.tertiary,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    globals.tuneIcon,
                                    color: Theme.of(context).cardColor,
                                  ),
                                  onPressed: () async {
                                    if (globals.isPlaying) {
                                      await pausePlayer();
                                      audioTabSnackBuilder();
                                    } else {
                                      await globals.playSound();
                                      setState(() {
                                        globals.tuneIcon = globals.pause;
                                        globals.playerState =
                                            AudioPlayerState.PLAYING;
                                      });
                                      audioTabSnackBuilder();
                                    }
                                  }),
                              IconButton(
                                  icon: Icon(globals.stop,
                                      color: Theme.of(context).cardColor),
                                  onPressed: () async {
                                    await stopPlayer();
                                    audioTabSnackBuilder();
                                  }),
                            ],
                          ),
                        )),
                  ),
                  Flexible(
                      child: NotificationListener<ScrollNotification>(
                          onNotification: (status) {
                            if (status is ScrollUpdateNotification) {
                              if (status.scrollDelta! > 0) {
//                                Future.delayed(Duration(seconds: 2), () {

                                hideTabTuneBar(true);
//                                });
                                setState(() {
                                  barHeight = 0.0;
                                  // tuneIconVisibility = true;
                                  // print("Scrolling Down${barHeight}");
                                });
                              } else {
//                                Future.delayed(Duration(seconds: 2), () {
                                hideTabTuneBar(false);
                                setState(() {
                                  barHeight = 36.0;
                                  // tuneIconVisibility = false;
                                  // print("Scrolling Up${barHeight}");
                                });

//                                });
                              }
                            }
                            return false;
                          },
                          child: tabContent)),
                ],
              ),
            ),
          ),
        ),
//        bottomNavigationBar: Container(
//          height: widget.adPadding,
//        ),
        floatingActionButton: Visibility(
          visible: widget.hymns.id == -1 ? false : true,
          child: FloatingActionButton(
              onPressed: () => shareIntent(),
              mini: true,
              child: const Icon(Icons.share)),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.only(bottom: widget.adPadding!),
      child: Scaffold(
        key: scaffoldState,
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () async {
                await stopPlayer();
                Future.delayed(const Duration(milliseconds: 1), () {
                  Navigator.of(context).pop();
                });
              }),
          title: Text(widget.hymns.title),
          actions: <Widget>[
            IconButton(
                icon: Icon(globals.tuneIcon),
                onPressed: () async {
                  if (globals.isPlaying) {
                    await pausePlayer();
                    audioSnackBuilder();
                  } else {
                    await globals.playSound();
                    setState(() {
                      globals.tuneIcon = globals.pause;
                      globals.playerState = AudioPlayerState.PLAYING;
                    });
                    audioSnackBuilder();
                  }
                }),
            IconButton(
                icon: Icon(globals.stop),
                onPressed: () async {
                  await stopPlayer();
                  audioSnackBuilder();
                }),
          ],
        ),
//      backgroundColor: Colors.deepPurpleAccent,

        body: WillPopScope(
          // ignore: missing_return
          onWillPop: () async {
            if (globals.playerState == AudioPlayerState.PLAYING) {
              stopPlayer();
              return false;
            } else {
              Navigator.of(context).pop();
              return true;
            }
          },
          child: Container(
            color:
                globals.nightMode == false ? globals.bgColor : Colors.black45,
//        decoration: mainBoxStyle(),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: content,
              ),
            ),
          ),
        ),
//      bottomNavigationBar: Container(
//        height: widget.adPadding,
//      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => shareIntent(),
          child: const Icon(Icons.share),
        ),
      ),
    );
  }

  shareIntent() {
    Share.share(
        "Title:${widget.hymns.title}"
        "\nAuthor:${widget.hymns.author}"
        "\nTune:${widget.hymns.tune}"
        "\n${widget.hymns.lyric}",
        subject: widget.hymns.title);
  }

  Future stopPlayer() async {
    await globals.player.stop();
    setState(() {
      globals.tuneIcon = globals.play;
      globals.playerState = AudioPlayerState.STOPPED;
    });
  }

  Future pausePlayer() async {
    await globals.player.pause();
    setState(() {
      globals.tuneIcon = globals.play;
      globals.playerState = AudioPlayerState.PAUSED;
    });
  }

  void audioSnackBuilder() {
    String popUp;
    if (globals.playerState == AudioPlayerState.PLAYING) {
      popUp = "Tune Playing";
    } else if (globals.playerState == AudioPlayerState.STOPPED) {
      popUp = "Tune Stopped";
    } else {
      popUp = "Tune Paused";
    }
    // scaffoldState.currentState?.showSnackBar(
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          popUp,
          textAlign: TextAlign.center,
        ),
        duration: const Duration(milliseconds: 500),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }

  void audioTabSnackBuilder() {
    String popUp;
    if (globals.playerState == AudioPlayerState.PLAYING) {
      popUp = "Tune Playing";
    } else if (globals.playerState == AudioPlayerState.STOPPED) {
      popUp = "Tune Stopped";
    } else {
      popUp = "Tune Paused";
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        popUp,
        textAlign: TextAlign.center,
      ),
      duration: const Duration(milliseconds: 500),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    ));
  }

  void tabOnCompletedSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text(
          "Tune Completed",
          textAlign: TextAlign.center,
        ),
        duration: const Duration(milliseconds: 500),
        shape:
            BeveledRectangleBorder(borderRadius: BorderRadius.circular(8.0))));
  }

  void onCompletedSnackbar() {
    // scaffoldState.currentState.showSnackBar(
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text(
          "Tune Completed",
          textAlign: TextAlign.center,
        ),
        duration: const Duration(milliseconds: 500),
        shape:
            BeveledRectangleBorder(borderRadius: BorderRadius.circular(8.0))));
  }

  void hideTabTuneBar(bool flag) {
    setState(() {
      if (flag == true) {
        tuneIconVisibility = false;
        // print(tuneIconVisibility);
      } else {
        // barHeight = 36.0;
        tuneIconVisibility = true;
        // print(tuneIconVisibility);
      }
    });
  }
}
