import 'dart:async';
import 'dart:io';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:littafin_wakoki/model/globals.dart' as globals;
import 'package:littafin_wakoki/model/hymn.dart';
import 'package:littafin_wakoki/util/fav_hymn_listing.dart';
import 'package:littafin_wakoki/util/hymn_listing.dart';
import 'package:littafin_wakoki/util/my_drawer.dart';
import 'package:package_info/package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart' as main;
import 'fav_hymn_details.dart';
import 'hymn_details.dart';

final myTabbedPageKey = GlobalKey<_MasterDetailsScreenState>();

class MasterDetailsScreen extends StatefulWidget {
  @override
  _MasterDetailsScreenState createState() => _MasterDetailsScreenState();
}

class _MasterDetailsScreenState extends State<MasterDetailsScreen>
    with SingleTickerProviderStateMixin {
  int currentTabIndex = 0;
  bool tabFlag = true;
  late TabController tabController;

  double adPadding = 0.0;
  bool isTabletLayout = false;

  // StartApp Ads Setup
  // var startAppSdk = StartAppSdk();
  // StartAppBannerAd? bannerAd;
  // StartAppInterstitialAd? interstitialAd;

  @override
  void initState() {
    super.initState();
    activeSearch = false;
    tabController =
        TabController(vsync: this, length: _kTabs.length, initialIndex: 0);

    // TODO make sure to comment out this line before release
    // startAppSdk.setTestAdsEnabled(true);
    // loadBanner();
    // loadInterstitial();
    // Future.delayed(const Duration(seconds: 5), () {
    //   buildInterstitial();
    // });

    tabController.addListener(() async {
      if (tabController.indexIsChanging) {
        await globals.player.stop();
      }
    });
    versionCheck();
  }

  @override
  void dispose() {
    tabController.dispose();
    main.isLightTheme.close();
    // interstitialAd = null;
    super.dispose();
  }

  //End of Ads setup
  static const int tabletBreakpoint = 600;
  Hymns _selectedHymn = Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 1,
      lyric:
          "1.\n Ubangiji Allah, ga mu nan gabanka.\nTun da farin hasken safe, mu ke nemanka.\nMuna yabon sunanka, ya Mai Iko Duka,\nMuna sujada, ya Mai Tsarki.\n\n2.\n Ubangiji Uba, kai ne farkon kome,\nKai ka ba da Ɗanka Yesu domin cetonmu.\nMu da muka tayar, kai ka ji tausayinmu.\nMuna sujada, ya Mai Tsarki.\n\n3.\n Ubangiji Yesu, kai ne Almasihu,\nKai ka fanshi bayin Shaiɗan daga bautarsa.\nKai ka ba da jininka domin mu mutane.\nMuna sujada, ya Mai Tsarki.\n\n4.\n Ubangiji Ruhu, sunanka Mai Tsarki,\nKai ne kana koya mana hanyar cetonmu.\nKai ne jagabanmu, kullum sai mu bi ka.\nMuna sujada, ya Mai Tsarki.\n\n5.\n Allah Ubangijinmu, ɗaya cikin uku,\nHarshe ba ya iya faɗin girman sunanka.\nUba, Ɗa, da Ruhu, uku cikin ɗaya,\nMuna sujada, ya Mai Tsarki.\n\n\n",
      title: "001-Ubangiji Allah, Ga Mu Nan Gabanka",
      tune: "Holy, Holy, Holy / Nicea");
  Hymns _favSelectedHymn = Hymns(
      id: -1,
      lyric: "Please select a hymn from the list",
      favorite: 0,
      tune: "",
      author: "",
      title: "No Hymn Selected !");
  bool activeSearch = false;
  final _searchController = TextEditingController();

  Key? searchBox;
  final _kTabs = <Tab>[
    const Tab(
      text: "All",
      icon: Icon(Icons.all_inclusive),
    ),
    const Tab(
      text: 'Favorite',
      icon: Icon(Icons.favorite),
    ),
  ];

  final GlobalKey<ScaffoldState> _mainDetailKey = GlobalKey();

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
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            )),
                            overlayColor: MaterialStateProperty.all<Color>(
                                Theme.of(context).splashColor)),
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: const Text(
                          "No",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            )),
                            overlayColor: MaterialStateProperty.all<Color>(
                                Theme.of(context).splashColor)),
                        onPressed: () {
                          SystemChannels.platform
                              .invokeMethod('SystemNavigator.pop');
                        },
                        child: const Text(
                          "Yes",
                          style: TextStyle(color: Colors.black),
                        ),
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

  Widget _buildMobileFavLayout() {
    return FavHymnListing(
        key: favHymnGKey,
        hymnSelectedCallback: (hymnSelected) async {
          await Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FavHymnDetails(
              isInTabletLayout: false,
              hymns: hymnSelected,
              adPadding: adPadding,
            );
          }));
        });
  }

  Widget _buildTabFavLayout() {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Material(
            elevation: 16.0,
            child: FavHymnListing(
              key: favHymnGKey,
              hymnSelectedCallback: (hymn) {
                setState(() {
                  _favSelectedHymn = hymn;
                });
              },
              hymnSelected: _favSelectedHymn,
            ),
          ),
        ),
        Flexible(
          flex: 4,
          child: FavHymnDetails(
            isInTabletLayout: true,
            hymns: _favSelectedHymn,
            adPadding: adPadding,
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return HymnListing(
      key: hymnGKey,
      hymnSelectedCallback: (hymnSelected) {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return HymnDetails(
            isInTabletLayout: false,
            hymns: hymnSelected,
            adPadding: adPadding,
          );
        }));
      },
    );
  }

  Widget _buildTabletLayout() {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Material(
            elevation: 16.0,
            child: HymnListing(
              key: hymnGKey,
              hymnSelectedCallback: (hymn) {
                setState(() {
                  _selectedHymn = hymn;
                });
              },
              hymnSelected: _selectedHymn,
            ),
          ),
        ),
        Flexible(
          flex: 4,
          child: HymnDetails(
            isInTabletLayout: true,
            hymns: _selectedHymn,
            adPadding: adPadding,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content;
    Widget favContent;
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    var orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.portrait &&
        shortestSide < tabletBreakpoint) {
      //Mobile
      content = _buildMobileLayout();
      favContent = _buildMobileFavLayout();
      isTabletLayout = false;
    } else {
      //tablet
      content = _buildTabletLayout();
      favContent = _buildTabFavLayout();
      isTabletLayout = true;
    }
    final _kTabPages = <Widget>[
      content,
      favContent,
    ];

    return DefaultTabController(
      length: 2,
      child: WillPopScope(
        onWillPop: () async {
          if (activeSearch) {
            _searchController.clear();
            if (hymnGKey.currentState != null) {
              hymnGKey.currentState?.onSearchExit(" ");
            } else if (hymnGKey.currentState == null) {
              favHymnGKey.currentState?.onSearchExit(" ");
            }
            setState(() {
              activeSearch = false;
            });
            return false;
          } else {
            return _onBackPressed;
          }
        },
        child: Scaffold(
          key: _mainDetailKey,
          appBar: _appBar(),
          body: TabBarView(controller: tabController, children: _kTabPages),
          drawer: MyDrawer(
              destroyBanner: destroyBanner,
              buildBanner: buildBanner,
              isTabletLayout: isTabletLayout),
          bottomNavigationBar: SizedBox(
            height: adPadding,
            // child: bannerAd != null ? StartAppBanner(bannerAd!) : Container(),
            child: Container(),
            // width: 320.0,
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    if (activeSearch) {
      return AppBar(
        leading: const Icon(Icons.search),
        title: TextField(
          key: searchBox,
          controller: _searchController,
          autofocus: true,
          onChanged: onItemChanged,
          decoration: const InputDecoration(
              hintText: "Search Hymn",
              hintStyle: TextStyle(color: Colors.white70)),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                _searchController.clear();
                if (hymnGKey.currentState != null) {
                  hymnGKey.currentState?.onSearchExit(" ");
                } else if (hymnGKey.currentState == null) {
                  favHymnGKey.currentState?.onSearchExit(" ");
                }

                setState(() {
                  activeSearch = false;
                });
              })
        ],
      );
    } else {
      return AppBar(
        title: const Text("Littafin WaKoki"),
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () async {
              _mainDetailKey.currentState?.openDrawer();

              if (_mainDetailKey.currentState!.isDrawerOpen) {
              } else if (!_mainDetailKey.currentState!.isDrawerOpen) {
                // loadBanner();
                if (kDebugMode) {
                  print("Banner Restored");
                }
              }
            }),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            isTabletLayout
                ? Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(Icons.all_inclusive),
                        ),
                        Text('All')
                      ],
                    ),
                  )
                : const Tab(
                    text: "All",
                    icon: Icon(Icons.all_inclusive),
                  ),
            isTabletLayout
                ? Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(Icons.favorite),
                        ),
                        Text('Favorite')
                      ],
                    ),
                  )
                : const Tab(
                    text: "Favorite",
                    icon: Icon(Icons.favorite),
                  ),
          ],
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.sort), onPressed: () => sortList()),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              setState(() => activeSearch = true);
            },
          )
        ],
      );
    }
  }

  void onItemChanged(String value) {
    hymnGKey.currentState != null
        ? hymnGKey.currentState?.onSearchedItem(value)
        : favHymnGKey.currentState?.onSearchedItem(value);
  }

  sortList() {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text("Sort By..."),
              content: SizedBox(
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        leading: const Icon(Icons.sort_by_alpha),
                        title: const Text(
                          "Title",
                          style: TextStyle(fontSize: 12.0),
                        ),
                        onTap: () {
                          hymnGKey.currentState != null
                              ? hymnGKey.currentState?.sortByTitle()
                              : favHymnGKey.currentState?.sortByTitle();
                          Navigator.of(context).pop(true);
                        },
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: const Icon(Icons.format_list_numbered),
                        title: const Text(
                          "Number",
                          style: TextStyle(fontSize: 12.0),
                        ),
                        onTap: () {
                          hymnGKey.currentState != null
                              ? hymnGKey.currentState?.sortByNumber()
                              : favHymnGKey.currentState?.sortByNumber();
                          Navigator.of(context).pop(true);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              elevation: 4.0,
              contentPadding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.redAccent, width: 1.5),
                  borderRadius: BorderRadius.circular(26.0)),
            ));
  }

  /*void loadBanner() async {
    startAppSdk
        .loadBannerAd(StartAppBannerType.BANNER,
            prefs: const StartAppAdPreferences(adTag: "homepage"))
        .then((bannerAd) {
      setState(() {
        bannerAd = bannerAd;
        adPadding = bannerAd.height!.toDouble();
      });
    }).onError<StartAppException>((ex, stackTrace) {
      debugPrint("Error loading Banner ad: ${ex.message}");
    }).onError((error, stackTrace) {
      debugPrint("Error loading Banner ad: $error");
    });
  }

  void loadInterstitial() {
    startAppSdk
        .loadInterstitialAd(
            prefs: const StartAppAdPreferences(
                videoMuted: true, categoriesExclude: ["porn", "adult"]))
        .then((interstitialAd) {
      setState(() {
        this.interstitialAd = interstitialAd;
      });

    }).onError<StartAppException>((ex, stackTrace) {
      debugPrint("Error loading Interstitial ad: ${ex.message}");
    }).onError((error, stackTrace) {
      debugPrint("Error loading Interstitial ad: $error");
    });
  }*/

  destroyBanner() async {
    // bannerAd = null;
  }

  buildBanner() {
    // loadBanner();
  }

