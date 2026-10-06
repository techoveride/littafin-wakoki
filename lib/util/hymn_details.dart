import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/foundation.dart';
// import  'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:littafin_wakoki/model/globals.dart' as globals;
import 'package:littafin_wakoki/model/hymn.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

GlobalKey<_HymnDetailsState> hymnDetailKey = GlobalKey();

class HymnDetails extends StatefulWidget {
  final bool isInTabletLayout;
  final Hymns hymns;
  final double? adPadding;

  HymnDetails(
      {required this.isInTabletLayout, required this.hymns, this.adPadding});

  @override
  _HymnDetailsState createState() => _HymnDetailsState();
}

class _HymnDetailsState extends State<HymnDetails> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  GlobalKey<ScaffoldState> tabViewScaffold = GlobalKey();

  late File jsonFile;
  late Directory dir;

  // String fileName = "HymnLyricsHausa_v1.json";
  bool fileExists = false;
  bool isPlaying = false;

  // var hymn ;
  List<Hymns>? _hymnList;

  int hymnSize = 0;

  IconData favIcon = Icons.adb_outlined;

  final IconData _off = Icons.favorite_border;
  final IconData _on = Icons.favorite;

  late StreamSubscription audioPlayerStateSubs;

  double? barHeight;
  bool tuneIconVisibility = true;

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

  late ScrollController _scrollController;

  @override
  void initState() {
    initAudioPlayer();
    getHymn();
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    audioPlayerStateSubs.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  Future<File> _writeData(String message) async {
    final file = await getApplicationDocumentsDirectory().then((dir) {
      return File("${dir.path}/${globals.fileName}");
    });
    return file.writeAsString(message);
  }

  void updateFavorite(int index, int flag) {
    listHymns = _hymnList!;
    listHymns[index].favorite = flag;
    _writeData(json.encode(listHymns));
  }

  Future<List<Hymns>?> getHymn() async {
    jsonFile = await getApplicationDocumentsDirectory()
        .then((dir) => File("${dir.path}/${globals.fileName}"));
    fileExists = jsonFile.existsSync();
    if (fileExists) {
      var hymn = json.decode(jsonFile.readAsStringSync());
      setState(() {
        _hymnList = List<Hymns>.from(hymn.map((i) => Hymns.fromJson(i)));
        if (kDebugMode) {
          print("Hymn Size Onload${_hymnList?.length}");
        }
        hymnSize = _hymnList!.length;
      });
    }
    favInit();
    return _hymnList;
  }

  /* final Widget tabTuneBar = Container(
    height: 36,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
            icon: Icon(globals.tuneIcon),
            onPressed: () async {
              if (globals.isPlaying) {
                await pausePlayer();
              } else {
                await globals.playSound();
                setState(() {
                  globals.tuneIcon = globals.pause;
                  globals.playerState = AudioPlayerState.PLAYING;
                });
              }
            }),
        IconButton(
            icon: Icon(globals.stop),
            onPressed: () async {
              await stopPlayer();
            }),
      ],
    ),
  );*/
  @override
  Widget build(BuildContext context) {
    favInit();
    final Widget content = ListView(
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
                  '\n${widget.hymns.author}'
                  "\n${widget.hymns.tune!.isNotEmpty ? widget.hymns.tune : ''}",
                  textAlign: TextAlign.center,
                  style: globals.subheadStyle(),
                ),
              )),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.hymns.lyric,
              textAlign: TextAlign.center,
              style: globals.lyricStyle(),
            ),
          ),
        ),
      ],
    );

    //content view for tablets
    final Widget tabContent = ListView(
      controller: _scrollController,
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
                  "Hymn~"
                  "${(widget.hymns.id)}"
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
                textAlign: TextAlign.center, style: globals.lyricStyle()),
          ),
        ),
      ],
    );

    if (widget.isInTabletLayout) {
      return Scaffold(
        key: tabViewScaffold,
        body: Container(
          color: globals.nightMode == false ? globals.bgColor : Colors.black45,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 1000),
                  opacity: tuneIconVisibility ? 1.0 : 0.0,
                  child: SizedBox(
                      height: barHeight ?? 36.0,
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
                            } else {
//                                Future.delayed(Duration(seconds: 2), () {
                              hideTabTuneBar(false);
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
//        bottomNavigationBar: Container(
//          height: widget.adPadding,
//        ),
        floatingActionButton: Visibility(
          visible: widget.hymns.id == -1 ? false : true,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: FloatingActionButton(
                  onPressed: () {
                    int index = _hymnList![widget.hymns.id - 1].id - 1;
                    setState(() {
                      if (favIcon == _off) {
                        favIcon = _on;
                        updateFavorite(index, 1);
                      } else {
                        favIcon = _off;
                        updateFavorite(index, 0);
                      }
                    });
                    tabSnackBuilder(context, index);
                  },
                  mini: true,
                  heroTag: 'favBtn',
                  child: Icon(favIcon),
                ),
              ),
              FloatingActionButton(
                onPressed: () => shareIntent(),
                mini: true,
                heroTag: 'shareBtn',
                child: const Icon(Icons.share),
              ),
            ],
          ),
        ),
      );
    }
    return Padding(
      padding: EdgeInsets.zero,
      child: Scaffold(
        key: scaffoldState,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () async {
              await stopPlayer();
              Future.delayed(const Duration(milliseconds: 1), () {
                Navigator.of(context).pop();
              });
            },
          ),
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
            IconButton(
                icon: Icon(favIcon),
                onPressed: () {
                  int index = _hymnList![widget.hymns.id - 1].id - 1;
                  setState(() {
                    if (favIcon == _off) {
                      favIcon = _on;
                      updateFavorite(index, 1);
                    } else {
                      favIcon = _off;
                      updateFavorite(index, 0);
                    }
                  });
                  snackBuilder(index);
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
            // decoration: mainBoxStyle(),
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

  void snackBuilder(int index) {
    // scaffoldState.currentState.showSnackBar(
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Hymn ${_hymnList![index].title.substring(0, 3)}${favIcon == _on ? ' added to favorites' : ' removed from favorites'}",
        ),
      ),
    );
  }

  void tabSnackBuilder(BuildContext context, int index) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
      "Hymn ${_hymnList![index].title.substring(0, 3)}${favIcon == _on ? ' added to favorites' : ' removed from favorites'}",
    )));
  }

  void favInit() {
    if (widget.hymns.id != -1 && _hymnList != null) {
      int id = _hymnList![widget.hymns.id - 1].id - 1;
      if (_hymnList![id].favorite == 1) {
        favIcon = _on;
      } else {
        favIcon = _off;
      }
    }
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
    // scaffoldState.currentState.showSnackBar(
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
        barHeight = 0.0;
        tuneIconVisibility = false;
      } else {
        barHeight = 36.0;
        tuneIconVisibility = true;
      }
    });
  }
}
