import 'dart:convert';
import 'dart:io';

import 'package:audioplayer/audioplayer.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:littafin_wakoki/model/globals.dart' as globals;
import 'package:littafin_wakoki/model/hymn.dart';
import 'package:path_provider/path_provider.dart';

GlobalKey<_HymnListingState> hymnGKey = GlobalKey();

class HymnListing extends StatefulWidget {
  final ValueChanged<Hymns>? hymnSelectedCallback;
  final Hymns? hymnSelected;

  HymnListing({Key? key, this.hymnSelectedCallback, this.hymnSelected})
      : super(key: key);

  @override
  _HymnListingState createState() => _HymnListingState();
}

class _HymnListingState extends State<HymnListing> {
  late File jsonFile;
  late Directory dir;

  // String fileName = "HymnLyricsHausa.json";
  bool fileExists = false;

  List<Hymns> _hymnList = <Hymns>[];
  int hymnSize = 0;
  var hymn;

  final ScrollController _scrollControl = ScrollController();

  static const double _itemExtent = 58.0;

  Future<List<Hymns>> getHymn() async {
    jsonFile = await _localFile;
    fileExists = jsonFile.existsSync();
    if (fileExists) {
      hymn = json.decode(jsonFile.readAsStringSync());
      setState(() {
        _hymnList = List<Hymns>.from(hymn.map((i) => Hymns.fromJson(i)));
        hymnSize = _hymnList.length;
      });
//      print(_hymnList[2].title);
    }
    return _hymnList;
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/${globals.fileName}');
  }

//  Future<File> _writeData(String message) async {
//    final file = await _localFile;
//    return file.writeAsString('$message');
//  }

  final GlobalKey<_HymnListingState> hymnListingKey =
      GlobalKey<_HymnListingState>();

  onSearchedItem(String value) {
//    print(value);
    String search;
    setState(() {
      _hymnList =
          List<Hymns>.from(hymn.map((i) => Hymns.fromJson(i))).where((item) {
        search =
            "${item.title.trim().toLowerCase()} ${item.lyric.toLowerCase()}";
        return search.contains(value.toLowerCase());
      }).toList();
      hymnSize = _hymnList.length;
    });
//    print(hymnSize);
  }

  sortByTitle() {
    Comparator<Hymns> titleComparator =
        (a, b) => (a.title.substring(4)).compareTo(b.title.substring(4));

    setState(() {
      _hymnList = List<Hymns>.from(hymn.map((i) => Hymns.fromJson(i)));
      _hymnList.sort(titleComparator);
    });
  }

  sortByNumber() {
    setState(() {
      _hymnList = List<Hymns>.from(hymn.map((i) => Hymns.fromJson(i)));
//      _hymnList.sort((a, b) => (a.id).compareTo(b.id));
    });
  }

  loadHymn() async {
    setState(() {
      _hymnList = globals.defaultHymn;
    });
  }

  @override
  void initState() {
//    getHymn();
    loadHymn();
    getHymn();
    super.initState();
  }

  onSearchExit(String value) {
    setState(() {
      _hymnList = List<Hymns>.from(hymn.map((i) => Hymns.fromJson(i)));
      hymnSize = _hymnList.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return hymnList();
  }

  /*Widget hymnList() {
    if (hymnSize != null)
      return ListView(
        children: _hymnList.map((hymn) {
          return Card(
            elevation: 4.5,
            margin: EdgeInsets.only(bottom: 3.0, right: 4.0, left: 4.0),
            child: ListTile(
              title: Text(hymn.title),
              selected: widget.hymnSelected == hymn,
              onTap: () => widget.hymnSelectedCallback(hymn),
            ),
          );
        }).toList(),
      );
    else {
      return Container();
    }
  }*/

  /*Widget hymnList() {
    return Padding(
        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
        child: FutureBuilder(
          future: getHymn(),
          builder: (BuildContext buildContext, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: hymnSize,
                  itemBuilder: (_, index) {
                    return Card(
                      elevation: 4.5,
                      margin:
                          EdgeInsets.only(bottom: 3.0, right: 4.0, left: 4.0),
                      child: ListTile(
                        title: Text(
                          "${_hymnList[index].title}",
                        ),
                        selected: widget.hymnSelected == _hymnList[index],
                        onTap: () =>
                            widget.hymnSelectedCallback(_hymnList[index]),
                      ),
                    );
                  });
            } else {
              return Center(
                  child: CircularProgressIndicator(
                strokeWidth: 6.0,
                value: 4.0,
              ));
              */
  /*ListView(
                children: <Widget>[
                  Card(
                    elevation: 4.5,
                    margin: EdgeInsets.only(bottom: 3.0, right: 4.0, left: 4.0),
                    child: ListTile(
                      title: Text("Hymn Not found"),
                      subtitle: Text("Please enter Hymn Number or Title!"),
                    ),
                  )
                ],
              );*/
  /*
            }
          },
        ));
  }*/
  Widget hymnList() {
    return Padding(
        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
        child: DraggableScrollbar.arrows(
          alwaysVisibleScrollThumb: true,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          padding: const EdgeInsets.only(right: 4.0),
          labelTextBuilder: (double offset) => Text(
              "${(offset ~/ _itemExtent) + 1}",
              style: const TextStyle(color: Colors.white)),
          controller: _scrollControl,
          child: ListView.builder(
            controller: _scrollControl,
            itemCount: _hymnList.length,
            itemExtent: _itemExtent,
            itemBuilder: (_, index) {
              return Card(
                elevation: 4.5,
                margin:
                    const EdgeInsets.only(bottom: 3.0, right: 4.0, left: 4.0),
                child: ListTile(
                    leading: Text(
                      _hymnList[index]
                          .title
                          .substring(0, _hymnList[index].title.indexOf('-')),
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    title: Text(
                      _hymnList[index]
                          .title
                          .substring(_hymnList[index].title.indexOf('-') + 1),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                    ),
                    selected: widget.hymnSelected == _hymnList[index],
                    onTap: () async {
                      widget.hymnSelectedCallback!(
                        _hymnList[index],
                      );
                      // widget.hymnSelected == ;
                      if (kDebugMode) {
                        print("\n${_hymnList[index].id}"
                            "\nSelected hymn number : ${widget.hymnSelected?.id} \n "
                            "List Index : $index");
                      }
                      if (globals.isPlaying) {
                        setState(() {
                          globals.tuneIcon = globals.play;
                          globals.playerState = AudioPlayerState.STOPPED;
                        });
                        await globals.player.stop();
                      }
                      globals.load(_hymnList[index].title);
                    }),
              );
            },
          ),
        )
        // : const Center(
        //     child: CircularProgressIndicator(
        //       strokeWidth: 6.0,
        //       valueColor: AlwaysStoppedAnimation(Colors.lightGreenAccent),
        //       value: .8,
        //     ),
        //   ),
        );
  }
}
