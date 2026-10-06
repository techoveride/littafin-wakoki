import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/globals.dart' as globals;

class AboutUs extends StatelessWidget {
  ColorScheme? theme;

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context).colorScheme;
    String versionName =
        "${globals.app_version.substring(0, 1)}.${globals.app_version.substring(1, 2)}.${globals.app_version.substring(2)}";
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        centerTitle: true,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.live_help),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset(
              'images/main_logo.png',
              height: 120,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Sacred Songs & Solos(SS&S)\n Hausa ,Version $versionName \n © 2023 \n SS&S hymn app is a lyrics based application developed for Christians to worship the Almighty God more and more through music \n Offered by: Hymnestry Apps",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: theme?.primaryContainer),
            height: 46,
            child: Center(
                child: Text(
              "Want to Support?",
              style: Theme.of(context).textTheme.subtitle1,
            )),
          ),
          ListTile(
            title: Text(
              "We believe users can provide us with the melody (midi files, tunes) of each lyric so that we can incorporate them in the apps (especially Sacred Songs and Solos App) to make it easy for people to learn almost every hymn in the app easily. We look forward to hearing from you.",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.apply(fontSizeFactor: 1.2),
            ),
          ),
          ListTile(
            title: Text(
              "Like our Facebook page ,contact us via any below",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          ListTile(
            leading: Image.asset("images/email.png"),
            title: const Text("Email Us !"),
            onTap: () => _emailIntent(),
          ),
          ListTile(
            leading: Image.asset("images/linkedin.png"),
            title: const Text("LinkedIn Profile"),
            onTap: () => _launchURL(
                "https://www.linkedin.com/in/yakubu-buba-techoveride"),
          ),
          ListTile(
            leading: Image.asset("images/facebook.png"),
            title: const Text("Facebook Page"),
            onTap: () => _launchURL("https://web.facebook.com/TechOveride"),
          ),
          ListTile(
            leading: Image.asset("images/twitter.png"),
            title: const Text("Twitter"),
            onTap: () => _launchURL("https://twitter.com/techoveride"),
          ),
          ListTile(
            leading: Image.asset("images/github.png"),
            title: const Text("Git Repo"),
            onTap: () => _launchURL('https://github.com/yaksonx2/'),
          ),
        ],
      ),
    );
  }

  final Email email = Email(
    body: 'Hi Hymnestry !\n\n',
    subject: 'Contact Hymnestry',
    recipients: ['hymnestryteam@outlook.com'],
    isHTML: false,
  );

  _emailIntent() async {
    await FlutterEmailSender.send(email);
  }

  _launchURL(String myUrl) async {
    Uri url = Uri.parse(myUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}
