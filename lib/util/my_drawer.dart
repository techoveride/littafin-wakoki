import 'dart:async';
import 'dart:io';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:littafin_wakoki/main.dart' as main;
import 'package:littafin_wakoki/model/globals.dart' as globals;
import 'package:littafin_wakoki/util/about_us.dart';
import 'package:littafin_wakoki/util/added_songs.dart';
import 'package:littafin_wakoki/util/compose_song.dart';
import 'package:littafin_wakoki/util/help_me.dart';
import 'package:littafin_wakoki/util/main_details_screen.dart';
import 'package:littafin_wakoki/util/report_bug.dart';
import 'package:littafin_wakoki/util/settings.dart';
import 'package:littafin_wakoki/util/support_us.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatefulWidget {
  final Function? destroyBanner;
  final Function? buildBanner;
  final bool? isTabletLayout;

  const MyDrawer(
      {Key? key, this.destroyBanner, this.buildBanner, this.isTabletLayout})
      : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  loadRemoteConfig() async {
    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    try {
      // Using default duration to force fetching from remote server.
      await remoteConfig.fetchAndActivate();

      String storeUrl = remoteConfig.getString("app_store_url");
      String playUrl = remoteConfig.getString("play_store_url");
      String proStoreUrl = remoteConfig.getString("pro_store_url");
      String proPlayUrl = remoteConfig.getString("pro_play_url");
      String shareApp = remoteConfig.getString("share_app");
      String moreApps = remoteConfig.getString("more_apps");
      globals.APP_STORE_URL = storeUrl;
      globals.PLAY_STORE_URL = playUrl;
      globals.PREMIUM_APP_STORE_URL = proStoreUrl;
      globals.PREMIUM_PLAY_STORE_URL = proPlayUrl;
      globals.share_app = shareApp;
      globals.more_apps = moreApps;
    } catch (exception) {
      debugPrint(
          'Unable to fetch remote config. Cached or default values will be '
          'used\nException: $exception');
    }
  }

  static const int tabletBreakpoint = 600;
  late double shortestSide;
  late Orientation orientation;

  @override
  Widget build(BuildContext context) {
    shortestSide = MediaQuery.of(context).size.shortestSide;
    orientation = MediaQuery.of(context).orientation;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  "images/main_logo.png",
                ),
              ),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black,
              Theme.of(context).colorScheme.secondary
            ], transform: const GradientRotation(0.0))),
            accountName: const Text(
              "Hymnestry",
            ),
            accountEmail: const Text(
              "hymnestryteam@outlook.com",
            ),
          ),
          ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints.tight(const Size.square(34.0)),
                child: Image.asset(
                  'images/premium.png',
                  color: globals.nightMode ? Colors.white : Colors.black54,
                ),
              ),
              title: const Text(
                "Premium Upgrade(No Ads)",
              ),
              onTap: () async {
                await loadRemoteConfig();
                premiumAppUpdate();
              }),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text(
              "Compose Song",
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return ComposeSong();
              }));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_to_photos),
            title: const Text(
              "My added song(s)",
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => AddedSong()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              "Settings",
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return Settings();
              }));
            },
          ),
          ListTile(
            leading: const Icon(Icons.cloud_circle),
            trailing: Icon(
                globals.nightMode == true ? Icons.cloud_done : Icons.cloud_off),
            title: const Text(
              "Night Mode",
            ),
            onTap: () {
              if (globals.nightMode == true) {
                main.isLightTheme.add(false);
                setTheme(false);
              } else {
                main.isLightTheme.add(true);
                setTheme(true);
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text(
              "Help",
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return HelpMe();
              }));
            },
          ),
          ListTile(
            leading: const Icon(Icons.live_help),
            title: const Text(
              "About",
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AboutUs();
              }));
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text(
              "Share App",
            ),
            onTap: () {
              shareIntent();
            },
          ),
          const Divider(
            height: 2.0,
            thickness: 1.5,
          ),
          const ListTile(
            title: Text(
              "Communicate",
            ),
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text(
              "Support",
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return SupportUs();
              }));
            },
          ),
          ListTile(
            leading: const Icon(Icons.more),
            title: const Text(
              "More hymn apps",
            ),
            onTap: () async {
              _launchURL(globals.more_apps);
              //              var output = await setupRemoteConfig();
//              _launchURL("https://Hymnestry.com/apps");
            },
          ),
          ListTile(
            leading: const Icon(Icons.update),
            title: const Text(
              "Update App",
            ),
            onTap: () async {
              await loadRemoteConfig();
              versionUpdate();
            },
          ),
          ListTile(
            leading: const Icon(Icons.report),
            title: const Text(
              "Report Bug",
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return ReportBug();
              }));
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text(
              "Exit",
            ),
            onTap: () {
              _onBackPressed;
            },
          ),
        ],
      ),
    );
  }

  get _onBackPressed => showDialog(
      context: context,
      builder: (_) => AlertDialog(
            title: const Center(child: Text("Are You Sure ?")),
            content: SizedBox(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text("Do you want to exit"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).colorScheme.primaryContainer,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            onPrimary: Colors.white,
                            fixedSize: const Size(60.0, 30.0)),
                        child: const Text("No"),
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).colorScheme.primaryContainer,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            onPrimary: Colors.white,
                            fixedSize: const Size(60.0, 30.0)),
                        child: const Text("Yes"),
                        onPressed: () {
                          SystemChannels.platform
                              .invokeMethod('SystemNavigator.pop');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            elevation: 4.0,
            contentPadding: const EdgeInsets.all(10.0),
            shape: BeveledRectangleBorder(
                side: BorderSide(
                    color: Theme.of(context).colorScheme.primary, width: 1.0),
                borderRadius: BorderRadius.circular(8.0)),
          ));

  _launchURL(String myUrl) async {
    Uri url = Uri.parse(myUrl);

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    super.initState();
    debugPrint("Drawer Opened");
    Future.delayed(const Duration(milliseconds: 500), () {
      widget.destroyBanner!();
    });
    debugPrint("Banner Disposed");
    loadRemoteConfig();
//    versionCheck();
  }

  @override
  void dispose() {
    super.dispose();
    widget.buildBanner!();
    debugPrint("Banner Created");

    debugPrint("Drawer Closed");
  }

  _showVersionDialog(context) async {
    await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        String title = "New Update Available";
        String message =
            "There is a newer version of app available please update it now.";
        String btnLabel = "Update Now";
        String btnLabelCancel = "Later";
        return Platform.isIOS
            ? CupertinoAlertDialog(
                title: Text(title),
                content: Text(message),
                actions: <Widget>[
                  TextButton(
                    child: Text(btnLabel),
                    onPressed: () => _launchURL(globals.APP_STORE_URL),
                  ),
                  TextButton(
                    child: Text(btnLabelCancel),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              )
            : AlertDialog(
                title: Text(title),
                content: Text(message),
                actions: <Widget>[
                  TextButton(
                    child: Text(btnLabel),
                    onPressed: () => _launchURL(globals.PLAY_STORE_URL),
                  ),
                  TextButton(
                    child: Text(btnLabelCancel),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              );
      },
    );
  }

  _showVersionUpdatedDialog(context) async {
    await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        String title = "Congratulations!";
        String message = "You have the latest version\nrate us !";
        String btnLabel = "Rate Us";
        String btnLabelCancel = "Later";
        return Platform.isIOS
            ? CupertinoAlertDialog(
                title: Text(title),
                content: Text(message),
                actions: <Widget>[
                  TextButton(
                    child: Text(btnLabel),
                    onPressed: () => _launchURL(globals.APP_STORE_URL),
                  ),
                  TextButton(
                    child: Text(btnLabelCancel),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              )
            : AlertDialog(
                title: Text(title),
                content: Text(message),
                actions: <Widget>[
                  TextButton(
                    child: Text(btnLabel),
                    onPressed: () => _launchURL(globals.PLAY_STORE_URL),
                  ),
                  TextButton(
                    child: Text(btnLabelCancel),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              );
      },
    );
  }

  void updateDialog(BuildContext context) {
    String popUp = "Internet access required for app update";

    showDialog(
        context: context,
        builder: (context) {
          Timer(const Duration(milliseconds: 1500), () {
            Navigator.of(context).pop();
          });
          return CupertinoAlertDialog(
            title: Text(popUp),
          );
        });
  }

  void versionUpdate() async {
    if (globals.app_version.isEmpty || globals.app_update.isEmpty) {
      updateDialog(context);
    } else {
      //Get Current installed version of app
      double defaultVersion =
          double.parse(globals.app_version.trim().replaceAll(".", ""));
      debugPrint("default Version :$defaultVersion");
      double newVersion =
          double.parse(globals.app_update.trim().replaceAll(".", ""));
      debugPrint("New Version : $newVersion");
      if (newVersion > defaultVersion) {
        _showVersionDialog(context);
      } else {
        _showVersionUpdatedDialog(context);
      }
    }
  }

  void premiumAppUpdate() {
    if (Platform.isAndroid) {
      _launchURL(globals.PREMIUM_PLAY_STORE_URL);
    } else if (Platform.isIOS) {
      _launchURL(globals.PREMIUM_APP_STORE_URL);
    } else {}
  }

  shareIntent() {
    String url;
    Platform.isAndroid
        ? url = globals.PLAY_STORE_URL
        : url = globals.APP_STORE_URL;

    Share.share(
        "Worship God in Awe\nInstall Littafin Wakoki app and enjoy the free tunes attached to each hymn.\nGet it here: \n $url");
  }
}
