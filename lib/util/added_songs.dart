import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:littafin_wakoki/model/db_helper.dart';
import 'package:littafin_wakoki/model/hymn_composer.dart';

import 'composed_song_details.dart';

class AddedSong extends StatefulWidget {
//  final ValueChanged<ComposeHymns> hymnSelectedCallback;
  final ComposeHymns hymnSelected = ComposeHymns();

//  AddedSong({Key key, @required this.hymnSelectedCallback, this.hymnSelected})
//      : super(key: key);
  @override
  _AddedSongState createState() => _AddedSongState();
}

class _AddedSongState extends State<AddedSong> {
  late List _composedHymn;
  late int hymnSize;

  static const double _itemExtent = 54.0;

  final ScrollController _scrollControl = ScrollController();

  late DatabaseHelper dbHelper;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Composed Songs"),
        centerTitle: true,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.queue_music),
          )
        ],
      ),
      body: Scrollbar(
        child: FutureBuilder(
          future: getHymns(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return hymnSize > 0
                  ? DraggableScrollbar.arrows(
                      alwaysVisibleScrollThumb: true,
                      backgroundColor: Colors.grey[850]!,
                      padding: const EdgeInsets.only(right: 4.0),
                      labelTextBuilder: (double offset) => Text(
                          "${(offset ~/ _itemExtent) + 1}",
                          style: const TextStyle(color: Colors.white)),
                      controller: _scrollControl,
                      child: ListView.builder(
                          controller: _scrollControl,
                          itemCount: hymnSize,
                          itemBuilder: (_, index) {
                            return Card(
                              elevation: 4.5,
                              margin: const EdgeInsets.only(
                                  bottom: 3.0, right: 4.0, left: 4.0),
                              child: ListTile(
                                trailing: IconButton(
                                  icon: const Icon(Icons.delete_sweep),
                                  onPressed: () => deleteHymn(
                                      ComposeHymns.fromJson(
                                              _composedHymn[index])
                                          .id!),
                                ),
                                leading: Text(
                                  "${ComposeHymns.fromJson(_composedHymn[index]).id}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                                title: Text(
                                  "${ComposeHymns.fromJson(_composedHymn[index]).title}",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                selected: widget.hymnSelected ==
                                    ComposeHymns.fromJson(_composedHymn[index]),
                                onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) {
                                    return ComposedSongDetails(
                                      hymns: ComposeHymns.fromJson(
                                          _composedHymn[index]),
                                    );
                                  }),
                                ),
                              ),
                            );
                          }),
                    )
                  : ListView(
                      children: const <Widget>[
                        Card(
                          elevation: 4.5,
                          margin: EdgeInsets.only(
                              bottom: 3.0, right: 4.0, left: 4.0),
                          child: ListTile(
                            title: Text(
                              "Composed Songs Empty",
                            ),
                            subtitle:
                                Text("Add a Composed Song to appear here"),
                          ),
                        )
                      ],
                    );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 6.0,
                  value: .8,
                ),
              );
            }
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    getHymns();
    super.initState();
  }

  @override
  void dispose() {
//    DatabaseHelper.internal().closeDb();

    super.dispose();
  }

  Future<List> getHymns() async {
    dbHelper = DatabaseHelper();
    dbHelper.initDB();
    var myHymn = await dbHelper.getAllHymns();
    setState(() {
      _composedHymn = myHymn;
      hymnSize = _composedHymn.length;
    });
    return _composedHymn;
  }

  deleteHymn(int index) {
    dbHelper.deleteHymns(index);
  }
}
