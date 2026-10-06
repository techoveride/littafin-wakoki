import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:littafin_wakoki/model/db_helper.dart';
import 'package:littafin_wakoki/model/hymn_composer.dart';

class ComposeSong extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final titleNode = FocusNode();
  final authorNode = FocusNode();
  final tuneNode = FocusNode();
  final lyricNode = FocusNode();
  final submitNode = FocusNode();
  String _title = "";
  String _author = "";
  String _tune = "";
  String _lyric = "";

  late Color splash;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    splash = Theme.of(context).splashColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Compose your song"),
        centerTitle: true,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.music_note),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Builder(
          builder: (snackContext) {
            return Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        focusNode: titleNode,
                        onEditingComplete: () {
                          FocusScope.of(context).requestFocus(authorNode);
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Song Title !";
                          } else {
                            _title = val;
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "eg. Joy to the world",
                          labelText: "Song Title",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: theme.primaryContainer,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: theme.primary,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        focusNode: authorNode,
                        onEditingComplete: () {
                          FocusScope.of(context).requestFocus(tuneNode);
                        },
                        validator: (val) {
                          if (val != null) {
                            _author = val;
                            return null;
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "eg. Jim Reeves",
                          labelText: "Song Author",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: theme.primaryContainer,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: theme.primary,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        focusNode: tuneNode,
                        onEditingComplete: () {
                          FocusScope.of(context).requestFocus(lyricNode);
                        },
                        validator: (val) {
                          if (val != null) {
                            _tune = val;
                            return null;
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "eg. Joy to the world",
                          labelText: "Song Tune",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: theme.primaryContainer,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: theme.primary,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 8,
                        focusNode: lyricNode,
                        onEditingComplete: () {
                          FocusScope.of(context).requestFocus(submitNode);
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Song Lyric !";
                          } else {
                            _lyric = val;
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "eg. Here i am to worship",
                          labelText: "Song Lyric",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: theme.primaryContainer,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: theme.primary,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          addComposedSong();
                          ScaffoldMessenger.of(snackContext).showSnackBar(
                              const SnackBar(
                                  content: Text("Composed Song saved !")));
                          _formKey.currentState?.reset();
                        }
                      },
                      style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(splash),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(theme.primary)),
                      child: const Text(
                        "Add Song",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void addComposedSong() async {
    DatabaseHelper dbHelper = DatabaseHelper();
    dbHelper.initDB();
    ComposeHymns hymn = ComposeHymns(
        title: _title, author: _author, tune: _tune, lyric: _lyric);
    int id = await dbHelper.saveHymns(hymn);
    if (kDebugMode) {
      print(id);
    }
  }
}