/*
  void buildInterstitial() {
    if (interstitialAd != null) {
      interstitialAd!.show().then((shown) {
        if (shown) {
          setState(() {
            // NOTE interstitial ad can be shown only once
            interstitialAd = null;

            // NOTE load again
            // loadInterstitial();
          });
        }

        return null;
      }).onError((error, stackTrace) {
        debugPrint("Error showing Interstitial ad: $error");
      });
    }
  }*/

  void versionCheck() async {
    //Get Current installed version of app
    final PackageInfo info = await PackageInfo.fromPlatform();
    double currentVersion =
        double.parse(info.version.trim().replaceAll(".", ""));
    globals.app_version = info.version.trim().replaceAll(".", "");
    //Get Latest version info from firebase config
    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    try {
      // Using default duration to force fetching from remote server.
      // await remoteConfig.fetch(expiration: const Duration(seconds: 0));
      await remoteConfig.fetchAndActivate();
      String remoteVersion = remoteConfig.getString("app_version");
      String storeUrl = remoteConfig.getString("app_store_url");
      String playUrl = remoteConfig.getString("play_store_url");
      String shareApp = remoteConfig.getString("share_app");
      String moreApps = remoteConfig.getString("more_apps");
      String proStoreUrl = remoteConfig.getString("pro_store_url");
      String proPlayUrl = remoteConfig.getString("pro_play_url");
      globals.APP_STORE_URL = storeUrl;
      globals.PLAY_STORE_URL = playUrl;
      globals.PREMIUM_APP_STORE_URL = proStoreUrl;
      globals.PREMIUM_PLAY_STORE_URL = proPlayUrl;
      globals.share_app = shareApp;
      globals.more_apps = moreApps;

      globals.app_update = remoteVersion;
      double newVersion =
          double.parse(remoteVersion.trim().replaceAll(".", ""));
      if (newVersion > currentVersion) {
        _showVersionDialog();
      }
    } catch (exception) {
      if (kDebugMode) {
        print('Unable to fetch remote config. Cached or default values will be '
            'used\nException: $exception');
      }
    }
  }

  _showVersionDialog() async {
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

  _launchURL(String myUrl) async {
    Uri url = Uri.parse(myUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}

void setTheme(bool mode) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool("nightMode", mode);
  globals.nightMode = mode;
}
