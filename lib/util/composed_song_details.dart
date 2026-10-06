import 'package:flutter/material.dart';
import 'package:littafin_wakoki/model/globals.dart' as globals;
import 'package:littafin_wakoki/model/hymn_composer.dart';
import 'package:share/share.dart';

class ComposedSongDetails extends StatefulWidget {
  final ComposeHymns hymns = ComposeHymns();

  ComposedSongDetails({Key? key, @required hymns}) : super(key: key);

  @override
  _ComposedSongDetailsState createState() => _ComposedSongDetailsState();
}

class _ComposedSongDetailsState extends State<ComposedSongDetails> {
  @override
  Widget build(BuildContext context) {
    final Widget content = ListView(
      children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(widget.hymns.title ?? 'No hymn selected',
                  textAlign: TextAlign.center, style: globals.titleStyle()),
              subtitle: Text(
                  '\n${widget.hymns.author ?? "Unknown Author"}'
                  '\n\n${widget.hymns.tune ?? "Unknown Tune"}',
                  textAlign: TextAlign.center,
                  style: globals.subheadStyle()),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                widget.hymns.lyric ?? 'Please select a hymn from the list',
                textAlign: TextAlign.center,
                style: globals.lyricStyle()),
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Songs"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.library_music),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
          color: globals.nightMode == false ? globals.bgColor : Colors.black45,
          child: content),
      floatingActionButton: FloatingActionButton(
        onPressed: () => shareIntent(),
        child: const Icon(Icons.share),
      ),
    );
  }

  shareIntent() {
    Share.share(
        "${widget.hymns.title}"
        "\n${widget.hymns.author}"
        "\n${widget.hymns.tune}"
        "\n${widget.hymns.lyric}",
        subject: "${widget.hymns.title}");
  }
}
