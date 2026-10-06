import 'package:flutter/material.dart';

class HelpMe extends StatelessWidget {
  late ColorScheme theme;
  late Color splash;
  TextStyle? subtitle1Style;
  TextStyle? headlineStyle;
  TextStyle? titleStyle;
  TextStyle? subtitleStyle;

  late Color accentColor;

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context).colorScheme;
    splash = Theme.of(context).splashColor;
    accentColor = Theme.of(context).colorScheme.secondary;
    subtitle1Style = Theme.of(context).textTheme.subtitle1;
    headlineStyle = Theme.of(context).textTheme.headline1;
    titleStyle = Theme.of(context).textTheme.subtitle1;
    subtitleStyle = Theme.of(context).textTheme.subtitle2;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help"),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.help_outline),
          )
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Colors.white,
                  border: Border.all(
                      color: splash, width: 1.2, style: BorderStyle.solid)),
              child: Center(
                child: Image.asset(
                  "images/help.png",
                  height: 140,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "This App is has two Sections which are detailed below.",
              style: subtitle1Style,
            ),
          ),
          Container(
            height: 46,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0), color: accentColor),
            child: ListTile(
                title: Text(
              "All",
              textAlign: TextAlign.center,
              style: titleStyle,
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "This sections contains all the songs in the hymn book numbered the way they appear in the original hymn book.",
              style: subtitle1Style,
            ),
          ),
          Container(
            height: 46,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0), color: accentColor),
            child: ListTile(
              title: Text(
                "Favourite",
                textAlign: TextAlign.center,
                style: titleStyle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "This sections contains the songs you have added to your favourites sorted.",
              style: subtitle1Style,
            ),
          ),
          Container(
              height: 46,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0), color: accentColor),
              child: ListTile(
                trailing: const Icon(Icons.view_list),
                title: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Drawer",
                    textAlign: TextAlign.center,
                    style: titleStyle,
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "The Drawer contains menus or settings for your use and is represented like in the heading here with horizontal bars .When the icon is clicked the menu is displayed and you can use other functions of the app from there.",
              style: subtitle1Style,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: accentColor,
            ),
//            height: 46,
            child: ListTile(
              trailing: const Icon(Icons.favorite),
              title: Text(
                "How to add Songs to Favourites",
                textAlign: TextAlign.center,
                style: titleStyle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "You add songs to favourites by clicking on the heart shaped icon in the top right corner of the song lyric screen.You can aswell remove an existing song from the list clicking on it again.",
              style: subtitle1Style,
            ),
          )
        ],
      ),
    );
  }
}
