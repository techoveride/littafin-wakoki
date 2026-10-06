class Hymns {
  String? author;
  int? favorite;
  int id;
  String lyric;
  String title;
  String? tune;

  Hymns(
      {this.author,
      this.favorite,
      required this.id,
      required this.lyric,
      required this.title,
      this.tune});

  factory Hymns.fromJson(Map<String, dynamic> json) {
    return Hymns(
      author: json['author'],
      favorite: json['favorite'],
      id: json['id'],
      lyric: json['lyric'],
      title: json['title'],
      tune: json['tune'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['author'] = author;
    data['favorite'] = favorite;
    data['id'] = id;
    data['lyric'] = lyric;
    data['title'] = title;
    data['tune'] = tune;
    return data;
  }
}

List<Hymns> listHymns = <Hymns>[
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 1,
      lyric:
          "1.\n Ubangiji Allah, ga mu nan gabanka.\nTun da farin hasken safe, mu ke nemanka.\nMuna yabon sunanka, ya Mai Iko Duka,\nMuna sujada, ya Mai Tsarki.\n\n2.\n Ubangiji Uba, kai ne farkon kome,\nKai ka ba da Ɗanka Yesu domin cetonmu.\nMu da muka tayar, kai ka ji tausayinmu.\nMuna sujada, ya Mai Tsarki.\n\n3.\n Ubangiji Yesu, kai ne Almasihu,\nKai ka fanshi bayin Shaiɗan daga bautarsa.\nKai ka ba da jininka domin mu mutane.\nMuna sujada, ya Mai Tsarki.\n\n4.\n Ubangiji Ruhu, sunanka Mai Tsarki,\nKai ne kana koya mana hanyar cetonmu.\nKai ne jagabanmu, kullum sai mu bi ka.\nMuna sujada, ya Mai Tsarki.\n\n5.\n Allah Ubangijinmu, ɗaya cikin uku,\nHarshe ba ya iya faɗin girman sunanka.\nUba, Ɗa, da Ruhu, uku cikin ɗaya,\nMuna sujada, ya Mai Tsarki.\n\n\n",
      title: "001-Ubangiji Allah, Ga Mu Nan Gabanka",
      tune: "Holy, Holy, Holy / Nicea"),
  Hymns(
      author: "C. Sanderson",
      favorite: 0,
      id: 2,
      lyric:
          "1.\n Ubanginmu, Mai Ceto,\nDon zumunta ne muka zo.\nA duniyan nan sai sakewa,\nWurinka fa sai hutawa.\n\n2.\n Tun jiya, yau, har abada,\nMadauwami ne sunanka!\nKai ne ka kafa duniyan nan,\nKai ne mai shirya gida can.\n\n3.\n Almasihu, Cetonmu,\nBa mu da wani taimako,\nAmma ƙaunarka cikakkiya,\nIta ce garkuwar ƴaƴanka.\n\n4.\n Ƙaunarka ! har wa yau ta tsaya\nDa, ka ɗanɗana mutuwa.\nCan bisa kursiyin Allahnmu,\nYanzu ka rayu dominmu.\n\n5.\n Yabo, daraja, godiya\nGare ka Yesu Ɗan Allah!\nKa cika mu da Ruhunka,\nYa koya mana nufinka.\n\n\n\n",
      title: "002-Ubanginmu, Mai Ceto",
      tune: "All Praise to Thee my God / Tallis' Cannon"),
  Hymns(
      author: "E. M. Paddon",
      favorite: 0,
      id: 3,
      lyric:
          "1.\n Abu duk a duniya Ubanmu ne ya yi,\nSai mu yi ta yabonsa, Allah Mahalicci.\nShi ya kan ba mu ruwa a loton shukawa,\nHar amfanin gonaki ba za mu rasa ba.\n\n2.\n Abu duk a duniya Ubanmu ne ya yi,\nSai mu yi ta yabonsa, Allah Mahalicci.\nYa ba mu hasken rana, mu kama aikinmu.\nDuhun dare kyautarsa, mu riƙa hutawa.\n\n3.\n Abu duk a duniya Ubanmu ne ya yi,\nSai mu yi ta yabonsa, Allah Mahalicci.\nDuk masu rai na duniya, ya kan ciyad da su.\nKifaye da tsuntsaye, ya san bukatarsu.\n\n4.\n Abu duk a duniya Ubanmu ne ya yi,\nSai mu yi ta yabonsa, Allah Mahalicci\nMu kuma Masu Binsa aikin hannunsa ne, \nUbanmu mai ƙauna mahaliccinmu ne.\n\n",
      title: "003-Abu Duk A Duniya Ubanmu Ne Ya Yi",
      tune: "All Things Bright and beautiful / Monk /Royal Oak"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 4,
      lyric:
          "1.\n Halittar Allah, furta yau yabonku baki ɗaya.\nAllah mai iko yana nan, mai ikon zamanai.\n\n2.\n Fansassun Yesu, shaida yau ƙaunarku baki ɗaya.\nImmanuel ke tare da mu, mai ikon namu rai.\n\n3.\n Ƙaƙƙarfan Ruhu, shirya yau yaƙi na Masu Bi.\nRuhu na gaskiya yana nan, jagabanmu ne shi.\n\n4.\n Ku kamilai, rabonku can ku duba fuskarsa.\nTare da ku, mu rcra yabo, mu yi sujada ma\n\n",
      title: "004-Halittar Allah, Furta Yau Yabonku Baki Ɗaya",
      tune: "Praise to the Holiest / Gerontius / Newman"),
  Hymns(
      author: "A. M. Locke",
      favorite: 0,
      id: 5,
      lyric:
          "Halleluya, Halleluya, Halleluya.\n\n1.\nYa Yesu, muna yabonka,\nMun taru don mu girmama ka,\nMu yi sujada gabanka. Halleluya!\n\n2.\n Ya Kalmar Allah, Shaidarsa,\nBayani ne na darajarsa,\nHaskaka mu har abada. Halleluya!\n\n3.\n Ka gyarta mini zuciyata\nKa sa yabo a bakina,\nDomin in yi ta ɗaukaka ka. Halleluya !\n\n4.\n Ban da kai, raina wofi ne,\nAikina kuma banza ne,\nDaɗi sai wurinka kaɗai. Halleluya!\n\n5.\n Annabi, manzo, malami,\nMai ta' aziyya, adili,\nYabo gare ka mu ke yi. Halleluya!\n\n6.\n Yaushe zan duba fuskarka?\nYaushe ma zan ji muryarka?\nSai ran da ka karƃe ni can. Halleluya!\n\n",
      title: "005-Halleluya, Halleluya, Halleluya.Ya Yesu",
      tune: "The Strife is O'er / Victory"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 6,
      lyric:
          "1.\n Mu yi sujada ga Ubangiji,\nMu yi godiya domin ƙaunarsa.\nDa zuciya ɗaya mu ɗaukaka shi,\nMu yabi sunansa da duk ladabi.\n\n\n2.\n Mu yi tunani a kan girmansa,\nMu yi waƙoƙi kan alherinsa,\nMai Tsarki, Mai Ƙauna, Mai Gaskiya ne,\nMai ikon halitta, mai jin addu'a.\n\n3.\n Bukatarmu duk shi ya ke ta biya,\nMu karƃe su fa tare da godiya.\nAbinci, abin sha, numfashi da rai,\nLissafin kyautansa ya fi ƙarfinmu.\n\n4.\n Mu raunana ne, amma cetattu,\nMu ƴaƴansa ne, bai yashe mu ba.\nYana marmari dai mu yi zumunta,\nJiƙansa mai yawa, ba misalinsa.\n\n5.\n Al’amuranmu su girmama shi,\nDa bakunanmu mu yi ta shaida.\nMu bauta masa, mu ji tsoronsa kuwa,\nGama shi ne Allah na duk duniya.\n\n\n",
      title: "006-Mu Yi Sujada Ga Ubangiji",
      tune: "O worship the King / Houghton / Hanover"),
  Hymns(
      author: "M. Dykstra",
      favorite: 0,
      id: 7,
      lyric:
          "1.\n Ya Allah, kai mai girma ne, kai ne Maɗaukaki,\nSunanka dai mu girmama saboda jinƙanka.\n\n2.\n Ya Allah, kai Madauwami, Alƙadiru ne kai.\nHikimarka da ikonka sun wuce saninmu.\n\n3.\n Ya Allah, ina tsoronka, tsoro mai ladabi.\nSujada tawa da bege, tara da kuka ne.\n\n4.\n Kaunar uwa ko ta uba, dabam da taka ce.\nYa Ubangiji, ƙaunarka ta fi ta duniya duk.\n\n5.\n Na gode maka, Allahna, don irin ƙaunarka,\nTausayinka da hanƙurinka da ni, mai zunubi.\n\n6.\n Ya Ubangiji, wane mu da za ka so mu fa?\nMun gode maka, ya Yesu don halin ƙaunarka.\n\n7.\n Ran da ma duba fuskarka a cikin Sama can,\nYa Yesu, kai mai ƙaunarmu, sai murna za mu yi.\n\n",
      title: "007-Ya Allah, Kai Mai Girma Ne",
      tune: "Lancaster / Windsor /I Have a Friend so Precious"),
  Hymns(
      author: "",
      favorite: 0,
      id: 8,
      lyric:
          "1.\n Na zauna a ɗakinka in yi maka sujada.\nWurin nan a keƃe fa, za mu sami jinƙanka,\n\n2.\n Cikinsa ga zumunci, cikinsa ga ɗiyanci.\nUba, cikin fadarka, za mu duba fuskarka.\n\n3.\n Lokacin da muka zo. gyara mana zuciya.\nMu lizimi cikinka, Allah na har abada.\n\n4.\n Addu'o'in tsarkaka suna hawa wurinka.\nSaurare mu duk yanzu, cikin sunan Yesunmu.\n\n5.\n Domin darajar Allah, wurin nan ta haskaka.\nZuciya ta yi ƙuna, garin yin sujadarmu.\n\n",
      title: "008-Na Zauna A Ɗakinka In Yi Maka Sujada",
      tune: "Vienna / Now may He, who from the dead"),
  Hymns(
      author: "",
      favorite: 0,
      id: 9,
      lyric:
          "1.\n Ina misalan daraja da ban mamaki da\nJamalinka ya bayyana, ya Allah, haskena!\n\n2.\n Ya Allahna Madauwami, kwarjininka ya sa\nIn yi maka sujada fa a cikin zuciyata.\n\n3.\n In ƙaunace ka kullum kuwa, mai iko duka ne,\nDon ka yarda ka zo guna, ka nemi ƙaunata.\n\n4.\n Ba wani uba na duniya, ba wata uwa kuwa,\nDa za su iya renonmu yadda ka ke mana.\n\n5.\n Sai abu ɗaya na ke so, in zauna gabanka,\nIn ga jamalin haskenka, in dinga sujada.\n\n6.\n In yi shelar sunanka dai, in riƙa tunani\nYadda ka ƙaunace ni kuwa, ya Allah mai jinƙai.\n\n7.\n Ina misalin daraja da ban mamaki kuwa\nNa tsarin dukan hikima wadda ka ayana.\n\n",
      title: "009-Ina Misalan Daraja Da Ban Mamaki",
      tune: "Westminster / My God, how wonderful Thou art"),
  Hymns(
      author: "",
      favorite: 0,
      id: 10,
      lyric:
          "1.\n Muna son wurin nan na darajar Allah.\nMurna ta ɗakin na ta fi a kwatanta.\n\n2.\n Ɗakin addu'a ne na taron bayinka.\nLalle fa kana nan tare da jama'a.\n\n3.\n Wurin Baftisma fa mu ke sonsa ƙwarai,\nGama nan Ruhunka ke ba da alherai.\n\n4.\n Muna son Tebur ma, wuri ƙaunatacce.\nNan ka ke ciyad da mu cikin bangaskiya.\n\n5.\n Maganarka ta rai, ita ma mu ke so.\nTa ba da kwanciyar rai, salama ta kan kawo.\n\n6.\n Yanzu mu ke ta yin waƙa ta jinƙanka,\nAmma can Sama fa da waƙar nasara.\n\n7.\n Ya Yesu, ƙara dai alheri da ƙauna\nGa mu jama'arka, mu dinga sujada.\n\n\n\n\n",
      title: "010-Muna Son Wurin Nan Na Darajar Allah.",
      tune: "Quam dilects / We Love the Place"),
  Hymns(
      author: "",
      favorite: 0,
      id: 11,
      lyric:
          "1.\n Maɗaukakin Sarki madauwami ne,\nKai ne kuma mafarin hikima duk.\nWalƙiyar darajarka ta makanta mu,\nMai iko, mai nasara, ya Allahnmu.\n\n2.\n Mulkinka mai haske ya tabbata nan,\nA hankali, a natse saukowarsa.\nAlbarkarka tana zubowa kanmu,\nAlheri mai yawa da nagartarka.\n\n3.\n Kai ne mai rayad da talikanka duka,\nDa lafiya da ƙarfi da iyawa kuwa.\nMun ga jamalinka cikin halitta,\nGwanintar aikinka ka bayyana kuwa.\n\n4.\n Da rana da wata har taurari kuwa,\nKyawawan tafukka, da Kogin Kwara,\nDa duwatsu duk da tuddai suna yi\nWa  sunanka yabo, ya Mahalicci.\n\n5.\n Ya Ubangiji mai girma, Mai Tsarki ne kai; .\nAllah ne na zurfafa da al'arshi,\nMala’ikunka suna yin sujada,\nMu fa sai biyayya za mu yi maka.\n\n\n",
      title: "011-Maɗaukakin Sarki Madauwami Ne",
      tune: "St. Denio / Immortal, invisible, God only wise"),
  Hymns(
      author: "R.M. Jacobson",
      favorite: 0,
      id: 12,
      lyric:
          "1.\n Allah Maɗaukaki, Sarki madauwami,\nMu yabe ka.\nKai ne Mahalicci, kai ne mai aminci,\nKai ne mafifici har abada.\n\n2.\n Mun taru wurinka, kai ne madogara,\nMun yabe ka.\nKai ne mai ƙaunarmu, kai ne mai fansarmu,\nKai ne mai tsaronmu har abada.\n\n3.\n Bayyana girmanka, nuna darajarka,\nKusance mu.\nTsarkake zukata, sauko da ikonka,\nFurta maganarka, ya Allahnmu.\n\n4.\n Mallaki ƴaƴanka, ƙarfafa bayinka\nA duniyan nan.\nYi amfani da mu, kwaƃi ragwancinmu,\nMai da mu nan gaba manzanninka.\n\n\n\n",
      title: "012-Allah Maɗaukaki, Sarki Madauwami",
      tune: "Come, Thou Almighty King / Moscow"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 13,
      lyric:
          "1.\n Kai ne Ubanmu, gare ka mun zo.\nBayinka ƴaƴanka, kai mu ke so.\nKarƃi addu’armu yanzu,\nAllah Mai Girma, Mahaliccinmu.\n\n2.\n Kai ne Mai Cetonmu ƙaunatacce.\nPansassu, cetattu, kai mu ke bi.\nKarƃi addu’armu yanzu,\nYesu Maɗaukaki, Masoyinmu.\n\n3.\n Kai ne Aikakke na Uba da Ɗan.\nBabu marayu nan gaba daɗai.\nCikinmu yi addu'a yanzu,\nRuhu Mai Tsarki, Mai Taimakonmu\n\n4.\n Uba, Mai Ceto, Mai Taimako, ɗaya.\nAllah, da Kalma, da Ruhunsa, ɗaya.\nDuba yanzu sujadarmu,\nKarƃe ta, karƃe mu, naka ne mu.\n\n\n\n",
      title: "013-Kai Ne Ubanmu, Gare Ka Mun Zo",
      tune: "Sun of my soul / Hursley"),
  Hymns(
      author: "W.A. Thompson",
      favorite: 0,
      id: 14,
      lyric:
          "1.\n Abba, Uba, ga mu nan, duba, tsauta, ji, ƙanmu.\nMuka tayar maka da, Ubangijinmu.\n\n2.\n Kai ne fansa kai ne rai, Almasihu, begenmu.\nKarƃi, tuba. ji tausayi, Ubangijinmu.\n\n3.\n Ruhun Allah wuta ne. Ƙona, gyarta, tsarkake\nHaIin masu zunubi, Ubangijinmu.\n\n4.\n Mu mayunwata mun zo garin samun kiwonmu,\nKamin ranar da ka dawo. Ubangijinmu.\n\n5.\n Nishan zuciyar adilai, ba ka ƙyalewa daɗai,\nKukan ƴaƴanka ka ji, Ubangijinmu.\n\n\n\n",
      title: "014-Abba, Uba, Ga Mu Nan, Duba, Tsauta, Ji, Ƙanmu",
      tune: "Come to our poor nature's night  / Capetown"),
  Hymns(
      author: "",
      favorite: 0,
      id: 15,
      lyric:
          "1.\n Ya Ubanmu, ka bishe mu\nCikin wannan duniya.\nKai kaɗai mai taimakonmu,\nDube mu da ƙaunarka.\nBa abin da za mu rasa,\nIn ka zama jigonmu.\n\n2.\n Ya Mai Ceto, ka yi jinƙai.\nKa san kumamancinmu,\nKai ka sha wahalar giciye,\nDomin fansar dukanmu.\nZa mu jure har matuƙa\nIn ka sa albarkarka.\n\n3.\n Sauko nan, ya Ruhun Allah.\nCika mu da ikonka.\nBa mu ƙauna da salama,\nMurna marar iyaka.\nHaka za mu ratsa duniya,\nHar mu isa gidanka.\n\n",
      title: "015-Ya Ubanmu, Ka Bishe Mu",
      tune: "Grafton"),
  Hymns(
      author: "",
      favorite: 0,
      id: 16,
      lyric:
          "1.\n Ni na gaskata da Allah,\nGa shi, uku cikin ɗaya,\nUba, Ɗa da Ruhu kuma.\nAllahntakarsu ɗaya.\n\n2.\n Allah mai yin haskoki ne,\nShi Mahaliccinmu ne,\nHar da duniya, duk da Sama,\nTaurari da masu rai.\n\n3.\n Allab Ɗa shi ya fanshe mu,\nShafaffe da Aikakke\nDaga wurin Allah Uba,\nShi ne Hanya, Gaskiya, Rai.\n\n4.\n Allah Ruhu Mai Tsarki kuwa,\nBa wurin da babu shi,\nIkon Allah a gare shi,\nShi Mai Tsarkakewa ne.\n\n5.\n Allahntaka ga Triniti,\nƊaya ne, ba uku ba,\nAllahnmu Madauwami kuwa,\nGabansa mu rusuna.\n",
      title: "016-Ni Na Gaskata da Allah",
      tune:
          "Souls of men, why will ye scatter? /Capetown/ All for Jesus/ St. Mabyn/"),
  Hymns(
      author: "C. Sanderson",
      favorite: 0,
      id: 17,
      lyric:
          "1.\n Tun farkon hasken safe\nZuciya ta ke yin yabo ga Yesunmu!\nKo cikin aiki ne, ko wurin wasa ne,\nYabo ga Yesunmu!\n\n2.\n Ko dare ne ko rana,\nKoyaushe sai mu yi yabo ga Yesunmu!\nIn fa Shaiɗan ya zo, Yesu 'na taimako\nYabo ga Yesunmu!\n\n3.\n Ga Allah cikin Sama,\nMala'ikunsa 'na yin yabo ga Yesunmu!\nMu mutanen duniya, kada dai mu fasa\nYabo ga Yesunmu!\n\n4.\n Yanzu da ranmu duka\nMu ce da ƙarfinmu, yabo ga Yesunmu!\nTun daga duniya, har can cikin Sama,\nYabo ga Yesunmu!\n",
      title: "017-Tun Farkon Hasken Safe",
      tune: "When morning gilds the sky / LAUDES DOMINI (Barnby)"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 18,
      lyric:
          "1.\n Rana ta Ubangiji ta sake zuwa yau,\nHutawa domin jiki, ranar sujada ma.\nA cikin taruwarmu, mun ta da muryarmu,\nMun gode maka, Allah, domin hutawarmu.\n\n2.\n A ranan nan mai tsarki, Yesu, mai fansarmu, na ikonsa ya tashi, ya gama cetonmu,\nYa kwance sarkar Shaiɗan, ya tube ikonsa,\nTa wurin mutuwarsa, ya ka da mutuwa.\n\n3.\n A ranan nan mai tsarki, Mai Taimako ya zo\nA wurin Masu Binsa, ya zauna cikinsu.\nYa ba su ikon shaida, ya kau da tsoro duk,\nYa buɗe hankalinsu, ya eika zuciyarsu.\n\n4.\n Mun gode maka, Allah, cikin alherinka,\nKa tuna da ƴan Adam, ka ba su hutu ma.\nKa taimake mu, Allah, mu tsare ranan nan\nHar ran da za mu gan ka a cikin Sama can.\n\n\n",
      title: "018-Rana Ta Ubangiji Ta Sake Zuwa Yau",
      tune: "The Church's one foundation/ Aurelia"),
  Hymns(
      author: "",
      favorite: 0,
      id: 19,
      lyric:
          "1.\n Ya Ubangiji, mun gode\nDon ka sake ta da mu,\nHar ka tara mu gabanka\nDon mu furta yabonmu.\nCikin dukan duhun dare\nKana nan tare da mu.\nBa abin da ya same mu\nTun da ka ke tsaronmu.\n\n",
      title: "019-Ya Ubangiji, Mun Gode",
      tune: "Glorious things of thee are spoken / Austria /Nettleton"),
  Hymns(
      author: "",
      favorite: 0,
      id: 20,
      lyric:
          "1.\n Yesu Ubangijinmu, ga mu nan a gabanka.\nKai ka kawo dukanmu yinin nan da lafiya\nMuna rera waƙarmu, muna maka godiya.\n\n2.\n In yau wata jaraba za ta kai mu haɗari,\nBa mu ikon jurewa, ƙara mana ƙarfi kuwa,\nKiyaye mu lafiya, har mu ka da zunubi.\n\n3.\n Bisa ga maganarka, daidaita rayukanmu,\nBishe mu da Ruhunka, amshi mulkin nufinmu.\nBar mu miƙa gare ka hadaya ta zuciyarmu.\n\n4.\n Ji yanzu addu'armu, ji mu, muna roƙonka.\nDa mu duk da ƴanuwa, baiwarka mafificiya\nIta ce bukatarmu, sahihiyar zuciya.\n\n5.\n Haka za mu bayyana yau da gobe godiyarmu.\nHaka za mu ɗaukaka sunan Ubangijinmu.\nZa mu shaida yabonka, Almasihu Allahnmu.\n\n",
      title: "020-Yesu Ubangijinmu, Ga Mu Nan A Gabanka",
      tune: "Barmouth-At Thy feet, O Christ, we lay / St. John"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 21,
      lyric:
          "1.\n Yinin nan ya wuce, dare yana bi,\nBabu sauran haske, duhu yana yi.\n\n2.\n Su taurari duka, aikin hannunka,\nSu rundunan sama, suna walƙiya.\n\n3.\n Yesu, Mai Alheri, sa albarkarka,\nBisa ƙanƙanana, yaran ƙaunarka.\n\n4.\n Tsare mu da dare, inuwantad da mu,\nTa dalilin barci, ba mu ƙarfinka.\n\n5.\n Yafe zunubanmu, wanke zukata,\nBa mu naka iko, gyarta ha1inmu.\n\n6.\n Daga tarkon Iblis, daga wayonsa,\nAlgus, duk da ƙarya, ceci ƴaƴanka.\n\n7.\n Duba masu ciwo, rage zafinsu,\nLura da marayu, ji addu'arsu.\n\n",
      title: "021-Yinin Nan Ya Wuce, Dare Yana Bi",
      tune: "Now the day is over / Eudoxia /Merrial"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 22,
      lyric:
          "1.\n Da yamman nan, ya Yesunmu,\nAlbarkaci maganarka,\nHaskaka, Yesu, duhunmu\nBishe mu kuwa da Ruhunka.\nYa Yesunmu, mai taimako,\nƘarfafa ranmu duka yau.\nYa Yesunmu, mai taimako,\nƘarfafa ranmu duka yau.\n\n2.\n Magaucinmu ya bi mu yau.\nDa wayonsa, ya ruɗe mu.\nJaraba ma mai zafi ce,\nHalinmu kuwa rarrauna ne.\nYa Yesunmu, mai nasara,\nKa cika mu da Ruhunka.\nYa Yesunmu, mai nasara,\nKa cika mu da Ruhunka.\n\n3.\n Laifofinmu dayawa ne,\nTunaninmu miyagu ne,\nHarshenmu duk da gurinmu,\nSun ƙara mana laifinmu.\nYa Yesunmu, yafe mu dai,\nDa jininka, ka wanke mu .\nYa Yesunmu, yafe mu dai,\nDa jininka, ka wanke mu.\n\n4.\n Ya Ubangiji, Allahnmu,\nKa tsare mu da daren nan,\nDa hannunka ka riƙe mu,\nDa ikonka, ƙarfafa mu.\nYa Yesunmu, ka keƃe mu,\nHar safiya, ka tsare mu.\nYa Yesunmu, ka keƃe mu,\nHar safiya, ka tsare mu.\n\n",
      title: "022-Da Yamman Nan, Ya Yesunmu",
      tune: "He leadeth me/Bradbury"),
  Hymns(
      author: "",
      favorite: 0,
      id: 23,
      lyric:
          "1.\n Ranan nan da ka bayar ta faɗi,\nKai ne ka sa duhu ya yi.\nMu rera waƙoƙi gare ka,\nYabonka kuwa zai tsarkake mu.\n\n2.\n Mun gode don Ekklesiyarka,\nDa himma ta ke shaidarka,\nTana kuwa kiwon dukan duniya,\nBa ta da hutu, ko kaɗan.\n\n3.\n A ƙasashen duniya dayawa,\nHasken safe 'na ƃullowa,\nAddu'a ba ta fasawa,\nYabo gare ka kullayaumin.\n\n4.\n Loton da mu ke barci fa,\nWaɗansu su ke farkawa,\nKowane lokaci, ƴaƴanka\nYabonka su ke furtawa.\n\n5.\n Mulkinka ba zai shuɗe ba\nKamar su mulkokin duniya,\nAmma ya tabbata da iko,\nHar kowa ya bi nufinka.\n\n",
      title: "023-Ranan Nan da Ka Bayar Ta Faɗi",
      tune: "St. Clement"),
  Hymns(
      author: "E. M. Rimmer",
      favorite: 0,
      id: 24,
      lyric:
          "Ubangiji Allahnmu,\nGunka muka zo yanzu\nTun dai ba mu rabu ba,\nMuna son albarkarka\nA kan mu yau.\nKarƃe mu, ya Uba,\nMu ƴaƴanka,\nSa alheri bisanmu,\nInuwantad da dukanmu\nƊa Kaunarka. Amin.\n\n\n\n",
      title: "024-Ubangiji Allahnmu,  Gunka Muka Zo Yanzu",
      tune: "Evening Praise /Day is Dying"),
  Hymns(
      author: "",
      favorite: 0,
      id: 25,
      lyric:
          "Ya Ubangijinmu,\nA hannunka mu ke.\nKa tsare mu da daren nan,\nHar safiya ta yi\n",
      title: "025-Ya Ubangijinmu, A Hannunka Mu Ke",
      tune: "Lord, keep us safe this night / Combe Martin"),
  Hymns(
      author: "",
      favorite: 0,
      id: 26,
      lyric:
          "Ya Ubangijinmu Yesu,\nTsare mu da daren nan.\nKada kome ya same mu,\nRufe mu da hannunka.\n\nTun da farkon hasken safe\nKana nan tare da mu.\nKo da duhu ya rufe mu,\nKana wurin har yanzu.\n\n",
      title: "026-Ya Ubangijinmu Yesu, Tsare Mu da Daren Nan",
      tune:
          "Jesus, tender Shepherd, hear us-Brocklesbury /Evening Prayer/Nettleton-Come Thou Fount"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 27,
      lyric:
          "1.\n Yesu, na naɗa ka a cikin zuciyata.\nBa wani iko ko'ina sai naka, Sarkina.\nKai yaro ne a da tare da mu ka sha\nJaraba, kai Mai Nasara, Yesu Mai Cetona.\n\n2.\n Yesu, na naɗa ka a cikin zuciyata.\nBa wani wanda na ke so shi amshi mulkinta\nDa zunubi kaɗai ya cika nawa rai,\nAmma yanzu na sani kai Ubangijina ne.\n\n3.\n Yesu, na naɗa ka, ban rage kome ba,\nA bisa nawa duk da ni, sarauta za ka yi.\nDa goshinka ya sha azabar naɗin ƙaya,\nYanzu ka ratsa mutuwa, ya kai Mai Nasara!\n\n4.\n Yesu, an naɗa ka domin biyayyarka.\nSuna mafifici aka ba mai mulkin mutuwa.\nYesu, ka cancanci ƙauna madauwamiya.\nAn naɗa ka! An naɗa ka tun da har abada!\n\n5.\n Allah ya naɗa ka Ɗansa Maɗaukaki.\nBaki ya kasa furtawa labarin girmanka.\nGare ka ɗaukaka har abada,  Amin\nAn naɗa ka! An naɗa ka! Immanuel Almasihu.\n",
      title: "027-Yesu, Na Naɗa Ka A Cikin Zuciyata",
      tune: "Crown Him With Many Crowns / Diademata"),
  Hymns(
      author: "",
      favorite: 0,
      id: 28,
      lyric:
          "Ku, za ku ina?\nZa mu tafi majami’a, mu yi wa Allah yabo.\nYabon menene?\nDomin abinci, rai da sutura da Allah ya ke ba mu.\nWannan kaɗai, ko?\nA'a, daa sauran abu da yawa da Allah ya ke ba mu,\nSauran menene?\nSaura dayawa, kwanciyar zuciya,\nMurna da farinciki\nDon me da murna?\nMuna murna saboda Yesu ya zo ya kawo ceto.\nKuna biya menene?\nBa mu biya ba, daga alherinsa ya biya laifofinmu.\nƘaƙa zan samu?\nTuba ka yarda Allah ya aiko Yesu\ndon ya ceci duniya\nWannan na yarda.\nTo, ya isa, an cece ka, ka zo mu tafi tare.\nZa ni tare.\nTo mu tafi majami'a mu yi wa Allah yabo.\n\n",
      title: "028-Ku, Za Ku Ina?",
      tune: "African tune"),
  Hymns(
      author: "H. G. Farrant",
      favorite: 0,
      id: 29,
      lyric:
          "1.\n Mun gode maka, ya Uba, Allahnmu,\nDon ka aiko da Ɗanka sabili da mu.\n\nKORUS\nYa Ubanmu, ai, mun gode don ka tuna da mu.\nKa fisshe mu daga duhu, kai, ka cece mu.\n\n2.\n Mun gode maka , ya Ubangjjinmu,\nDomin Ruhu Mai Tsarki, mai taimakonmu.\n\nKorus\n\n3.\nMun gode maka, ya mai yawan jinƙai,\nDon Littafi Mai Tsarki, gurasa ta rai\n\nKorus\n\n",
      title: "029-Mun Gode Maka, Ya Uba, Allahnmu",
      tune: "Revive Us again / We Praise Thee O God-Husband"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 30,
      lyric:
          "1.\n Ya ku mutanen duniya duk\nYa ku mala’iku,\nWanene za mu girmama\nYesu ne, Yesu, Yesu Ubangijinmu.\n\n2.\n Ku shaidun Yesu, shaidarsa\nKun yi da jininku\nWanene za mu girmama?\nYesu ne, Yesu, Yesu Ubangijinmu\n\n3.\n Ku masu nemansa duka,\nKu masu roƙonsa,\nWanene za mu girmama?\nYesu ne, Yesu, Yesu Ubangijinmu.\n\n4.\n Kai Bitrus, kai Istifanus,\nBulus da sauransu,\nWanene za mu girmama?\nYesu ne, Yesu, Yesu Ubangijinmu.\n\n5.\n Ku dangin duniya ko’ina,\nKu shirya yabonsa,\nMu duka yabo za mu yi\nNa Yesu, Yesu, Yesu Ubangijinmu.\n\n",
      title: "030-Ya Ku Mutanen Duniya Duk",
      tune: "All  hail the power/ Coronation /Diadem"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 31,
      lyric:
          "1.\n Zo, jama'a, yabi Allah,\nZo, mu kawo waƙarmu,\nYana wartsakad da ranmu,\nYana kawo cetonmu,\n\nKORUS\nHalleluya! Halleluya!\nHalleluya! Amin.\n\n2.\n Domin jinƙai da alheri,\nGafara da ƙauna ma,\nDomin tausayi da haƙuri,\nSai mu yi ta yabonsa.\n\nKorus\n\n3.\n Kamar uba wurin ƴaƴa,\nYana jin juyayinmu,\nYana bi da kafafunmu,\nYana cin maƙiyanmu.\n\nKorus\n\n4.\n Mala'iku, ku taimake mu\nCikin yin sujadarmu.\nMuna ganin fuska tasa,\nSai mu yi biyayya, mu.\n\nKorus\n\n5.\n Ranmu kamar furen jeji,\nDukanmu ciyawa ne,\nAllah shi madauwami ne,\nShi kuwa ba zai sake ba.\n\nKorus\n\n",
      title: "031-Zo, Jama'a, Yabi Allah,",
      tune: "Praise, my soul, the King of Heaven / Regent Square"),
  Hymns(
      author: "H. M. Wakefield",
      favorite: 0,
      id: 32,
      lyric:
          "1.\n Ya Al'ummai, ku ɗaukaka\nAllah a naku zukata.\nKu bauta wa Madauwami,\nKu yabe shi da rerawa.\n\n2.\n Ubangiji shi Allah ne,\nMahalicci sahihi kuwa.\nYa mai da mu mutanensa,\nTumakin makiyayarsa.\n\n3.\n Ku shiga cikin ƙofarsa,\nDa yabo shiga gidansa,\nKu gode domin jinƙansa,\nAlbarkaci sunansa kuwa.\n\n4.\n Ubangiji kyakkyawa ne,\nJinƙansa babu iyaka,\nAmincinsa ya tabbata\nTun zamanai, har abada.\n",
      title: "032-Ya Al'ummai, Ku Ɗaukaka  Allah A Naku Zukata",
      tune: "All people that on earth do dwell / Old 100th"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 33,
      lyric:
          "1.\n Ga Yesu Ubangijinmu.\nMai Ceton duniya.\nMutane, kome yawansu,\nSu duk, su riƙa zuwa yabon girmansa.\n\n2.\n Ku manya manya, Allah ne\nYa ba ku daraja.\nBabbanku, Yesu, yana nan,\nKu duk, ku riƙa zuwa yabon girmansa.\n\n3.\n Ku yara duk, ku neme shi\nTun yana samuwa.\nDa ƙarfi da ƙuruciya\nKu duk, ku riƙa zuwa yabon girmansa.\n\n4.\n Ku mata, ƙaƙa za ku yi?\nKu girmama Yesu.\nMai Ceto Almasihu ne,\nKu duk, ku riƙa zuwa yabon girmansa.\n\n5.\n Ku masu rashin ganewa,\nKu masu lalube,\nMai korar duhu, ga shi nan.\nKu duk, ku riƙa zuwa yabon girmansa.\n\n6.\n Ga Yesu Ubangijinmu,\nMai Ceton duniya,\nMutane, kome yawansu,\nSu duk, su riƙa zuwa yabon girmansa.\n\n",
      title: "033-Ga Yesu Ubangijinmu. Mai Ceton Duniya",
      tune: "All  hail the power/ Coronation /Diadem"),
  Hymns(
      author: "",
      favorite: 0,
      id: 34,
      lyric:
          "1.\n Ya Maɗaukaki na Allah,\nZan yi yabonka ƙwarai.\nKai, ka shafe zunubaina,\nKai, ka ba ni sabon rai,\nHalleluya, Halleluya,\nGirma duka naka ne.\n\n2.\n Mun yabe ka don alheri\nZuwa kakaninmu da.\nYau da gobe ka ke nan fa,\nƘaunarka ta tabbata.\nHalleluya, Halleluya,\nƊaukaka amincinka,\n\n3.\n Makiyayi mai tausayi,\nWanda ya san halinmu,\nDaga dukan jarabobi\nYa fisshe mu lafiya.\nHalleluya, Halleluya,\nWa ke jinƙai kamarka?\n\n4.\n Ɗaukaka ga Ubangiji,\nKai kaɗai mai adalci,\nKai ne farko, kai ne ƙarshe,\nƘauna, Iko, Gaskiya.\nHalleluya, Halleluya,\nMun yi maka sujada.\n",
      title: "034-Ya Maɗaukaki na Allah",
      tune: "Praise, my soul, the King of Heaven / Regent Square"),
  Hymns(
      author: "",
      favorite: 0,
      id: 35,
      lyric:
          "1.\n Ya Almasihu, mulkinka\nZai fi duk sauran mulkoki,\nZai tabbata har abada,\nMadauwami ne mulkinka.\n\n2.\n Ga ƙoshin rai a mulkinka,\nAlbarka kuwa a yalwace,\nGa ƙauna, murna, lafiya,\nGa ƴanci kuma cikakke.\n\n3.\n Yi yabonsa babu fasawa,\nSamari, yara, tsofaffi.\nMulkinsa yana da girma fa,\nSunansa kuwa mai tsarki ne.\n\n4.\n Albarka ga Ubangiji,\nMai mulkin dukan duniya.\nƳan Adam duk, ku neme shi\nMai jinƙai ne har abada.\n\n",
      title: "035-Ya Almasihu, Mulkinka Zai Fi Duka",
      tune: "Jesus shall reign/ Duke Street / Truro / Rimington"),
  Hymns(
      author: "",
      favorite: 0,
      id: 36,
      lyric:
          "1.\n Mu zo da murna dayawa,\nmu ta da muryarmu,\nMu rera waƙa sabuwa,\nwaƙar mala'iku.\n\n2.\n Ubangiji ya cancanci\nya karƃi yabonmu.\nGama lalle ya rinjayi\nShaiɗan makiyinmu.\n\n3.\n Ya cancanta, Mai Cetonmu,\nya karƃi albarka.\nShi ne ya mutu dominmu,\nya ka da mutuwa.\n\n4.\n Albarkaci Ubangiji,\nku talikansa duka.\nMai iko ne, mai girma shi,\nyanzu, har abada.\n\n",
      title: "036-Mu Zo da Murna Dayawa",
      tune: "Nativity"),
  Hymns(
      author: "",
      favorite: 0,
      id: 37,
      lyric:
          "1.\n Yabo ga Allahnmu, shi ne mahaliccin kome !\nYa raina, yabe shi, shi ne Mai Ceto, mai kiwo.\nZo, masu ji,\nMaza da mata ku zo,\nKu guso nan, ku yabe shi.\n\n2.\n Yabo ga Allahnmu, mai mulkin Sama da duniya!\nYa kiyaye mu ƙarƙashin fukafukan kansa.\nBa ka ji ba?\nBukatar kowa ya biya\nTa wurin ikon ƙaunarsa.\n\n3.\n Yabo ga Allahnmu, wanda ya tsare mu duka !\nKullum jinƙai da alheri su kan kiyaye mu.\nLura da kyau.\nKome Mai Iko ya iya,\nDon ƙaunarsa a gare mu.\n\n4.\n Ya raina duka, ka yabi Ubangiji Allah.\nYara da manya ku zo a gabansa da waƙa.\nBari \"Amin\"\nShi fito bakinmu duk.\nHar abada mu yabe shi.\n\n",
      title: "037-Yabo Ga Allahnmu, Shi Ne Mahaliccin Kome",
      tune:
          "Lobe den Herren /Praise to the Lord, the Almighty, the King of creation"),
  Hymns(
      author: "",
      favorite: 0,
      id: 38,
      lyric:
          "1.\n Mun gode wa Allah da dukan zuciyarmu,\nDa waƙa mai daɗi domin duk ayyukansa.\nTun muna jarirai, albarkarsa 'na nan.\nDa duk alheransa, yanzu ya dube mu.\n\n2.\n Rayayyen Allahnmu tare da mu zai zauna.\nMuddar rayukanmu, shi zai albarkace mu.\nKullum da alherai zai kiyaye mu duk.\nZai tsare ƴaƴansa daga hatsari duk.\n\n3.\n Yabo da hamdala ga Allahnmu na Sama,\nDa Ɗa Mai Cetonmu, Ruhunsa mai bishe mu. Duniya da Sama duk suna ta yabonsa\nA da, da yanzu kuwa, nan gaba abada.\n\n",
      title: "038-Mun Gode Wa Allah da Dukan Zuciyarmu",
      tune: "Nun danket / Now thank we all our God"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 39,
      lyric:
          "1.\n Duk nufina da zuciyata, ya Allah, tone su.\nAsiran rai da tunani, ka auna su yanzu.\n\n2.\n Mugun abu da tayarwa, ka taka, kashe su.\nKada ka rage abu ɗaya mai musun ƙaunarka.\n\n3.\n Inda na ƙi sarautarka a cikin raina dai,\nAmshi mabuɗi, shigo nan, ka share lolokai.\n\n4.\n Kowane hali riƙaƙƙe da mugun tunani,\nSarƙoƙin bautar Iblis ne, yau sai ka kwance su.\n\n5.\n Maƃoya duk na tussan rai inda na ƙi ka da,\nKarƃi sarautarsu yanzu, Yesu Mai Mulkina.\n\n",
      title: "039-Duk Nufina da Zuciyata, Ya Allah, Tone Su",
      tune: "Remember me/ Abbey / Bedford / Dalehurst"),
  Hymns(
      author: "",
      favorite: 0,
      id: 40,
      lyric:
          "1.\n Ya Uba na cikin Sama, ina roƙonka,\nBisa ga alkawarinka, ji addu’ata.\n\nKORUS\nYesu, Yesu, ji addu'ata,\nIna zuwa wurin Uba cikin sunanka.\n\n2.\n Uba, ga ni nan gabanka, na yi zunubi.\nIn ba za ka karƃe ni ba, wa zai taya ni?\n\nKorus\n\n3.\n Cikin ƙasar can mai nisa, na yi baƙunci,\nAmma dai yanzu na komo, sai ka karƃe ni.\n\nKorus\n\n4.\n Ni ban isa ba ka ji ni, Allah Ubana,\nAmma cikin sunan Yesu, kawo gafara.\n\nKorus\n\n5.\n Uba, ina yin godiya, kai ka karƃe ni.\nKa maishe ni bawa naka, aikinka in yi.\n\nKorus\n",
      title: "040-Ya Uba Na Cikin Sama, Ina Roƙonka",
      tune: "Pass me not, o gentle Saviour"),
  Hymns(
      author: "K. Aitkin",
      favorite: 0,
      id: 41,
      lyric:
          "1.\n Ya Ubangijinmu, muna yin addu'a\nKai kaɗai mai iko, kasa mana kunne.\n\n2.\n Ba mu isa ba fa, kasassu ne duka,\nAmma muna duban Yesu Almasihu.\n\n3.\n Cikin sunan Yesu, ga mu nan gabanka.\nDukanmu mun taru garin yin sujada.\n\n4.\n Kai kaɗai mai iko, kai kaɗai mai sani.\nTunanin zukata, bincike su duka.\n\n",
      title: "041-Ya Ubangijinmu, Muna Yin Addu'a",
      tune: "Jesus, stand among us / Caswell / Gott Ein Vater/"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 42,
      lyric:
          "1.\n Ya Yesu, ban da kai, ban iya kome ba.\nKa riƙe ni yanzu, Mai Cetona.\n\nKORUS\nYa Yesu, Yesu Kristi, sai ka taimake ni.\nYanzu na zo gare ka, Mai Cetona.\n\n2.\n  Gamshe ka, ko zan iya? Mai zunubi ne ni.\nBan isa kome ba, ya kai, Mai Tsarki.\n\nKorus\n\n3.\n Abokan gabana, Shaiɗan da zunubi,\nAi, ban da ikonka, rinjaya za su yi.\n\nKorus\n\n4.\n Na gode maka yau, ka, karƃi roƙona.\nIkon da ka ke bayar, ai, ba zai kasa ba.\n\nKorus\n",
      title: "042-Ya Yesu, Ban da Kai, Ban Iya Kome Ba",
      tune: "I need Thee every hour"),
  Hymns(
      author: "E. P. Miller",
      favorite: 0,
      id: 43,
      lyric:
          "1.\n Yi addu'a, ba fasawa,\nKullayaumin ka yi addu'a.\nDuk ka roƙa Allah ya ji.\nBa ya ta da alkawari.\n\n2.\n Yi addu'a, ba fasawa,\nBa kankanta a idonsa.\nBuɗe zuciya a gabansa,\nYi addu'a, shi ne mai ji.\n\n3.\n Yi addu'a, ba fasawa,\nKada Mugun ya yi nasara.\nYesu wanda an jarraba\nZai riƙe ka, ka yi addu'a.\n\n4.\n Yi addu’a, ba fasawa,\nKo da ƙunci ya danne ka.\nBa ya kyale wahalarka,\nZai daidaita, ka yi addu'a.\n\n5.\n Yi addu'a, ba fasawa,\nKwanciyar ranmu sai bangaskiya.\nAllah shi ne mai amsawa,\nDole kullum mu yi addu'a.\n\n",
      title: "043-Yi Addu'a, Ba Fasawa",
      tune: "Pray through /Don't Stop Praying"),
  Hymns(
      author: "H. E. Smith",
      favorite: 0,
      id: 44,
      lyric:
          "1.\n Zo, mu kawo kukanmu, Yesu yana jiranmu,\nShi da kansa ba ya ƙi, yana so ya riƙa ji.\n\n2.\n Shi ne Sarkinmu babba, mu ba za mu rasa ba.\nKome yawan roƙonmu, shi zai biya bukatarmu.\n\n3.\n Ga ni nan mai zunubi, Almasihu, sai ka ji.\nCikin ikon jininka, kau da kayan laifina.\n\n4.\n Ina neman hutawa, zo, ka shigo zuciyata.\nKarƃi mulki, kai kaɗai, babu sarkina, sai kai.\n\n5.\n Cikin duniyan nan yanzu, Yesu, kana bi da mu.\nIn mun gama aikinka, sai ka kai mu gidanka.\n\n",
      title: "044-Zo, Mu Kawo Kukanmu, Yesu Yana Jiranmu",
      tune: "Come, my soul, thy suit prepare /Take My Life and Let It Be"),
  Hymns(
      author: "H. M. Wakefield",
      favorite: 0,
      id: 45,
      lyric:
          "1.\n Ya Yesu, muna jiranka,\nDa ikonka na warkarwa.\nBa mu da ikon taimako.\nKa cika dukanmu yanzu.\n\n2.\n Ka ji mu, muna nemanka.\nBa duk a nan sun san ka ba.\nMun sani kana nemansu.\nJawo su duk, Mai ƙaunarmu.\n\n3.\n Kai ne mai sanin cutarmu,\nMai gyara mugun tunani.\nTone ƃoyayyun laifofi,\nMai Fansarmu kan giciye.\n\n4.\n Ka cire ƙarin mutuwa,\nKa kau da aikin maciji.\nA cikinmu, yi nasara\nDon mulkinka madauwami.\n\n5.\n Ka dubi masu ƙunci yau.\nRinjayi duk ƴan kangara.\nKa kwance ƙangin ɗaurarru,\nKa mai da su a hanyarka.\n\n6.\n Ya Almasihu, Ɗan Mutum,\nKa ɗauki tabi'armu da,\nAlherinka mai yawa ne,\nMai Cetonmu, Mai Gafara.\n\n7.\n Kai ne da ikon warkarwa,\nDa yau da kullum kamar da.\nKa ji mu yau, Maɗaukaki,\nWarkad da mu da hannunka.\n\n",
      title: "045-Ya Yesu, Muna Jiranka",
      tune: "At even, ere the sun was set /Angelus"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 46,
      lyric:
          "1.\n Ya Yesu, Ubangijinmu,\nWurinka muka zo yanzu.\nKai ne mai sanin cutarmu,\nKai ne mai ikon warkarwa.\n\n2.\n Zunubanmu dayawa ne,\nHar ba mai ikon ƙirgawa,\nSai kai kaɗai, Mai Cetonmu,\nYa Yesu Ubangijinmu.\n\n3.\n Ya Makiyayin Isra'ila,\nKiyaye mu da ikonka,\nDomin mu shaida ƙaunarka,\nTun daga yau har abada\n",
      title: "046-Ya Yesu, Ubangijinmu",
      tune: "Jesus shall reign /Duke Street /Truro /Rimington"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 47,
      lyric:
          "1.\n Yesu mai alheri, Ɗan Maɗaukaki,\nKristi mai tausayi, ji addu'armu.\n\n2.\n Yafe laifofinmu, kwance sarƙarmu,\nKarƃi dukan muIki cikin zuciyarmu.\n\n3.\n Cika ranmu duka, ba mu Ruhunka,\nJawo mu, Mai Ceto, zuwa mulkinka.\n\n4.\n Bi da ƙafafunmu cikin hanyarka,\nDaga duhun duniya zuwa haskenka.\n\n5.\n Nan kuwa cikin duniya, mu ke kiranka.\nDaga cikin Sama, kasa kunnenka.\n\n",
      title: "047-Yesu Mai Alheri, Ɗan Maɗaukaki",
      tune: "Tune-Christian, work for Jesus /North Coates / Eudoxia/ Merrial"),
  Hymns(
      author: "W.J. Stanley",
      favorite: 0,
      id: 48,
      lyric:
          "1.\n Kurkusa ga giciyenka, kullum dai ka ja ni.\nCeto, murna, gafara, wurin nan na samu.\n\nKORUS\nYesu ne, Yesu ne, shi ne ya fanshe ni.\nZuciyata da muryata za su ba ka girma.\n\n2.\n Da na zo da zunubi, kaya ne mai nauyi.\nTsoro, rawar jiki kuwa, Yesu ya karƃe ni.\n\nKorus\n\n3.\n Na ƙallafa raina kuwa cikin aikin Yesu,\nBa nawa adalci ba, sai adalcin Yesu.\n\nKorus\n\n4.\n Aikina nan gaba kuwa, shi ne shelar ceto,\nDomin masu zunubi, in sun zo gun Yesu.\n\nKorus\n\n5.\n Can a cikin Sama fa, yabo da sujada,\nGodiya ba fasawa, za mu yi wa Yesu.\n\nKorus\n\n",
      title: "048-Kurkusa Ga Giciyenka, Kullum Dai Ka Ja Ni",
      tune: "Jesus, keep me near the Cross"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 49,
      lyric:
          "1.\n Ubangiji Yesu, ina roƙonka,\nKai ne na ke kira, ina jiranka.\n\n2.\n Ga ni nan gabanka, bawanka na ke.\nKai ne ka fanshe ni da jininka dai.\n\n3.\n Daga halin duniya raba ni yanzu\nGaskiya da ƙauna ina nemansu.\n\n4.\n Koya mini sani, sanin nufinka.\nNi dai marar iko, ba ni ikonka.\n\n5.\n Amshi mulkin raina, karƃi zuciyata.\nBa na jin ta wani, sai maganarka.\n\n6.\n Hali irin naka ni ke so in yi.\nRuhunka Mai Tsarki, cika ni da shi.\n\n",
      title: "049-Ubangiji Yesu, Ina Roƙonka",
      tune: "Thc quiet hour/Quietude"),
  Hymns(
      author: "",
      favorite: 0,
      id: 50,
      lyric:
          "1.\n Yesu mai jinƙai, Ubangijinmu,\nMuna roƙonka, ba mu taimako.\nYa dutsen ceto, mafakarmu kuwa,\nYanzu ka ƃoye mu a cikinka.\n\n2.\n Ba kuwa abu mai raba ni da kai.\nInda ka kai ni sai in riƙa bi.\nBa zan ji tsoron kome ba daɗai,\nGama Mai Ceto yana nan lalle.\n\n3.\n  Kai ne mai jinƙai, kai mai tausayi ne,\nKai ne mai ikon ka da zunubi.\nNi marar iko ne, ban iya ba,\nSai da ka zo ka zauna wurina.\n\n4.\n Kome ƙoƙari, ni ban isa ba.\nShaiɗan ya jawo ni, shi ke da nasara.\nAmma, ya Yesu, kai mafifici,\nKa zo gare ni har ka kore shi,\n\n",
      title: "050-Yesu Mai Jinƙai, Ubangijinmu",
      tune: "Abide with me / Eventide"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 51,
      lyric:
          "1.\n Ya Allah, Ubangijina, ka ji addu'ata,\nBukatata mai yawa ce, kai ne mai bayarwa.\n\n2.\n Ka sake mini zuciya, ka wanke ni. sosai.\nKa cika ni da Ruhunka, halinka na ke so.\n\n3.\n  Ka cika ni da ladabi, duk da bangaskiya.\nKa zauna kuwa a wurina, in zama gidanka.\n\n4.\n In dinga tunawa da kai, kullum, ba fasawa.\nHar muddar rai, har abada, Yesu Masoyina.\n",
      title: "051-Ya Allah, Ubangijina,Ka Ji Addu'ata",
      tune: "O, for a heart to praise /Abridge /Richmond /Azmon/Sawley"),
  Hymns(
      author: "",
      favorite: 0,
      id: 52,
      lyric:
          "1.\n Maƃulƃula na ruwan rai, Kishi zai kashe ni,\nZubo da ruwan daɗinka domin ka rayad da ni.\n\n2.\n Raina ya zama busasshe, ƙarfi ya gaza ma,\nKa shayad da ni da ruwanka, ya Allah, Ubana.\n\n3.\n Maƃulƃula na Allahna, daga kursiyi ka zo,\nKa ƃullo cikin zuciyata, in ka yarda yanzu.\n\n4.\n Kai ne mai ikon warkarwa, kai ne mai ba da rai,\nSalama da alherinka su na ke so ƙwarai.\n\n5.\n Ka ba ni irin ruwan nan wanda zai ƃulƃula\nA cikin zuciyata sosai, rai na har abada.\n\n",
      title: "052-Maƃulƃula Na Ruwan Rai, Kishi Zai Kashe Ni",
      tune: "How bright these glorious spirits St. Anne"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 53,
      lyric:
          "1.\n Yesu Yana jin addu'a,\nYesu Ubangijinmu,\nMasu sonsa, masu binsa,\nSu ne nasa cetattu.\nYawan sonsu a wurinsa!\nSu ne tasa dukiya,\nYana zuba musu ido,\nYana ba su daraja.\n\n2.\n Yesu yana yin addu'a,\nAikin ceto nasa ne,\nMasu roƙo wurin Allah\nSai a cikin sunansa.\nShi jagora ne gare mu,\nGanin Allah sai da shi,\nYesu, shugaban sujadar\nDa mutane za su yi.\n\n3.\n Mu ma sai mu yi addu'a,\nAlmasihu yana nan.\nKalma tasa ta tabbata,\nShi zai yarda da roƙon.\nYa riga ya yi alheri,\nYa yi mana gafara.\nKyautarsa ta wadace mu\nHar iyakar duniya.\n\n4.\n Yesun nan, mai yin addu'a,\nAllah ne ya ɗaukaka.\nKada kowa fa ya raina\nWanda shi ya girmama.\nWata rana in ya komo,\nGani kuwa zai kori ji,\nTuba dai, ka karƃi ceto\nTun da sauran zarafi.\n\n",
      title: "053-Yesu Yana Jin Addu'a,",
      tune: "What a friend /Converse/ Blaenwern"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 54,
      lyric:
          "1.\nTun da farkon hasken safe,\nKo ka yi addu'a\nCikin sunan Yesu Kristi,\nKa yi roƙo har ka sami\nTaimakonka yau?\n\nKORUS\nYin addu'a dai zai ba mu\nAlbarka ba iyaka.\nSai ka riƙa yin addu'a\nKowace sa'a.\n\n2.\n Lokacin zuwan jaraba,\nKo ka yi addu'a\nDon ka sami ikon Allah,\nRuhunsa ya taimake ka\nHar da nasara?\n\nKorus\n\n3.\n Lokacin da ka ke fushi\nKo ka yi addu'a\nKada Shaiɗan ya rinjaya\nHar ya sa ka yin tuntuƃe\nCikin fushinka?\n\nKorus\n\n4.\n Cikin tsanani da ba'a\nKo ka yi addu'a,\nKo ka jure, kana roƙo\nHar ka sami hutun ranka\nCikin Almasihu?\n\nKorus\n\n",
      title: "054-Tun da Farkon Hasken Safe",
      tune: "Did you think to pray? / Ere you left your room this morning"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 55,
      lyric:
          "1.\n Ya Uba na cikin Sama,\nSunanka mai tsarki ne,\nMulkinka shi zo, ya AlIah,\nYadda ka ke marmari.\n\n2.\n Duk abin da ka ke nufi\nSai mu aikata a nan,\nKamar yadda a ke yinsa\nCikin gidanka a can.\n\n3.\n Ba mu yau abincin yini,\nBisa ga alherinka.\nAlhini ba za mu yi ba,\nSai mu yi bangaskiya.\n\n4.\n Gafarta kurakuranmu,\nNa junanmu za mu yi.\nDaga jaraba da mugu,\nTsare mu, Mai Cetonmu.\n\n5.\n Girma, iko, duk da mulki\nNaka ne har abada.\nCikin sunan Almasihu\nMuna roƙonka. Amin.\n\n",
      title: "055-Ya Uba Na Cikin Sama,",
      tune: "Jesus, tender Shepherd, hear us /Evening Prayer /Brocklesbury"),
  Hymns(
      author: "",
      favorite: 0,
      id: 56,
      lyric:
          "1.\n Ya Ubanmu na cikin Sama,\nDubi abokanmu,\nSa musu duka albarkarka,\nKa daɗa murnarsu.\n\n2.\n Ka yafe musu laifofinsu,\nBa su salamarka,\nCece su daga wahalarsu,\nTa wurin ikonka.\n\n3.\n Ka gyara musu tunaninsu,\nKa tsare harshensu,\nTsabtad da dukan zukatansu,\nCika ruhohinsu.\n\n4.\n Daga makidai na Iblis,\nDaga duk ruɗewa,\nBisa kowane kumamanci,\nKa ba su nasara.\n\n5.\n Kuma bari su gaskata fa\nA hannunka su ke.\nBishe su kullum da ƙaunarka,\nGama su naka ne.\n",
      title: "056-Ya Ubanmu Na Cikin Sama",
      tune: "Llanthony"),
  Hymns(
      author: "",
      favorite: 0,
      id: 57,
      lyric:
          "1.\n Ya Allahnmu Madauwami,\nKai ne ka halicci teku,\nDa koguna da taffukan\nDa su ke cikin duniya.\nKa ji mu don ƴanuwanmu,\nDa jinƙanka ka dube su.\n\n2.\n Ka tsare su da ikonka.\nIdan hadari ya taso,\nKo iska ce mai fyaucewa\nTa girgiza jiragensu.\nKa ji mu, muna roƙonka,\nSu kai kwata ma lafiya.\n\n3.\n Mun tuna yadda Almasihu,\nYa shiga cikin jirgi da.\nYa tsauta wa raƙuman ruwa,\nSun kwanta, sun natsu sosai.\nKa ji yanzu, ya Almasihu,\nKa tsare ƴanuwanmu yau.\n\n4.\n Ka tsame su da ikonka\nDaga masifu masu yawa,\nSu dogara gare ka kuwa,\nSu sansance amincinka.\nDukanmu za mu yabe ka,\nYa Allahnmu mai ta'aziyya.\n",
      title: "057-Ya Allahnmu Madauwami",
      tune: "Melita/Eternal Father, strong to save"),
  Hymns(
      author: "",
      favorite: 0,
      id: 58,
      lyric:
          "1.\n Yanzu, ya Uba, muna tunawa\nDa ƙaunarka mai kawo fansarmu.\nSabili da jinƙanka mai yawa,\nMun zo ta wurin Matsakancinmu,\nWanda ya ba da kansa dominmu\nDomin ya fanshi dukan zukata.\n\n2.\n Ya Uba, duba fuskar Almasihu,\nKa sa a iske mu a cikinsa .\nKada ka duba kasawarmu dai,\nMu masu ƙanƙantar bangaskiya.\nGama shaidar cetonmu mu ke yi\nDaga laifofinmu da hakkinsu.\n\n3.\n Ka ji addu'armu da za mu yi\nSabili da masoya, ƴanuwa,\nKa kare su dai daga hatsari,\nKa kiyaye su cikin lafiya\nKa ba su nasara a duniya,\nSu zama naka fa har abada.\n\n4.\n Mu ma mun zo mu amsa kiranka,\nYa Yesu mai ƙauna ba iyaka.\nTa wurin jinƙanka da jininka,\nKa cece mu duk daga mugunta.\nKa karƃe mu mu zama bayinka,\nKa sa mu zauna kullum cikinka.\n",
      title: "058-Yanzu, Ya Uba, Muna Tunawa",
      tune: "Unde et Mernores"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 59,
      lyric:
          "1.\n Mun gode maka, Allahnmu,\nDomin maganar gaskiyarka,\nUmarninta ne haskenmu,\nKoyarwarta fitila ce.\n\n2.\n Maganarka mai tsarki ce,\nMun kafa bege cikinta,\nMaganarka duk gaskiya ce,\nBari ta zauna a zuciyata.\n\n3.\n Maganarka ce takobi,\nTakobi kuwa na Ruhunka,\nKa sa ta soki zuciyarmu,\nTa tsautar, har ma ta kwaƃe mu.\n\n4.\n Ya Allah, buɗe zuciyarmu,\nHaskaka kuma duhunmu,\nKa buɗe kuwa fahiminmu,\nKa koya mana, Allahnmu.\n",
      title: "059-Mun Gode Maka, Allahnmu",
      tune: "Lord, speak to me that I may speak/Canonbury"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 60,
      lyric:
          "1.\n Maganar Allahnmu fitila ce,\nTa ba da haskenta bisa hanyarmu.\nTa nuna hanyarmu da za mu bi sosai.\nTa nuna mugunta, mu yi gudunta.\n\n2.\n  Maganar Allahnmu wuta ce fa.\nTana ƙone mugunta, da ƙazanta duk.\nI, ta kan tsarkake zuciyar Masu Bi,\nHaske ya shiga kuwa da murna sosai.\n\n3.\n Maganar Allahnmu takobi ne,\nAllah ya ba mu shi, mu sari maƙiyi.\nShaiɗan zai ji tsoron mai riƙon takobin.\nMun iya kwaƃe shi da maganan nan.\n\n4.\n Ya ku ƴanuwana, mu yi aniya,\nTsarkake zuciya da maganarsa.\nDomin mu ƙarfafa, kullum mu karanta\nLittafi Mai Tsarki, ƙyautar Allahnmu\n\n",
      title: "060-Maganar Allahnmu Fitila Ce",
      tune: "Nearer, my God, to Thee/ Bethany"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 61,
      lyric:
          "1.\n Ga littafi a hannunka, Littafi Mai Tsarki ne.\nYa fito wurin Allahnmu zuwa ga mutane.\n\nKORUS\nZancen rai da ceto, zance na gidan gobe.\nMu karanta shi, mu bincike shi,\nLittafi Mai Tsarki ne.\n\n2.\n Sai mu duba littafin nan, mu bincike shi duka.\nDon maganarsa gaskiya ce daga wurin Allah.\n\nKorus\n\n3.\n Sai mu haddace ayoyi, mu ƃoye su a zuciya\nDon su hana mu zunubi, su gyarta halinmu.\n\nKorus\n\n",
      title: "061-Ga Littafi A Hannunka, Littafi Mai Tsarki Ne",
      tune: "Wonderful words of life /Sing Them Over Again"),
  Hymns(
      author: "",
      favorite: 0,
      id: 62,
      lyric:
          "1.\n Ya Ubangijinmu, Kalmarka ta dauwama\nWajib ne a gaskata, a kuma karƃe ta.\n\n2.\n Idan maƙiyanmu suna tsananta mana,\nMaganar cetonka ita ce ƙarfinmu.\n\n3.\n In wahala ta zo, ko masifa ta taso,\nHaskenka zai bishe mu, za ya kiyaye mu.\n\n4.\n Wa ya san misalin murna mafificiya\nTa miƙa bishararka zuwa mutanenka.\n\n5.\n Jinƙanka ke ba da taimako ga masu rai,\nMaganarka ta'aziyya ga wanda ke mutuwa.\n\n6.\n Mu da muka gane tsarkin wannan Kalma,\nSai mu ƙaunace ka, don kullum mu bi ka.\n",
      title: "062-Ya Ubangijinmu, Kalmarka Ta Dauwama",
      tune: "Ravenshaw"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 63,
      lyric:
          "1.\n Can wani tudu bayan gari, ka yanka sadaka,\nKa ba da rai mai tsarki mai kawo gafara.\n\n2.\n Ran Yesu ne Allah ya sa ya fanshi namu rai.\nMai isa shafe laifinmu da jininsa kaɗai.\n\n3.\n Mun kasa biyan bashinmu, nan duniya ba mai biya.\nMai buɗe ƙofar rai, sai shi, Mai Ceto, Mai Shari'a.\n\n4.\n Ba za mu iya kwatanta iyakar ƙauna ba.\nAlhakinmu mai girma dai, ya karye zuciyarsa.\n\n5.\n Ai, za mu naɗa Sarkin nan, mu shiga bautarsa.\nHar zuwa iyakar duniya mu kafa mulkinsa\n",
      title: "063-Can Wani Tudu Bayan Gari, Ka Yanka Sadaka",
      tune: "There is a green hill /Stebbins /Horsley"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 64,
      lyric:
          "1.\n A cikin daren nan da aka ba da shi,\nYa sanya jibin nan na tunawa da shi.\n\n2.\n \"Gurasan nan,\" ya ce, \"Jikina ne, ku ci,\nƘoƙon jinina ne, jinin alkawari.\"\n\n3.\n \"Mai cin abincin nan, mai shan ƙoƙon nan kuwa,\nShelata ya ke yi, shelata mutuwata.\"\n\n4.\n \"In ka ci namana, in ka sha jinina,\nBa za ka ji yunwa ko ƙishi ba daɗai.\"\n\n5.\n Ya Ubangijinmu, ƙosad da ranmu yau.\nKullum ka ciyad da mu har ranar zuwanka.\n\n",
      title: "064-A Cikin Daren Nan da Aka Ba da Shi",
      tune: "I Hunger and I Thirst / Dolomite Chant / Quam dilects"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 65,
      lyric:
          "1.\n Don jibin nan, Mai Fansarmu,\nGurasarka da ƙoƙonka,\nƘaunarka da alherinka,\nMun gode maka, Yesunmu.\n\n2.\n  Kai ne ka ɗauke laifinmu,\nKa wanke mu da jininka,\nKai ne ka zama gurbinmu,\nMun gode maka, Yesunmu.\n\n3.\n Domin ka ɗauki giciyenka,\nKa kuma raina kunyarsa\nDomin ka ba da jininka,\nMun gode maka, Yesunmu.\n\n4.\n Domin ka aiko Ruhunka,\nShi koya mana nufinka,\nShi buɗe mana kalmarka,\nMun gode maka, Yesunmu.\n\n5.\n Domin alkawarinka fa\nNa shirin zaman masu bi\nHar za ka zo ka karƃe mu,\nMun gode maka, Yesunmu.\n\n",
      title: "065-Don Jibin Nan, Mai Fansarmu",
      tune: "Duke Street"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 66,
      lyric:
          "1.\n  Gurasar rai, ciyad da ranmu yau,\nYunwa ta ja mu zuwa gidanka.\nDa dukan zuciya mu ke nemanka,\nAlbarkaci Maganarka yanzu.\n\n2.\n  Rijiyar rai, ƙishi ne mu ke ji.\nKogunan duniya duka muka ƙi.\nRijiyar rai, ƙosad da dukanmu\nKoguna masu rai dai mu ke so.\n\n3.\n Maganar rai, kai hasken duniya ne,\nKai mu ke bi, kai kuwa Shugaba ne,\nKa ji addu'o'inmu duka yau,\nKa bi da mu, ya Yesu, har ka zo.\n\n",
      title: "066-Gurasar Rai, Ciyad da Ranmu Yau",
      tune: "Here, O my Lord, I see / St. Agnes-Langran / St. Agnes-Dykes"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 67,
      lyric:
          "1.\n Mai Cetonmu, kan giciyenka,\nKa shaida mana ƙaunarka,\nRaɗaɗinka cetonmu ne,\nJininka kuma ranmu ne.\n\n2.\n Mu naka ne, Mai Fansarmu,\nDa jininka ka cece mu,\nKa kwance mu da ikonka,\nHar ka maishe mu ƴaƴanka.\n\n3.\n Mu naka ne, Shugabanmu,\nJikinmu, ranmu, ruhunmu,\nAn saye mu da jininka,\nDomin mu aika nufinka.\n\n4.\n Gurasar rai, ciyad da mu,\nRijiyar rai, shayad da mu,\nKa ba mu ruhun yardar rai,\nKa tsarkake mu fa sosai.\n\n",
      title: "067-Mai Cetonmu, Kan Giciyenka",
      tune: "When I survey the wondrous cross/ Rockingham / Hamburg"),
  Hymns(
      author: "C. Sanderson",
      favorite: 0,
      id: 68,
      lyric:
          "1.\n Ya Ubangiji Yesu, mun taru wurinka, Tunanin mutuwarka sun cika zukata.\nMun ji muryarka Yesu, \"Gurasan nan ku ci,\nRaina ne da na bayar don tunawa da ni.\"\n\n2.\n Ta wurin ikon Allah, kai farin haihuwa ne,\nMu kuma za mu tashi mu zauna wuri ɗaya. Alkawarinka Yesu, ƙoƙon da muka sha,\nJininka ne ya sayi rai na har abada.\n\n3.\n Ƙaunarka, Mai Cetonmu, ta wuce saninmu,\nTunanin raɗaɗin da ka sha dai dominmu.\nYanzu kuwa cikin Sama addu'a ka ke yi.\nKa riƙe mu, ya Yesu, mu ƴan Ekklesiyarka. Amin\n",
      title: "068-Ya Ubangiji Yesu, Mun Taru Wurinka",
      tune: "The Church's one foundation/ Aurelia"),
  Hymns(
      author: "J. A. MacKinnon",
      favorite: 0,
      id: 69,
      lyric:
          "1.\n Yesu, maganar rai, lura da ni.\nNan cikin duniya ga zunubi.\nShaiɗan da wayonsa ya ruɗe ni,\nZo nan da ikonka, ka cece ni.\n\n2.\n Yesu, mai fansar rai, ka wanke ni\nDa jinin sadaka mai tsarki.\nTun da ka ba da rai saboda ni,\nJawo ni wurinka, ka riƙe ni.\n\n3.\n Yesu,  gurasar rai, ba ni in ci\nYadda ka bayar da a Galili.\nBa ni da kome nan sai kai kaɗai,\nKullum ka cishe ni da jibin rai.\n\n4.\n Yesu, mai ba da rai, tuna da ni.\nAlherin halinka ya gamshc ni.\nZubo da Ruhunka, tsabtad da ni,\nHar zan yi nasara da zunubi.\n\n",
      title: "069-Yesu, Maganar Rai, Lura da Ni",
      tune: "Break Thou the bread/ Sherwin/ All Souls"),
  Hymns(
      author: "E.A. Clark",
      favorite: 0,
      id: 70,
      lyric:
          "Mai bayarwa ne Allahnmu,\nYabe shi, ku ƴan Adam duk.\nYabe shi, ku mala'iku,\nUba da Ɗa da Ruhu, ɗaya.\n\n\n",
      title: "070-Mai Bayarwa Ne Allahnmu",
      tune: "All people that on earth do dwell /Old 100th"),
  Hymns(
      author: "",
      favorite: 0,
      id: 71,
      lyric:
          "Ya Allahnmu, ka karƃi baikonmu,\nMun ɗebi kima daga yalwarka.\nMuna roƙonka, daga baiwan nan\nMa'aikata su sami taimako.\n\n\n",
      title: "071-Ya Allahnmu, Ka Karƃi Baikonmu",
      tune: "O, for a heart to praise /Abridge /Richmond /Azmon/Sawley"),
  Hymns(
      author: "A. M. Locke",
      favorite: 0,
      id: 72,
      lyric:
          "1.\n Yesu Ɗan Allah, yau ka zo!\nMu fa me za mu yi?\nMala'iku na sama, ku taimake mu waƙa.\nYanzu da asubahi, yanzu da asubahi.\nAlhamdu ga Allah har abada!\n\n2.\n Ya Almasihu, yau ka zo!\nMu fa me za mu yi?\nMu durƙusa gabanka, mu yi maka sujada,\nMu girmama sunanka, mu girmama sunanka.\nAlhamdu ga Allah har abada!\n\n3.\n Yesu jariri, Mai Ceto,\nMu ƴaƴanka mun zo,\nMu ƙanƙananan yara mun kawo maka ranmu\nMu sa maka albarka, mu sa maka albarka.\nAlhamdu ga Allah har abada!\n\n4.\n Baitalahmi ne zuciyata,\nYa Yesu, yau ka zo!\nYa Ruhu, ina roƙo, ka kawo shi a wurina\nYa zauna har abada, ya zauna har abada.\nAlhamdu ga Allah har abada!\n\n\n",
      title: "072-Yesu Ɗan Allah, Yau Ka Zo",
      tune: "Joy to the world/ Antioch"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 73,
      lyric:
          "1.\n Jama’ar Ɗan Allah, ku taru ku yi murna,\nKu taru, ku taru a Baitalahmi.\nZo mu gaishe shi, Sarkin mala’iku\n\nKORUS\nMu yi masa sujada, mu yi masa sujada,\nMu yi masa sujada, Mai Cetonmu\n\n2.\n Zo dai ku gan shi, jariri marar ƙarfi,\nYesu Ɗan Allah ne Madauwami.\nAka haife shi, ba a halicce shi ba.\n\nKorus\n\n3.\n Rundunan Sama, yi ta rera waƙa,\nCan cikin Sama ku ke yabonsa,\nYabo ga Allah, yabo kuwa ga Ɗansa\n\nKorus\n\n4.\n I, Ubangiji, kai ne mu ke yabo\nGaisuwa mai gaskiya mu ke yi maka.\nKai, Kalmar Allah, cike da alheri\n\nKorus\n\n",
      title: "073-Jama’ar Ɗan Allah, Ku Taru",
      tune: "O Come, All Ye Faithful / Adeste Fideles"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 74,
      lyric:
          "1.\n Mu zo duk mutane, amintattu na Allah,\nYau cikin Baitalahmi, Mai Ceto ya zo.\nTauraron gabas, tauraron asubahi,\nMu kawo masa yabo, mu kawo masa ƙauna.\nMu shaida nasa suna, Immanuel.\n\n2.\n Ga shi, marar iko, da jiki na ƙanƙanci!\nDuba! ya ɗauki dukan tabi'armu!\nHasken mutane! Hasken dukan duniya!\nMu zo da kayan ƙanshi, mu zo mu rera waƙa,\nMu zo, mu yabi Yesu Immanuel.\n\n3.\n Alhamdu ga Yesu ! Ya Yesu, mun gaishe ka!\nMuna sujadarmu gare ka a yau.\nKalmatu 'Llahi! Bayyanuwar Mai Iko!\nMu ɗaukaka sunanka, mu yi maka sujada\nMu ba ka duk sarauta, Immanuel.\n\n",
      title: "074-Mu Zo Duk Mutane, Amintattu na Allah",
      tune: "O come, all ye faithful / Adeste Fideles"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 75,
      lyric:
          "1.\n Mu zo mu gai da Almasihu, Yesu Mai Cetonmu.\nAn daɗe ana jiransa, ya ziyarto mu yanzu.\n\n2.\n Ya zo da kalmar fansarmu, ya zo da gafara\nKu ɗaurarru da zunubi, ku rera sunansa.\n\n\n3.\n Ya fito gidan Ubansa, ya zo da warkarwa.\nKu masu ciwon zuciya, ku sheka wurinsa.\n\n4.\n Ba za mu daina yabo ba, ya Ɗan Mauɗaukaki,\nSai duniya duk da cikarta ta ji Iabarinka.\n\n\n",
      title: "075-Mu Zo Mu Gai da Almasihu, Yesu Mai Cetonmu",
      tune: "While shepherds watched-Christmas/ Winchester Old"),
  Hymns(
      author: "E. P. Miller",
      favorite: 0,
      id: 76,
      lyric:
          "1.\n Tashi, mu gai da Ubangijinmu.\nYau aka haife shi da safen nan.\nMai Ceton duniya, Ubangiji ne.\nYa zo ya ɗauki siffar ɗan Adam.\nTashi, mu ji waƙar mala'iku,\nƘaunar Ubangiji ne zancensu.\n\n2.\n Yabo ga Allahnmu Maɗaukaki,\nIn ji su taron rundunan Sama.\nAn kawo muku yau da daren nan,\nBisharar murna zuwa duniya duk.\nA birnin Dawuda aka haife shi,\nMai Ceto, shi ne Almasihunku.\n\n3.\n Da jin labari, makiyayan nan\nSai suka tashi za su wurinsa.\nA Baitalahmi, ga jaririn nan\nA kwance dai cikin sakarkari.\nSun tashi kuwa, sun ba da shaidarsu\nManzannin farko ne na Ɗan Mutum.\n\n4.\n Mu kuwa da halin ladabi mu ji\nLabarin haihuwarsa ta ƙanƙanci.\nTuna da haifuwarsa da giciyen,\nBi sawun Yesunmu da hawaye.\nWannan jariri shi ne Ɗan Allah,\nYa kau da dukan hakkin zunubi.\n\n5.\n Cetattu fa ta wurin ƙaunarsa,\nA gaban kursiyi za mu rusuna.\nZa mu ga iyakar darajarsa,\nZa ya bayyana mana ikonsa.\nAn haife shi ta wurin budurwa,\nGare shi za mu yi godiya tutur.\n\n",
      title: "076-Tashi, Mu Gai da Ubangijinmu",
      tune: "Christians, awake /Yorkshire"),
  Hymns(
      author: "E.M. Overy",
      favorite: 0,
      id: 77,
      lyric:
          "1.\n Yara, mu tashi da murna mai yawa,\nZo, za mu gai da Mai Cetonmu yau,\nGa shi a kwance, jariri ƙanƙane,\nTare da shanu a Baitalahmi can.\n\n2.\n Taron mala'iku, ga su a Sama,\nWaƙa mai daɗi kuwa su ke ta yi,\n\"Yaba ga Allah, a duniya salama.\"\nZance mai faranta zuciya ne.\n\n3.\n Hasken tauraron nan ne suka gani,\nShehunan gabas sun tashi, sun zo.\nKayan zinariya ne suka kawo,\nDuk suka zuba gabansa kyauta.\n\n4.\n Yesu mai sonmu, mu ƴaƴanka kuma,\nGa mu, mun taru da gaisuwarmu.\nLubban ka murru ba su ne muka kawo ba,\nKayan zinariya ba mu da su.\n\n5.\n Mu dai, ga kayan da mu za mu kawo,\nƘarfinmu, ƙaunarmu, zuciya da rai,\nDuk mu ke ba ka, jariri, Mai Ceto,\nKai ne masoyinmu har abada.\n\n",
      title: "077-Yara, Mu Tashi da Murna Mai Yawa",
      tune: "Brightest and best/ Epiphany"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 78,
      lyric:
          "1.\n Yau an haifi Almasihu, Ɗan Maɗaukaki ya zo,\nYau Immanuel ya samu zamansa a wurinmu.\nAllah ne ya isa duniya, Kalma tasa nan ya sauko,\nCikin jiki rufaffe, amma Ubangiji ne,\nCikin jiki rufaffe, amma Ubangiji ne.\n\n2.\n Budurwa ta haifi Ɗanta, shi ne Ɗan Mai Tsarki.\nJibra'ilu ne ya shaida sunansa Mai Ceto ne.\nƊan Adam ne aka haifa, muna yi masa sujada.\nGirma fa da ɗaukaka, nasa ne har abada\nGirma fa da ɗaukaka, nasa ne har abada.\n\n3.\n Haihuwarsa al'ajibi ce, ƙauna ba ta aunuwa,\nHar ya ajiye duk sarauta, har ya shiga mutuwa.\nZo, mu gai da Almasihu, mu da Allah muka sadu.\nYesu haihuwar budurwa, Allah ne mai girma,\nYesu haihuwar budurwa, Allah ne mai girma.\n",
      title: "078-Yau An Haifi Almasihu, Ɗan Maɗaukaki Ya Zo",
      tune: "Hark, the HeraId Angels Sing/ Mendelssohn"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 79,
      lyric:
          "1.\n Ya ƙanƙanuwar Baitalahmi, can ƙasar Yahuda,\nBa auta ba ce ko kaɗan cikin Yahudiya,\nGama daga cikinki, Mai Ceto zai fito.\nTauraronsa a bisanki, shi kansa cikinki.\n\n2.\n Hanyoyinki dā duhu ne, yanzu ga haskensu.\nDā, mutane sun raina ki, yanzu ga daraja.\nJi waƙoƙin mala’iku, yabo ga Allahnmu\nA cikin mafi ɗaukaka, a duniya salama.\n\n3.\n Shehunan gabas fa sun zo, sun kawo dukiya.\nGaisuwa, girma, daraja, ga yaron aka bayar.\nGa Yesu Mai Cetonmu a cikin Baitalahmi,\nBa waninsa a duniya, Maɗaukaki ne shi.\n\n",
      title: "079-Ya Ƙanƙanuwar Baitalahmi, Can Ƙasar Yahuda",
      tune: "O Little Town of Bethlehem/St. Louis"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 80,
      lyric:
          "1.\n Dā, mala’iku ke shaidar\nHaihuwar Yesu Mai Ceto.\nJi labarin farinciki\nWanda shi ke dominku.\n\nKORUS\nZo, ku yi masa sujada\nShi Sarkin Sarakuna.\n\n2.\n Makiyaya suna tsaron\nGarkensu da daren nan.\nHaske ne ya kewaye su,\nAka shaida musu ma.\n\nKorus\n\n3.\n Masu hikima na duniya\nBar zurfin tunaninku.\nNemi ceto wurin Yesu,\nKuna jin labarinsa.\n\nKorus\n\n4.\n Sarakuna, talakawa\nMalamai, almajirai\nMazaje da mata duka,\nTsofaffi da jarirai.\n\nKorus\n\n",
      title: "080-Dā, Mala’iku Ke Shaida",
      tune: "Angels from the Realms of Glory /Regent Square"),
  Hymns(
      author: "",
      favorite: 0,
      id: 81,
      lyric:
          "1.\n Ku ji muryar annabci kuwa, da Allah ya faɗa.\nIshaya ne ya ambata abin al’ajabi.\n\n2.\n Ga shi an haifi yaro dai, mu aka bai wa Ɗa.\nSunansa. kuwa Al’ajabi, kuma Mai Shawara.\n\n3.\n Allah mai iko duka kuwa, Madauwamin Uba,\nSarkin Salama, mulkinsa ba shi da iyaka.\n\n4.\n A bisa kursiyin Dawuda, da bisa mulkinsa,\nZai kafa shi kan shari’a da kuma gaskiya.\n\n5.\n Wannan, Allah mai runduna da himmarsa zai yi.\nMaganarsa zai cika ta, alkawari ya yi.\n\n6.\n Yau cikin birnin Dawuda fa aka haifi Yesu.\nMu tafi can sakarkari, sujada za mu yi.\n\n",
      title: "081-Ku Ji Muryar Annabci Kuwa, da Allah Ya Faɗa",
      tune: "Brother James' Air /The Lord's My Shepherd/ St. Columba"),
  Hymns(
      author: "",
      favorite: 0,
      id: 82,
      lyric:
          "1.\n Yesu Rasul, mai alheri,\nƊan Maryamu, mai nasiha,\nHaifuwarka ta ƙanƙanci,\nBa mu ruhun jurewa.\n\n2.\n Ko a can sakarkarinka,\nKa zo ceton mutanenka\nCikin duniya ta baƙunci,\nKarƃi mulkin zuciyarmu.\n\n3.\n Kai mai fansar mutanenka,\nMai yin nasara da mutuwa,\nBar mu zauna kullayaumin\nKurkusa da kursiyinka.\n\n4.\n Kai mai ɗaukar wahalarmu\nKa san dukan tunaninmu,\nBar mu sa ido gare ka\nDon mu sami gaskiyarka.\n\n5.\n Bishe mu, ya Ubangiji,\nKau da dukan mugun nufi,\nKarƃi ranmu, mun roƙe ka,\nDon mu aika nufinka.\n\n",
      title: "082-Yesu Rasul, Mai Alheri",
      tune: "Quem Pastores / Hereford New-Blessed be God, our God"),
  Hymns(
      author: "",
      favorite: 0,
      id: 83,
      lyric:
          "1.\n Makiyaya da daddare sun tsare garkensu\nMala'ikan Allah ya zo, ya haskaka su fa.\n\n2.\n \"Kada ku ji tsoro,\" ya ce, gama sun firgita,\n\"Labarin murna ne na kawo ga dukan duniya\".\n\n3.\n \"An haifi Almasihu yau, a birnin Dawuda fa,\nMai Ceto, Ubangiji ne, alamarsa ke nan\".\n\n4.\n \"Jariri za ku iske ma da siffar mutane\nA nannaɗe da tsummoki cikin sakarkari.\"\n\n5.\n Da gama faɗin saƙon nan, taron haske ya zo,\nMala'iku 'na rerawa, suna ta yin yabo.\n\n6.\n \"Ɗaukaka duk ga Allahnmu, salama ga duniya,\nAminci ga mutane duk, yanzu da koyaushe.\"\n\n",
      title: "083-Makiyaya da Daddare Sun Tsare Garkensu",
      tune: "While shepherds watched-Christmas/ Winchester Old"),
  Hymns(
      author: "",
      favorite: 0,
      id: 84,
      lyric:
          "1.\n Ga labarin daren nan,\nƘasar can\nAka haifa mana Ɗa.\nSai mu yi ta murna, murna,\nSai mu yi ta murna, murna,\nAka haifa mana Ɗa,\nCikin ƙasar gabas can.\n\n2.\n Shi ne kyautar Allahnmu,\nDominmu,\nJariri Mai Cetonmu.\nLalle muna murna, murna\nLalle muna murna, murna.\nJariri Mai Cetonmu,\nKyautar Allah dominmu.\n\n",
      title: "084-Ga Labarin Daren Nan",
      tune: "Rocking"),
  Hymns(
      author: "E. P. Miller",
      favorite: 0,
      id: 85,
      lyric:
          "1.\n Raina na ba da shi, na ba da jinina,\nJin daɗi duk na ƙi saboda ƙaunarka.\nRaina na ba da shi, in ji Ubangiji,\n\n2.\n Gidan Ubana can, gida mai daraja,\nNa fito don in zo in zama talaka.\nNa ba ka dukiyata, in ji Masoyinka.\n\n3.\n Baƙunci mai wuya na haƙura da shi.\nKewa da ƙishiruwa, yunwa, gajiya, na ji.\nDuk dominka na sha, in ji Mai Cetonka.\n\n4.\n Ba za ka gane ba wahalar da na sha\nDomin in ba ka rai, rai na har abada.\nDa yardar rai na yi, in ji Maɗaukaki.\n\n5.\n An fanshi naka rai da tamani mai yawa.\nNan gaba za ka kai wasu gun giciye.\nKai ne da nemansu, in ji Mai Cetonku.\n\n",
      title: "085-Raina Na Ba da Shi, Na Ba da Jinina",
      tune: "Thy life for me/ Baca"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 86,
      lyric:
          "1.\n Yesu ya bar Samaniya,\nYesu ya shigo duniya,\nYesu ya ji tausayina,\nMai Cetona!\n\n2.\n Yesu ya ɗauke laifina,\nYesu ya sha wahalata,\nYesu ya mutu domina,\nMai Cetona!\n\n3.\n Allah bai ƙyale Ɗansa ba,\nAllah ya ta da baransa,\nKuma ya kai shi gidansa,\nMai Cetona!\n\n4.\n Yesu ya ba ni cetonsa,\nKada in ƙara zunubi.\nNan gaba sai in riƙa bin\nMai Cetona!\n\n5.\n Yesu, da ni da shi, an ce\nAllah ya haɗa mu sosai,\nShi ne ya kauda tsorona,\nMai Cetona!\n\n6.\n Yesu zai komo duniya,\nAikinsa duk zai ƙarasa.\nNa sa zuciya ga ganinsa,\nMai Cetona!\n",
      title: "086-Yesu Ya Bar Samaniya",
      tune: "Memorium/Loved, then the way will not be drear/"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 87,
      lyric:
          "1.\n Ku masu Ƙaunar Yesu fa, jama'ar Masu Bi,\nKu kasance da halin da ya zauna cikinsa.\n\n2.\n Ko cikin surar Allah, shi, girmansu ɗaya ne,\nYa ƙanƙantad da kansa, har ya zama bawa, shi\n\n3.\n Ya zama gurbinmu a nan, ya yi biyayya, shi,\nBiyayya har ga mutuwa, mutuwar giciye.\n\n4.\n I, domin wannan Allah kuwa ya ƙara girmansa,\nYa ba shi suna mafi kyau a bisa kowanne.\n\n5.\n I, domin girman sunan nan, sunansa mafi kyau,\nGwiwoyin dukan masu rai duk za su rusuna.\n\n6.\n Kowane harshe cikinsu zai yi shaidar Yesu,\nCewa shi Ubangiji ne don girman Allahnmu.\n",
      title: "087-Ku Masu Ƙaunar Yesu Fa, Jama'ar Masu Bi",
      tune: "How sweet the name of Jesus sounds/ St. Peter"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 88,
      lyric:
          "1.\n Ubangiji, muna gaisuwa,\nMun gaishe ka, Sarkinmu,\nKai mai shan wahala tamu,\nKai mai cika cetonmu,\nKai, bayanin ƙaunar Uba,\nYesu, Dan Maɗaukaki,\nNaka suna mu ke kira,\nYesu Ubangijinmu.\n\n2.\n Kai ka kau da zunubanmu,\nRauninka dominmu ne,\nMutuwarka ta sayi ranmu,\nKai ne Mai Cetonmu dai.\nCan dominmu ka ke roƙo,\nKana shirin gidanmu,\nKana jiranmu da ƙauna,\nYesu Ubangijinmu.\n\n3.\n Kome girman sunan kowa,\nBa zai kai ga naka ba.\nKome yawan daɗin duniya\nBa ya kai ga daɗinka.\nBaki ba ya iya faɗi,\nKunne ba ya iya ji,\nKo misalin naka daɗi,\nYesu Ubangijinmu.\n\n4.\n Tara manyan duniya duka,\nDuk da yawan girmansu,\nHar mala'iku na Sama,\nBa su kai ka girma ba.\nKo har abada bayinka\nMuna yi ta yabonka,\nDukan yabo sai ya kasa,\nYesu Ubangijinmu\n",
      title: "088-Ubangiji, Muna Gaisuwa",
      tune: "Glorious things of thee are spoken/Austria/ Nettleton"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 89,
      lyric:
          "1.\n Almasihu, hasken duniya,\nBegen dukan masu rai,\nYesu Rasul, Kalmar Allah,\nTun fiI azal kai kaɗai.\n[Kai kaɗai madauwami ne,\nKai kaɗai maɗaukaki.] 2x\n\n2.\n Kai ka ajiye rigar mulki,\nKa bar duk don cetonmu.\nZafin mutuwa ba ka ƙi ba,\nDuk ka sha don ƙaunarmu.\n[Karƃi yabo, karƃi mulki,\nNaka ne har abada.] 2x\n\n3.\n Mutuwa ta rasa iko\nBisanka, Mai Nasara.\nLahira ta buɗe ƙofa,\nKa shiga, har ka fita.\n[An ɗauke ka can a Sama,\nAikinka ka gama nan.] 2x\n\n4.\n Duk jama'a suna jiran\nZuwanka, ya Almasihu,\nDuk Ekklesiya tana zarnan\nKewarka, Mai Cetonta.\n[Zo da sauri, muna bege,\nZo, mu dinga ganinka.] 2x\n\n5.\n Al'ummai, ku kasa kunne,\nShi ne Ubangijinku.\nRuhun Allah, jawo mutane\nZuwa sawun Mai Cetonsu,\n[Ɗan Maryamu, Tsatson Dawuda,\nIbnu Llahi, Ɗan Mutum.] 2x\n\n",
      title: "089-Almasihu, Hasken Duniya",
      tune: "Tune-Glorious things of thee are spoken/Austria/ Nettleton"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 90,
      lyric:
          "1.\n Zamanin da, Almasihu ya zo\nDuniya, cetonmu ne ya ke so.\nKada mu kasa, mu dai, sai mu kai,\nTare mu zauna da ainihin rai.\n\nKORUS\nWa'azin Yesu, shi mu ke yi,\nShi mu ke yi, tsaya ka ji.\nKada ka raina, kada ka ƙi,\nRiƙe da kyau, ka bi.\n\n2.\n Iko ya karƃa a wurin Uba\nDomin ya taimake mu, shi ya sa\nMasu shan wuya da karkatattu\nSuka zo gunsa, ya hutad da su.\n\nKorus\n\n3.\n Wa'adin Allah ya cika sarai,\nNasa Ɗan Rago ya mutu sosai.\nAibunsa babu, duk laifinmu ne,\nƊaukar zunubinmu mutuwa ce.\n\nKorus\n\n4.\n Kwanansa uku a binne ya ke,\nSai aka gan shi rayayye ne kuwa.\nDuba, ka ga Ubangiji ne shi,\nSanadin ceto ne, shi za ka bi.\n\nKorus\n\n5.\n Ina godiya ga Allah Mai Rai\nDomin ƙaunarsa a cikin Yesu.\nYa ba da Ɗansa don zunubaina,\nYa ba ni rai na har abada fa.\n\nKorus\n\n",
      title: "090-Zamanin Da, Almasihu Ya Zo",
      tune: "l am so glad that my Father"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 91,
      lyric:
          "1.\n Aka haife shi a Baitalahmi,\nYesu Ɗan Allah ya zo duniya.\nAbin al'ajabi! Ƙauna ta sa\nYa sauko domina.\nYa sauko domina, ya sauko domina.\nAbin al'ajabi! Ƙauna ta sa\nYa sauko domina.\n\n2.\n Can bayan birni a kan giciye\nYesu ya mutu, ya kuwa ba da rai,\nAbin al'ajabi! Ƙauna ta sa\nYa mutu domina.\nYa mutu domina, ya mutu domina.\nAbin al'ajabi! Ƙauna ta sa\nYa mutu domina.\n\n3.\n Dā, na yi nisa da Allah sosai,\nCan cikin jeji na ɓata sarai.\nAbin al'ajabi! Ƙauna ta sa\nYesu ya cece ni.\nYesu ya cece ni, Yesu ya cece ni.\nAbin al'ajabi! Ƙauna ta sa\nYesu ya cece ni.\n\n4.\n Yesu ya koma a wurin Uba\nAmma zai dawo a duniyan nan.\nAbin al'ajabi! Ƙauna ta sa\nZai kai ni gidansa.\nZai kai ni gidansa, zai kai ni gidansa.\nAbin al'ajabi! Ƙauna ta sa\nZai kai ni gidansa.\n\n",
      title: "091-Aka Haife Shi A Baitalahmi",
      tune: "Jesus my Saviour to Bethlehem came"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 92,
      lyric:
          "1.\n Wanene a daki can,\nMakiyaya gabansa?\n\nKORUS\nShi ne Ubangiji Yesu!\nShi ne Sarki mai daraja!\nSai mu durƙusa a nan,\nMu yabe shi, Mai Ceto.\n\n2.\n Wanene a daji ai,\nYana shan jaraba dai?\n\nKorus\n\n3.\n Yabon wa a ke ta yi\nDomin duk alherinsa?\n\nKorus\n\n4.\n Wanene ke warkar da\nMasu ciwo dayawa?\n\nKorus\n\n5.\n Wanene Mai Ta'aziyya\nDomin masu ƃacin rai?\n\nKorus\n\n6.\n Wanene mai wa'azi\nKo'ina a Galili?\n\nKorus\n\n7.\n Wa ya je da dare kuwa\nZuwa gona don addu'a?\n\nKorus\n\n8.\n Wanene kan giciye\nZafin mutuwa ya ke ji?\n\nKorus\n\n9.\n Wanene ya tashi kuwa\nDaga cikin kabari?\n\nKorus\n\n10.\n Wanene Mai Taimako\nShi kaɗai kuwa Mai Ceto?\n\nKorus\n\n11.\n Wanene a kursiyi\nMai Iko, Maɗaukaki?\n\nKorus\n",
      title: "092-Wanene A Daki Can",
      tune: "Who is He in yonder stall?"),
  Hymns(
      author: "",
      favorite: 0,
      id: 93,
      lyric:
          "1.\n Ku mutanen Almasihu,\nRera waƙa, dukanku.\nSai ku faɗa wa jama'a\nDuk labarin cetonku.\nAlbishir ne, Maryamu\nTa haife shi, Ɗan Mutum,\nSai fa godiya ga Allah\nDomin duk alherinsa.\n\n2.\n Sa'an nan ya ƙara girma.\nCike da tagomashi,\nShi Ɗan Allah yana koya\nMana hanyar adalci.\nIdan mu amintattu ne,\nIdan mun bi sawunsa,\nZa ya kai mu wurin Uba,\nZa mu sadu wurinsa.\n\n3.\n Wajibi ne sai mu bi shi,\nDomin yawan ƙaunarsa.\nShi ya sha wahalar giciye,\nBa don ya yi laifi ba.\nLaifofin jama'a duka\nSuka kai shi mutuwa.\nƘofar rai ce shi ya buɗe\nDon ya kai mu fadarsa,\n\n4.\n Sai in yi masa sujada,\nAllahna da Sarkina.\nSai in bauta masa kullum\nDa iyakar ƙarfina.\nSai da dukan hankalina,\nSai da dukan zuciyata,\nZan bi Yesu, Mai Cetona,\nCikin ikon Ruhunsa.\n",
      title: "093-Ku Mutanen Almasihu",
      tune: "Gird thy loins up/ Deerhurst"),
  Hymns(
      author: "",
      favorite: 0,
      id: 94,
      lyric:
          "1.\n Dā can, da Sama ta cika da yabo,\nNan kuwa zunubi ya ƙaru sosai,\nYesu ya fito, ya shigo nan duniya,\nAbin godiya,--Jagorana ne.\n\nKORUS\nKauna ta sa shi ya mutu domina,\nHukuncina ya kau da shi duk\nYa baratad da ni, gama ya tashi.\nYana fa zuwa--ranar daraja.\n\n2.\n Da aka kai shi kan dutsen Kabari,\nHar aka kashe shi kan giciye.\nYa sha wahala, da raini da zagi\nDomin zunubanmu, Mai Fansata.\n\nKorus\n\n3.\n Da aka binne shi can cikin kogo,\nAikin ya ƙare, yanzu hutawa.\nMala'iku suka lura da wurin,\nBegen ƴan Adam, Mai Cetona ne.\n\nKorus\n\n4.\n Kabari fa ba ya iya riƙonsa,\nƘofa ta buɗe, Yesu ba ya nan,\nYa ci nasara a kan mutuwa kuwa,\nYana can Sama, Ubangijina.\n\nKorus\n\n5.\n Sai wata rana, ƙaho zai yi ƙara,\nZa a ga ɗaukakar Yesu sosai,\nTare da tsarkaka, Yesu zai dawo,\nZan ɗaukaka shi, Yesu nawa ne.\n\nKorus\n\n",
      title: "094-Dā Can, da Sama Ta Cika da Yabo",
      tune: "One Day When Heaven"),
  Hymns(
      author: "",
      favorite: 0,
      id: 95,
      lyric:
          "1.\n Hosanna ga Ɗan Dawuda! Mai albarka ne shi\nWanda ke zuwa cikin sunan Ubangiji.\nKai Sarkin Isra'ila, shafaffen Allahnmu,\nCikin sunan Maɗaukaki, ka zo ka cece mu.\n\n2.\n Hosanna ga Ɗan Dawuda! Mai albarka ne shi\nWanda ke zuwa cikin sunan Ubangiji.\nMutanen da sun ɗiba gazarin dabino,\nSun shimfiɗa a hanyarka domin ka taka su.\n\n3.\n Hosanna ga Ɗan Dawuda! Mai albarka ne shi\nWanda ke zuwa cikin sunan Ubangiji.\nYau dukan jama'arka sun kawo yabonsu,\nDomin su gai da sarkinsu wanda ya fanshe su.\n\n4.\n Hosanna ga Ɗan Dawuda! Mai albarka ne shi\nWanda ke zuwa cikin sunan Ubangiji.\nKa shiga Birnin Ƙudus, ya kai mai nasara,\nTawali'u da yardar rai sun kai ka mutuwa.\n\n5.\n Hosanna ga Ɗan Dawuda1 Mai albarka ne shi\nWanda ke zuwa cikin sunan Ubangiji.\nLoton da ka ke duniya, wahala ce ka sha,\nA hannun daman Allah, aka ba ka ɗaukaka.\n\n6.\n Hosanna ga Ɗan Dawuda! Mai albarka ne shi\nWanda ke zuwa cikin sunan Ubangiji.\nYa Yesu Almasihu, Allah Maɗaukaki,\nKai ne Mai Ceton duniya, ya kai Mai Tsarki.\n\n",
      title: "095-Hosanna Ga Ɗan Dawuda! Mai Albarka Ne Shi",
      tune: "All glory, laud and honour/St. Theodulph"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 96,
      lyric:
          "1.\n Babu sunan da ya fi sunan Yesunmu.\nShi ne wanda suka ƙi cikin fushinsu.\nSunan Yesu ba mai fi, Allah ne ya shaida shi.\n\n2.\n Babu daɗin da ya fi daɗin sunansa.\nBabu ceto, babu rai, sai a wurinsa.\nSama, duniya, Lahira Suna yabon sunansa.\n\n3.\n Babu girman da ya fi girman sunansa.\nSarkin Sarakuna shi, Mai Shari'a kuwa.\nIko duka nasa ne, shi kaɗai mai mulki ne.\n\n4.\n Sunan Yesu, ba mai fi cikin duniya.\nKan Ekklesiya ne shi, hasken Sama kuwa.\nIko, girma, ɗaukaka nasa ne har abada\n\n",
      title: "096-Babu Sunan da Ya Fi Sunan Yesunmu",
      tune: "Let the song go round the earth/Moel Llys"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 97,
      lyric:
          "1.\n Ba wani suna na ke so in ji, in riƙa ji.\nYesu, sunanka dā da yau har ahada ya fi.\n\n2.\n Ba wani sunan da zai sa mu zo mu riƙa zuwa,\nCiki mu nemi mafaka, ciki mu yi addu'a.\n\n3.\n Yesu, sunanka ya kan ba Mai Binka iko na\nYin yaƙi har da nasara, ya sami hutu can.\n\n4.\n Sunanka ya kan tsorata Shaiɗan, maƙiyinmu.\nRansa zai ƃāci in ya ga ƙaunarka cikinmu.\n\n5.\n Ba mu da ikon yabonka, ya wuce faɗinmu,\nSai ran da za mu gan ka can, Yesu Masoyinmu.\n",
      title: "097-Ba Wani Suna Na Ke So In Ji, In Riƙa Ji",
      tune: "How sweet the name of Jesus sounds / St. Peter"),
  Hymns(
      author: "E. P. Miller",
      favorite: 0,
      id: 98,
      lyric:
          "1.\n Da suna wanda ba mai fi a dukan zamanai,\nYesu ne, marar zunubi, Ɗan Allah, shi kaɗai.\n\n2.\n Allah ya sanya sunan nan kan sauran sunaye.\nMu yabe shi da rairawa, mu gusa gun kursiyi.\n\n3.\n Mai kayan tulin laifofi shi faɗi sunan nan,\nA cikinsa ga gafara, ba shakka, ko kaɗan.\n\n4.\n Sunan, idan ka faɗe shi, an ji addu'arka.\nLaifinka ba ya dubawa, sai jinin giciyensa.\n",
      title: "098-Da Suna Wanda Ba Mai Fi A Dukan Zamanai",
      tune: "The name I love /Belmont /Dalehurst / Trench"),
  Hymns(
      author: "",
      favorite: 0,
      id: 99,
      lyric:
          "1.\n Akwai sunan nan mai daɗi wanda ba mai kamarsa,\nWato sunan Ubangiji, begen dukan Masu Bi.\n\nKORUS\nSunan nan, Yesu ne, sunansa da daɗin ji,\nSunan nan, Yesu ne, begen dukan Masu Bi.\n\n2.\n Tun da na ji sunan Yesu, murna na ke yi sosai.\nWurinsa na sami ceto, gafara da kwanciyar rai.\n\nKorus\n\n3.\n Cikin sunan nan mai girma, a ke samun ceto fa,\nCikinsa a ke sujada, cikinsa a ke addu'a.\n\nKorus\n\n4.\n Sunan nan ya buɗe ƙofa, zuwa Allah Ubansa,\nGama ban da sunan Yesu, Allah ba za ya ji mu ba.\n\nKorus\n",
      title: "099-Akwai Sunan Nan Mai Daɗi Wanda Ba Mai Kamarsa",
      tune: "Take the precious name/ Precious Name"),
  Hymns(
      author: "",
      favorite: 0,
      id: 100,
      lyric:
          "1.\n Dogara ga sunan Yesu\nTa kan sa a sami rai\u000b.\nGama ba ceto ga wani\nBa kuwa hanya sai dai shi.\n\nKORUS\nYesu, Yesu, ina son ka,\nKai kaɗai Mai Ceto ne.\nYesu, Yesu, ni zan bi ka\nDaga nan har abada.\n\n2.\n Jinin Yesu ya fanshe ni\u000b.\nYana shafe zunubai\u000b.\nNa jingina wurin Yesu\u000b.\nYa karƃe ni bawansa.\n\nKorus\n\n",
      title: "100-Dogara Da Sunan Yesu",
      tune: "Tis so Sweet to Trust in Jesus"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 101,
      lyric:
          "1.\n Suna mai daɗi Yesu ne a kunnen Masu Bi.\nAlhini, tsoro, ƃacin rai, korarsu duk zai yi.\n\n2.\n Yana ƙarfafa zuciya ta masu ciwon rai.\nManna ne shi ga Masu Bi, ga dukanmu, jinƙai\n\n3.\n I, sunan Yesu ceto ne, shi ne maƃoyina,\nƘarfina, pana, garkuwata, begen bangaskiyata.\n\n4.\n Yanzu a cikin duniya, na kasa yabonka,\nShaidata duk da aikina sai dai da ikonka.\n\n5.\n Amma a wurin zamanka, zan duba fuskarka.\nWaƙa zan yi mai daɗin ji, yabo ga sunanka.\n",
      title: "101-Suna Mai Daɗi Yesu Ne A Kunnen Masu Bi",
      tune: "How sweet the name of Jesus sounds / St. Peter"),
  Hymns(
      author: "C. Sanderson",
      favorite: 0,
      id: 102,
      lyric:
          "1.\n Yesu Kristi, Mai Cetona\nƊan Allah Mai Tsarki ne.\nHalleluya, halleluya.\n\n2.\n Ina shaidar suna naka,\nSunanka mai daraja.\nHalleluya, halleluya.\n\n3.\n Ina girmama sunanka,\nUbangiji Mai Ceto. Halleluya, halleluya.\n\n4.\n Jinin Yesu ne ya zama\nFansar masu zunubi.\nHalleluya, halleluya.\n\n5.\n Ina ɗaukaka sunanka,\nYesu, kai mai ba da rai.\nHalleluya, halleluya.\n\n6.\n I, zan shaida sunan Yesu\nHar ma duniya duk ta ji.\nHalleluya, halleluya.\n\n7.\n Allah ya yi ƙaunar duniya,\nƘaunarsa mai girma kuwa.\nHalleluya, halleluya.\n\n8.\n Ni na gaskata da Yesu\nƊan Allah Mai Tsarki ne.\nHalleluya, halleluya.\n",
      title: "102-Yesu Kristi, Mai Cetona",
      tune: "African tune"),
  Hymns(
      author: "A. P. Stirret",
      favorite: 0,
      id: 103,
      lyric:
          "1.\n Da tunawar ƙaunar Mai Ceto.\nAl'ajabi na ke yi.\nGa Yesu ya sha wulakanci\nDon laifin da ni na yi.\n\nKORUS\nAl'ajabi! Al'ajabi!\nWannan waƙa sai in yi.\nAl'ajabi! Al'ajabi!\nMutuwarsa ta cece ni.\n\n2.\n Dalilin jiƃinsa mai jini\nDa zafin addu'arsa\nBa domin kansa ya yi ba,\nSai domin zunubina.\n\nKorus\n\n3.\n Mala'ika ya ji tausayinsa,\nYa zo daga Sama can\nDomin ya ƙarfafa ransa\nA cikin wahalan nan.\n\nKorus\n\n4.\n Ya ɗauke zunubai duka,\nYa maishe su nasa ne.\nYa kai su can bayan birni,\nDominsu ya ba da rai.\n\nKorus\n\n5.\n A can cikin daraja tasa\nZan duba Mai Cetona.\nZan rera waƙa gare shi\nDomin yawan ƙaunarsa.\n\nKorus\n",
      title: "103-Da Tunawar Ƙaunar Mai Ceto",
      tune: "I stand amazed/Gabriel"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 104,
      lyric:
          "1.\n Duba dai Mai Fansarmu\nƊauke da zunubanmu,\nYana shan wahalarmu,\nHalleluya, Mai Cetonmu !\n\n2.\n Raini, duka, nasa ne,\nBa'a, kunya, giciye,\nMutuwa rabonsa ne,\nHalleluya, Mai Cetonmu!\n\n3.\n Ba ya yi zilama ba,\nBa ya faɗi ƙarya ba,\nBa ya yi alfarma ba,\nHalleluya, Mai Cetonmu!\n\n4.\n Ba ya buɗe baki ba,\nBa ya yi kashedi ba,\nBa ya mai da zagi ba,\nHalleluya, Mai Cetonmu!\n\n5.\n Ga shi bisa itace,\n\"Gafarta musu,\" ya ce,\nDuba ceto cikakke,\nHalleluya, Mai Cetonmu!\n",
      title: "104-Duba Dai Mai Fansarmu",
      tune: "Hallelujah, what a savior/Man of Sorrows"),
  Hymns(
      author: "J. W. McCaba",
      favorite: 0,
      id: 105,
      lyric:
          "1.\n Ga Yesu Ubangijinmu, can yana mutuwa,\nAllah ya sa mar laifinmu, duniya ta duhunta.\n\nKORUS\nNa gaskata, na gaskata, Yesu ya fanshe ni\nDa jininsa, da jininsa, jini mai tsarki.\n\n2.\n Ya ce, \"Ya Allah, ya Allah, donme ka yashe ni? \"\nRundunan Sama su kuma sun daina yin murna.\n\nKorus\n\n3.\n Amma ya mutu dominmu, ya ba da jininsa,\nDomin mu zama tsabtattu ta wurin tashinsa\n\nKorus\n\n4.\n Ga zukatanmu gabanka, ya Ubangijinmu,\nKa karƃe  su, ka wanke su, Yesu Mai Cetonmu\n\nKorus\n",
      title: "105-Ga Yesu Ubangijinmu, Can Yana Mutuwa",
      tune: "There is a fountain/Cowper"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 106,
      lyric:
          "1.\n Me za mu ce da Yesu? Ɗan Ragon Allah ne.\nMai ɗauke kayan zunubi na duk jama'a ne.\nKa ba ni wannan sani, azabar da ka sha.\nMai Gaskiya, Mai Tsarki, ka ɗauke laifina\n\n2.\n A cikin sa'ar mutuwa Mai Cetonmu ya ce,\n\"Uba, yi musu gafara, sun yi a jahilce.\"\nKa ba ni wannan sani, alherin da ya sa\nMaɗaukaki, Mai Tsarki, ya ɗauke laifina.\n\n3.\n Rana ta rufu sarai, duniya ta duhunta,\nA Sama duk mala'iku sun kasa dubawa.\nKa koya mana sanin wannan asirinka,\nDalilin da Mai Tsarki ya ɗauke laifina.\n\n4.\n Azaba duk ta wuce, Mai Nasara ya ci.\nA hannun daman Allah ne ya tsaya, Maɗaukaki.\nKa koya mana sanin iko na tashinka,\nMai Tsarki, Mai Nasara, Yesu Mai Cetona.\n\n",
      title: "106-Me Za Mu Ce da Yesu? Ɗan Ragon Allah Ne",
      tune: "Oh, make me understand it/ Give Me A Sight"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 107,
      lyric:
          "1.\n Ran da na ga Mai Cetona\nA Kabari kan giciye,\nNa ga ƙaunar Ubangijina,\nNa ba shi dukan zuciyata.\n\n2.\n Ya mutu dai don laifina,\nWahalata shi ne ya sha,\nWane ni fa har da zan ƙi\nIn karƃi kyautar cetonsa?\n\n3.\n Ga jininsa ya bayar dai,\nGa raɗaɗinsa domina.\nYa Ubangiji, karƃe ni,\nKa yafe mini laifina.\n\n4.\n Na gode maka, ya Yesu,\nDon dukan aikin cetona,\nNa ba ka rai da zuciya duk,\nNi naka ne har abada.\n\n",
      title: "107-Ran da Na Ga Mai Cetona",
      tune: "When I survey the wondrous cross/ Rockingham / Hamburg"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 108,
      lyric:
          "1.\n Zo wurin giciyen Yesu, ku masu ƃacin rai,\nKu masu nauyin kaya, zo wurin giciyensa.\nBa wata hanyar ceto, ba wani taimako,\nYesu kaɗai ya mutu domin ya cece mu.\n\nKORUS\nZo wurin giciyen Yesu, saukad da kayanku,\nYesu ya ba da ransa domin ya cece mu.\n\n2.\n Zo wurin giciyen Yesu, ku masu zunubi.\nWanda ya kasa tashi, Yesu ya kira shi.\nKowane kayan laifi wanda ke danne ku,\nDukan kurakuranku, Yesu zai ɗauke su .\n\nKorus\n\n3.\n Zo wurin giciyen Yesu, ku masu neman rai.\nMutuwa ta bi kan kowa, rai kyautar Allah ne.\nDuba Mai Ceton duniya can bisa itace,\nWanda ya ba da gaskiya, shi dai zai sami rai.\n\nKorus\n\n",
      title: "108-Zo Wurin Giciyen Yesu",
      tune: "Safe in the arms of Jesus"),
  Hymns(
      author: "Yohanna",
      favorite: 0,
      id: 109,
      lyric:
          "1.\n Jama'a duk, ku zo mu yi yabo ga Allahnmu.\nMu gode domin Yesunmu ya ɗauke laifinmu.\n\n2.\n Shari'armu mutuwa ce, Yesu ya ɗauke duk.\nYa ba da ransa dominmu, domin ya fanshe mu.\n\n3.\n An kafa shi da ƙusoshi a bisa giciye,\nBa domin laifofinsa ba, amma don namu ne.\n\n4.\n Yanzu ko ranar mutuwa, ba zan ji tsoro ba.\nYesu ya ɗauke laifina, ba zai kāshe ni ba.\n\n",
      title: "109-Jama'a Duk, Ku Zo Mu Yi Yabo Ga Allahnmu",
      tune: "From Thee all skill/ Graefenberg / Farnham"),
  Hymns(
      author: "E. P. Miller",
      favorite: 0,
      id: 110,
      lyric:
          "1.\n Kai ne mu ke tunawa, giciyenka da raɗaɗi.\nGa mu nan a durƙushe, Ubangiji Yesunmu.\n\n2.\n Kabari, O Kabari, kana shafe zunubi,\nƘaunarsa mai zurfi kuwa, ƙaunar Almasihu ce!\n\n3.\n Ana duhu loton nan, kana mutuwa tudu can.\nAllah ne ya yad da Ɗan, Almasihu Yesu ne.\n\n4.\n Ba ka cikin matattu, tashinka ya kwance mu.\nMu ne naka fansassu, Ubangiji Yesunmu.\n\n5.\n Zaman tsaro sai mu yi, kwanaki na ƙarshe ne.\nMuna jiran Sarkinmu, Ubangiji Yesu ne.\n\n6.\n Begenmu mu kai kursiyi tare da Ubangiji,\nMarar laifi kowanne, duka ƴaƴan Allah ne.\n\n",
      title: "110-Kai Ne Mu Ke Tunawa, Giciyenka da Raɗaɗi",
      tune: "Hark, my soul/St. Bees"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 111,
      lyric:
          "1.\n Zaƃaƃƃe na Allah, shi,\nAikakke na ainihi,\nNufin Allah duk ya yi,\nUbangiji Almasihu.\n\n2.\n Yesu aka kunyata,\n\"Shi ba wani abu ba,\"\nAka ce. Ai, shi ya sa\nAka raina Almasihu.\n\n3.\n Shi, a jikin gungume,\nGa shi nan kuwa, ɗaurarre!\nAka kashe shi sosai,\nMai alheri ne ya mutu.\n\n4.\n Mutuncinsa aka ci,\nZub da jini aka yi,\nKarƃar ceto aka ƙi.\nJinin Yesu ya fanshe mu.\n\n5.\n Riƙe shi ba dama fa,\nKo a cikin mutuwa.\nAllah ma ya ɗaukaka\nƊansa, Yesu Almasihu.\n\n6.\n In ya komo wata ran,\nZai tashe mu daga nan,\nHar ya kai mu gun Uban,\nRerawa ma yi wa Yesu\n",
      title: "111-Zaƃaƃƃe Na Allah, Shi",
      tune: "Hallelujah, what a savior/Man of Sorrows"),
  Hymns(
      author: "E. P. Miller",
      favorite: 0,
      id: 112,
      lyric:
          "1.\n Can cikin kabarin, Yesu Mai Ceto\nYa kwana uku ɗin, Ubangiji.\n\nKORUS\nShi aka ɗaukaka.\nAka watse duk maƙiyansa,\nDuk mazaunan duhu ba sa tsaronsa,\nYana zuwa da wannan shaidar nasara,\nYana zuwa, yana zuwa,\nHalleluya, yana zuwa.\n\n2.\n An tsare kabarin Yesu Mai Ceto\nBanza ne hatimin, Ubangiji.\n\nKorus\n\n3.\n Ya raina mutuwa, Yesu Mai Ceto,\nYa tsinke sarƙarta, Ubangiji.\n\nKorus\n",
      title: "112-Can Cikin Kabarin, Yesu Mai Ceto",
      tune: "Christ arose / Low in the grave he lay"),
  Hymns(
      author: "H. E. Smith",
      favorite: 0,
      id: 113,
      lyric:
          "1.\n Ya Allah, miƙa hannunka, ka tsai da haukansu,\nAn kashe Almasihunka ta hannun miyagu.\n\n2.\n Ba za ka bar Mai Tsarkinka cikin kabari ba.\nBa za ka bar maƙiyansa su ci nasara ba.\n\n3.\n Dā, kayayuwa tsinana sun soki goshinsa.\nYanzu ka naɗa Almasihu a hannun damanka.\n\n4.\n Shi wanda aka kunyata a cikin duniyan nan,\nKa tashe shi da daraja, ka ba shi girma can.\n\n5.\n Shi ne ya mutu dominmu, ya ɗauki giciyensa.\nMun sami rai da lafiya ta wurin dūkansa.\n\n6.\n Idan mun mutu tare nan, mun ɗauki giciyensa,\nTare kuwa za mu yi murna a cikin mulkinsa.\n\n7.\n Ina misalin yabonka, ya Yesu Almasihu?\nAn sanya mulkin kome nan ƙarƙashin sawunka.\n\n\n",
      title: "113-Ya Allah, Miƙa Hannunka, Ka Tsai da Haukansu",
      tune: "The head that once was crowned/ St. Magnus/ St. Fulbert"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 114,
      lyric:
          "1.\n Halleluya! Halleluya! Halleluya!\nWahalarka, Mai Fansarmu,\nTa kawo ceto dominmu,\nTa buɗe rijiyar rai yanzu, Halleluya!\n\n2.\n Aikin Shaiɗan da gurinsa,\nKa ƃata su da giciyenka,\nKa ba da rai domin mu rayu, Halleluya!\n\n3.\n Kai ne kaɗai mai nasara\nKan Shaiɗan duk da ƴaƴansa,\nKa kā da su da ikonka, Halleluya!\n\n4.\n Kai ne ka jawo mu wurinka,\nKai ne ka kawo gafara,\nKai ne ka ba mu Ruhunka, Halleluya!\n\n5.\n Kai ne ka gama cetonmu,\nKa hau can Sama dominmu,\nKai ne mai zuwa dominmu, Halleluya!\n\n6.\n Yabo ga Allah sai mu yi,\nYabo ga Yesu, Masu Bi,\nYabo ga Ruhu Mai Tsarki, Halleluya!\n\n\n",
      title: "114-Halleluya! Halleluya! Halleluya! Wahalarka",
      tune: "The Strife is o'er / Victory"),
  Hymns(
      author: "C. Sanderson",
      favorite: 0,
      id: 115,
      lyric:
          "1.\n Ya Yesu, har ga mutuwa ka kai don cetonmu,\nKa ƙuje maƙiyinmu kuwa, ka ƃata ikonsa.\n\n2.\n Ina misalin kayanka? Mai ɗauka, kai kaɗai!\nKa ɗauke namu zunubai, ta wurin giciyenka.\n\n3.\n Yanzu ka hau ga Sama can, ka shiga hutawa.\nAllah ya ba ka daraja a hannun damansa.\n\n4.\n Me za mu kai guri Yesunmu? Mai fansarmu ne shi,\nBaki ya kasa yabonsa, Yesu ne mafifici.\n\n5.\n Mu miƙa ranmu gaba ɗaya, mu yi ta aikinsa,\nHar ran da zai fyauce mu can a gidan Ubansa.\n",
      title: "115-Ya Yesu, Har Ga Mutuwa Ka Kai Don Cetonmu",
      tune: "The head that once was crowned/ St. Magnus/ St. Fulbert"),
  Hymns(
      author: "",
      favorite: 0,
      id: 116,
      lyric:
          "1.\n Ta da kanku, ƙyamare, Halleluya!\nAlmasihu na ɗaɗɗe Halleluya!\nYau ya karƃi mulkinsa, Halleluya!\nYau ya hau Samaniya, Halleluya!\n\n2.\n  Aikinsa ya gama dai, Halleluya!\nTsarkakewar mutane, Halleluya!\nBisa kursiyinsa yanzu, Halleluya!\nYana roƙo dominmu, Halleluya!\n\n3.\n Yesu ba zai bar mu ba, Halleluya!\nYana wurinmu lalle, Halleluya!\nRuhunsa mai taimako, Halleluya!\nYana zaune cikinmu, Halleluya!\n\n4.\n Yesu za ya komo nan, Halleluya!\nIn ya shirya wuri can, Halleluya!\nZa ya karƃi Masu Bi, Halleluya!\nZa mu hau tare da shi, Halleluya!\n\n",
      title: "116-Ta da Kanku, Ƙyamare, Halleluya",
      tune: "Christ, the Lord, is Risen"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 117,
      lyric:
          "1.\n Yesu Kristi yau ya tashi\nBa zai sake mutuwa ba.\nAka sa shi kabarinsa,\nYau ya fashe sarƙarsa,\nAlmasihu ba ya nan,\nTashinsa ya tabbata.\nJikinsa mai tsarki nc,\nBa zai ruƃe ba daɗai\n\n2.\n Yesu Kristi yau ya tashi.\nShaidar nasara ya kai\nCikin Sama wurin Allah,\nYau har abada mai rai!\nShi mai ɗaukar fansarmu,\nYa isa mu yabe shi.\nRaɗaɗinsa duk ya wuce,\nHau! ya kai Maɗaukaki !\n\n3.\n Tuna, ku jama'ar Yesu,\nHaihuwarsa da mutuwa,\nDuba, ku rundunan Sama,\nGa mutum, mai nasara!\nShi kaɗai mai jiki ne\nCikin Sama fa yanzu.\nCikin jiki za mu sami\nDaraja har abada.\n\n",
      title: "117-Yesu Kristi Yau Ya Tashi",
      tune: "Christ, the Lord, is Risen"),
  Hymns(
      author: "",
      favorite: 0,
      id: 118,
      lyric:
          "1.\n Almasihu yana nan!\nTsoron mutuwa ya ƙare.\nWannan muka gaskata,\nIkon kabari banza ne. Halleluya!\n\n2.\n Almasihu yana nan!\nƘofar rai shi ne ya buɗe.\nMutuwa fa ƙaura ce\nZuwa rai na har abada. Halleluya!\n\n3.\n Almasihu yana nan!\nDominmu ne shi ya mutu.\nTsarkin zuciya wajib ne\nGa waɗanda ya fanshe su. Halleluya!\n\n4.\n Almasihu yana nan!\nBa mai hana mu ƙaunarsa.\nKo da rai ko babu shi,\nMun sa kanmu a hannunsa. Halleluya!\n\n5.\n Almasihu yana nan!\nMai sarautar dukan duniya.\nSai mu bi ta gurbinsa,\nMu yi mulki cikin Sama. Halleluya!\n\n",
      title: "118-Almasihu Yana Nan!",
      tune: "St. Albinus"),
  Hymns(
      author: "",
      favorite: 0,
      id: 119,
      lyric:
          "1.\n Zo, mutane, rera waƙa,\nCika sammai da yabo.\nYabe shi, Mai Magani ne,\nDon ya ceci duniya.\nMakiyayi, Mai Cetonmu,\nAna biyayya da shi.\n\n2.\n Saboda cetonmu ne fa,\nYa zo ya ba da jininsa,\nYa yi aikin gafara ma,\nYa mutu, mun huta ma.\nTashinsa na ɗaukaka ne,\nSarkin rai har abada.\n\n3.\n Yanzu bisa kursiyinsa\nGirma, iko nasa ne.\nAna rera, Halleluya,\nWaƙar ƴaƴan haske ce,\nShi Sarki nc da Shugaba,\nNasara duk tasa ce.\n\n4.\n Ga giraya da algaita,\nRera waƙar yabonsa.\nDuniya ma ki saurare mu,\nSarkin rai ya rinjaya!\nRago wanda aka kashe\nYa rayu, ya tashi kuwa.\n\n5.\n Yabo, ɗaukaka ga Uba,\nYabo, ɗaukaka ga Ɗa,\nYabo, ɗaukaka ga Ruhu,\nUku cikin ɗaya ne.\nMakaɗaicin Allah namu\nGirma, yabo nasa ne.\n\n",
      title: "119-Zo, Mutane, Rera Waƙa",
      tune: "Come, ye people, raise/Neander"),
  Hymns(
      author: "",
      favorite: 0,
      id: 120,
      lyric:
          "1.\nDuba, Yesu yana zuwa.\nDā ya mutu dominmu,\nDubban dubbai, tsarkakansa,\nDuka za su rako shi.\nHalleluya! Halleluya!\nZa ya nuna ikonsa.\n\n2.\n Duk jama'a za ta gan shi,\nSu da suka soke shi,\nCikin tsoro za su san shi,\nBa sa so su tarbe shi.\nSuna kuka, suna kuka,\nSuna duban Sarkinsu.\n\n3.\n Dā ya zo da kalmar ceto,\nDā ya zo da gafara.\nZa ya komo mai shari'a,\nZa mu taru gabansa.\nWa zai tsaya, wa zai tsaya\nCikin ranar fushinsa?\n\n4.\n Shi da kansa za ya sauko,\nRanar fansarmu ta zo,\nZa mu tarbe shi a hanya,\nMasu rai da matattu.\nCikin Sama, cikin Sama\nZa mu ga Ubangiji.\n\n5.\n Zo da sauri, Almasihu,\nMasu Bi 'na jiranka.\nƘarfii mulki, ƙarfi yabo,\nNaka ne har abada.\nHalleluya! Halleluya !\nZo da sauri, zo yanzu.\n\n",
      title: "120-Duba, Yesu Yana Zuwa",
      tune: "Lo, He comes with clouds/Helmsley"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 121,
      lyric:
          "1.\n Mai Cetonmu zai zo, misalin walƙiya,\nDa ƙafon Allahnmu, lalle zai sake zuwa.\nDa kiransa mai ƙarfi kuwa,\nDa ikonsa zai sake zuwa.\n\n2.\n Ga zancen ranan nan, tana ta zuwansa,\nKu yi ta tsaronku, ku yi ta jiransa.\nKu yi biyayya dukanku,\nKu adalai, yi shirinku.\n\n3.\n Mai Cetonmu zai zo, zai amshi mulkinsa,\nNumfashin bakinsa zai ci maƙiyansa.\nZai ƃaƃƃata magautansa,\nZai cinye su da ikonsa.\n\n4.\n Ya Ubangiji zo, Ango Ekklesiya\nKa zo da cetonka, ka gama alkinka\nKa ji add’o’inmu yau,\nKa zo, ya Ubangiji, zo.\n",
      title: "121-Mai Cetonmu Zai Zo, Misalin Walƙiya",
      tune: "Now to the King of Heaven/St. John"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 122,
      lyric:
          "1.\n Wata rana, wata sa'a, Yesu Kristi za ya zo,\nMasu Binsa za su ga darajarsa\nDaga kowace kabila, ƙasashe dabam dabam,\nZa mu taru wurin Ubangijinmu\n\nKORUS\nZa mu taru, za, mu taru,\nZa mu taru can a Sama, fansassu da cetattu.\nZa mu taru, za mu taru,\nWurin Yesu Kristi Ubangijinmu.\n\n2.\n Masu Bi da su ke barci, Yesu za ya kira su,\nZa su fito daga cikin kabari,\nCikin Sama za su gan shi, za su zo su tarbe shi,\nZa mu taru wurin Ubangijinmu.\n\nKorus\n\n3.\n Waɗanda suka riga mu zuwa cikin birnin nan\nZa mu sake ganinsu a wurin can.\nBabu sauran kewa kuma, babu sauran rabuwa,\nZa mu taru wurin Ubangijinmu\n\nKorus\n",
      title: "122-Wata Rana, Wata Sa'a, Yesu Kristi Za Ya Zo",
      tune: "What a gathering/ On that Bright and Golden Morning"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 123,
      lyric:
          "1.\n Ƴan duniya ba sa yarda da Ubangijinmu,\nA ransu ba sa ɗauka ya zama sarkinsu,\nAmma fa wata rana zai komo duniyan nan,\nGama mulkin duniya duka nasa ne.\n\nKORUS\nZa ya komo wata rana, i, wataƙila yau,\nZa ya komo daga Sama domin ya fyauce mu,\nJama'arsa sai murna tare da shi su ke,\nGama mulkin duniya duka nasa ne.\n\n2.\n Mu, ranan nan sai daɗi mai yawa za mu ji;\nBa sauran ƃacin zuciya, ba sauran zunubi,\nSai murnar ganin Yesu, Yesu mai fansarmu,\nDomin mulkin duniya duka nasa ne.\n\nKorus\n\n3.\n Ko yau ne ya ke zuwa, mu ba mu sani ba.\nYa ce mu yi ta tsaro, mu riƙa jiransa.\nMun sani yana zuwa, ba shakka ko kaɗan.\nGama mulkin duniya duka nasa ne.\n\nKorus\n",
      title: "123-Ƴan Duniya Ba Sa Yarda Da Ubangijinmu",
      tune: "The crowning day/ The Lord is now rejected"),
  Hymns(
      author: "J. Veenstra",
      favorite: 0,
      id: 124,
      lyric:
          "1.\n Yesu Kristi yana zuwa domin ya karƃe mu.\nDuk Ekklesiya za ta gan shi, Mai Cetonta ne.\n\nKORUS\nHalleluya ga Yesu, ga Yesu Mai Ceto,\nHalleluya ga Yesu, Mai Cetonmu ne.\n\n2.\n Ƙanƙanana duk da manya, Yesu yana sonsu,\nMasu sonsa, masu tuba da zuciya ɗaya,\n\nKorus\n\n3.\n Muna jira, Ubangiji, mu ƴaƴanka duka,\nKo da rana, ko da dare, koyaushe ka zo.\n\nKorus\n\n4.\n Wata rana, wata sa'a, lalle kana zuwa.\nMuna zamanmu da shiri har ran da ka zo.\n\nKorus\n\n",
      title: "124-Yesu Kristi Yana Zuwa Domin Ya Karƃe Mu",
      tune: "Jewels /When He Cometh"),
  Hymns(
      author: "A. P. Stirret",
      favorite: 0,
      id: 125,
      lyric:
          "1.\n Yesu Ubangijinmu yana gun Uba yanzu,\nYana shirya mana wurin zama can.\nWata rana, wata sa'a, za ya dawo duniya,\nZa ya fyauce Masu Binsa nandanan.\n\nKORUS\nMuna jiran Sarkinmu, muna duban hanyarsa\nKo da rana ya sauko, ko da dare ya iso,\nSai ya iske mu da shirin karbarsa.\n\n2.\n Kana daɗi za mu ji, za mu ga Ubangiji,\nMuna zamanmu tare har abada.\nBabu sauran ƃacin rai, farinciki ne kaɗai,\nKullum murna za mu yi, ba fasawa.\n\nKorus\n\n3.\n Ƴanuwa, ku zo yanzu, Yesu za ya wanke ku,\nZa ya kyauta muku rai har abada.\nZo ku bi Mai Cetonku, faɗa masa laifinku,\nShi ya shirya muku gafara tun dā.\n\nKorus\n\n",
      title: "125-Yesu Ubangijinmu Yana Gun Uba Yanzu",
      tune: "Tramp, tramp, tramp/ Jesus Calls the Children"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 126,
      lyric:
          "1.\n Ku duba irin ƙaunan nan, ƙauna ta Allahnmu,\nDomin mu zama ƴaƴansa, ya dinga ƙaunarmu.\n\n2.\n I, domin wannan, duniyan nan ta riƙa raina mu,\nWahalarmu fa ɗaya ce da ta Ubangiji.\n\n3.\n Yanzu mu ƴaƴan Allah ne, a cikin duniyan nan.\nA rufe ya ke tukuna, zama na Sama can.\n\n4.\n Mun sani ran da shi zai zo, ma zama kamarsa, Zai buɗe mana idanu, mu ga jamalinsa.\n\n5.\n Wanda ya ke da begen nan kafe a bisansa.\nZai tsare tasa zuciya kamar Mai Cetonsa.\n\n",
      title: "126-Ku Duba Irin Ƙaunan Nan, Ƙauna Ta Allahnmu",
      tune: "Newington/ St. Stephen"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 127,
      lyric:
          "1.\n Wata rana za mu gan shi,\nYesu Ubangijinmu.\nZa mu tsaya a gabansa\nWanda ya ke ƙaunarmu.\n\nKORUS\nWata rana za mu gan shi\nCikin dukan daraja.\nZa mu yi masa sujada.\nZa mu duba fuskarsa.\n\n2.\n Mu dai ba mu ganin Yesu\nCikin wannan duniya\nAmma can a gidan Sama\nZa mu duba fuskarsa.\n\nKorus\n\n3.\n Ran da muka kai gun Yesu,\nShi zai shafe hawaye,\nBabu sauran ƃacin zuciya,\nSai dai murna za mu yi.\n\nKorus\n\n4.\n Za mu gan shi, Halleluya!\nZa mu ga Mai Cetonmu.\nZa mu faɗi a gabansa\nWanda shi ke Sarkinmu.\n\nKorus\n\n",
      title: "127-Wata Rana Za Mu Gan Shi",
      tune: "Face to face/ Vision"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 128,
      lyric:
          "1.\n Yesu yana zuwa, lalle yana zuwa,\nYesu yana zuwa duniyan nan.\nZa ya tara Masu Binsa daga ko'ina,\nKu yi shiri domin zuwansa.\n\nKORUS\nKu yi shiri, ku yi shiri!\nKu yi shiri domin zuwansa\nKu yi shiri, ku yi shiri\nDomin zuwansa.\n\n2.\n Masu Binsa duka, Masu Binsa duka,\nWaɗanda su ke da shirinsu,\nZa a kai su Sama tare da Ubangiji\nKu yi shiri domin zuwansa.\n\nKorus\n\n3.\n Sai ku bar yin laifi, ku bar yin laifi,\nSai ku bar yin laifi, Masu Bi.\nBabu sauran daman tuba ran da za ya zo,\nKu yi shiri domin zuwansa.\n\nKorus\n\n4.\n Sai mu yi addu'a, mu yi addu'a,\nSai mu yi addu'a, Masu Bi,\nDon mu tarbe shi da murna ran da za ya zo,\nMu yi shiri do min zuwansa.\n\nKorus\n\n5.\n Sai mu yi ta aiki, mu yi ta aiki,\nSai mu yi ta aiki, Masu Bi,\nDon mu kawo mutane dayawa gun Yesu\nMu yi shiri domin zuwansa.\n\nKorus\n\n",
      title: "128-Yesu Yana Zuwa, Lalle Yana Zuwa",
      tune: "There's a great day coming"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 129,
      lyric:
          "1.\n Farkon zuwan Almasihu daga Sama ne ya zo\nZaman neman duk mutane ƃatattu\nKomawarsa ta yi kusa, ya yi zancen taimako,\nMasu Binsa suna nan, ya ce da su.\n\nKORUS\n\"Zuciyarku kar ta ƃaci,\nSai ku ji, ku gaskata ni.\nSama za ni gun Ubana,\nNan zan shirya muku wuri har in zo.\"\n\n2.\n Yesu ya yi zance cewa, \"Gidan Ubana 'na nan,\nWurin zamansa dayawa, sai in je\nDon in shirya muku su, in zo in kai ku wata ran,\nInda na ke zaune fa a nan ku ke.\"\n\nKorus\n\n3.\n Sake zuwan Ubangiji mu ke sauraronsa yau.\nShi alkawarinsa ba zai karya ba.\nZato babu, ba tsammani, murya tasa za mu ji.\nMai Cetonmu, ga shi, yana saukowa!\n\nKorus\n\n4.\n Kashin tsarkakansa biyu ne, matattu da masu rai.\nYesu dai zai fara ta da matattu.\nMasu rai fa gaba ɗaya zai fyauce su nandanan,\nHar ya sa su a wurare shiryayyu.\n\nKorus\n\n",
      title: "129-Farkon Zuwan Almasihu Daga Sama Ne Ya Zo",
      tune: "When the trumpet of the Lord shall sound/ Roll Call"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 130,
      lyric:
          "1.\n Ran da Ubangiji za ya dawo\nDon ya karƃi Masu Bi,\nKo za ya iske ka kana tsaro?\nKo fitilarka 'na ci?\n\nKORUS\nSai dai ka tabbata ka yi shiri\nKo an kira ka yanzu,\nDomin ka sadu da Ubangiji,\nLalle, lalle ya fi kome kyau.\n\n2.\n Ran da ya tafi, ya ba ka aiki\nWanda za ka dinga yi.\nKo ka yi aikinsa da aminci?\nKo ka ƃata lokaci?\n\nKorus\n\n3.\n Ran da ka mayai da talents naka,\n\"Bawan kirki,\" za ya ce?\n\"Shiga ka huta a cikin gida,\"\nKo, \"Kai mugun bawa ne\"?\n\nKorus\n\n4.\n Ba daman shiri idan ka mutu,\nBa ka iya ruɗinsa.\nKada ka kasa ka shige hutu\nDomin rashin gaskiya.\n\nKorus\n",
      title: "130-Ran da Ubangiji Za Ya Dawo",
      tune: "When Jesus comes to reward His Servants"),
  Hymns(
      author: "",
      favorite: 0,
      id: 131,
      lyric:
          "1.\n Ka zo, Ka zo Immanuel\nKa fanshi ƴaƴan Isra’ila.\nDa ka fashe su daga bauta\nKa shirya musu yankin ƙasa ma\n\nKORUS\nMurna! Murna! Yi murna, dukanku !\nGa Allahnku, ya zo ya cece ku.\n\n2.\n Ka zo, ka zo, Immanuel\nKa kafa sabon Isra’ila\nDa muna cikin bautar Shaiɗan,\nAmma ka zo, ka tsinke sarƙoƙi\n\nKorus\n\n3.\n Ka zo, ka zo, Immanuel\nKa tara ƴaƴan Isra’ila\nMu muna zama da shirinmu\nHar ran da za ka zo ka ɗauke mu\n\nKorus\nMurna! Murna! Yi murna, dukanku !\nGa Allahnku, zai zo ya fyauce ku.\n\n",
      title: "131-Ka Zo, Ka Zo Immanuel",
      tune: "O Come O Come Emmanuel / Veni Emmanuel"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 132,
      lyric:
          "1.\n Ina bautar zunubai, Yesu ne mai kawo ceto.\nWa ya ba ni kwanciyar rai? Yesu ne mai kawo ceto\n\nKORUS\nBa wani na ke so, ya Yesu, Masoyina.\nBa wani taimako, Yesu ne mai kawo ceto.\n\n2.\n Yesu yana ƙaunata, Yesu ne mai kawo ceto.\nShi ya ɗauke laifina, Yesu ne mai kawo ceto.\n\nKorus\n\n3.\n Da Shaiɗan ya ɗaure ni, Yesu ne mai kawo ceto.\nShi ya kwance sarƙoƙi, Yesu ne mai kawo ceto.\n\nKorus\n\n4.\n Da fa matacce ne ni, Yesu ne mai kawo ceto.\nShi ya sake rayad da ni, Yesu ne mai kawo ceto.\n\nKorus\n\n5.\n Yesu na ke bi yanzu, Yesu ne mai kawo ceto.\nShi ya buɗe idanu, Yesu ne mai kawo ceto.\n\nKorus\n\n6.\n Cikin ikon jaraba, Yesu ne mai kawo ceto.\nShi ya sake halina, Yesu ne mai kawo ceto.\n\nKorus\n\n",
      title: "132-Ina Bautar Zunubai, Yesu Ne Mai Kawo Ceto",
      tune: "Nothing but the blood/ What Can Wash Away My Sin?"),
  Hymns(
      author: "A. P. Stirret",
      favorite: 0,
      id: 133,
      lyric:
          "1.\n Alhamdu ga Allah don Ɗansa, Yesu.\nYa ba da jininsa domin fansarmu,\nAmma dai ya tashi, ya koma Sammai .\nYa kan ba da Ruhu, da yawan kyautai.\n\nKORUS\nMadalla! Madlla! bari kowa ya ji.\nMadalla! Madalla! dukan kowa ya bi.\nKu zo wurin Allah ta wurin Yesu,\nYi masa godiya don Mai Cetonmu.\n\n2.\n Ya ceto cikakke, kyautar Allahnmu!\nKowane mai tuba, mai ba da gaskiya,\nKowane mai laifi, kome laifinsa,\nIn ya zo gun Yesu zai sami gafara.\n\nKorus\n\n3.\n Mu kuwa waƙar yabo ce mu ke ta yi.\nGa Allah don Ɗansa, shi ne masoyi.\nAmma za mu ƙara yin murna sarai,\nSa'ad da muka gan shi da ido sosai.\n\nKorus\n\n",
      title: "133-Alhamdu ga Allah Don Ɗansa, Yesu",
      tune: "To God be the Glory"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 134,
      lyric:
          "1.\n Suna nan, su tumaki tasa'in\nDa tara Iissafinsu,\nAmma ɗaya ta bace a garken nan,\nTa yi nisa da sauransu.\nIta kaɗai, ga dare ya zo,\nCan a jeji, ba taimako,\nCan a jeji, ba taimako.\n\n2.\n Ga waɗannan duka sun kwanta nan.\nKo su ba su isa ba?\nMai garke ya amsa, ko kaɗan,\nZan je neman ɗaya ɗin nan.\nCan ya tafi da azabar rai,\nCan ya iske ta, abin tausayi,\nCan ya iske ta, abin tausayi.\n\n3.\n Amma zafin wahalar da shi ya sha\nBa wanda ya taba ji.\nHar ya sami abinsa da kyar da rai,\nDa jinƙai ya ɗauke ta.\nDa ɗari da ciwo ya iske ta can\nA bakin mutuwa, tinkiyan nan,\nA bakin mutuwa, tinkiyan nan.\n\n4.\n Ga jini a hanya a sarari,\nYa bi sawun makiyayi.\nAi, ya zubar da shi garin hanzari,\nDomin zafin ƙaunarsa.\nƘaya ta soke shi, jeji ya bi,\nDutse ya buga, ba ganin gari.\nDutse ya buga, ba ganin gari.\n\n5.\n Alhamdu ga Allah mai runduna,\nAlhamdu ga Almasihu.\nMala'iku na Sama sun ɗaukaka shi\nMu ma, muna yin godiya.\nMuna yabonsa, ya cece mu,\nMu, muka ƃace, ya komo da mu,\nMu, muka ƃace, ya komo da mu.\n",
      title: "134-Suna Nan, Su Tumaki Tasa'in Da Tara",
      tune: "There were ninety and nine"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 135,
      lyric:
          "1.\n Wa zai ceci duniya? Yesu ne, Yesu ne.\nWa zai kawo gafara? Yesu ne, Yesu ne.\nDā ya sha wahalarmu, dā ya ɗauke laifinmu,\nHar ya mutu dominmu, Yesu ne, Yesu ne.\n\n2.\n Wa zai kau da zunubai? Yesu ne, Yesu ne.\nWa zai ba mu sabon rai? Yesu ne, Yesu ne.\nShi kaɗai Ɗan Allah ne, shi mai iko duka ne,\nShi mai rai har abada, Yesu ne, Yesu ne.\n\n3.\n Wa zai fyauce mu a nan? Yesu ne, Yesu ne.\nWa zai kai mu Sama can? Yesu ne, Yesu ne.\nYana can wurin Uban, yana roƙo dominmu,\nZai kuwa dawo duniyan nan, Yesu ne, Yesu ne.\n",
      title: "135-Wa Zai Ceci Duniya? Yesu Ne, Yesu Ne",
      tune: "Jesus saves"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 136,
      lyric:
          "1.\n Yesu ne Mai Ceton duniya,\nYesu ne Mai Cetonmu.\nShi ya mutu domin dukan\nMasu zunubi a nan.\n\nKORUS\nYesu ne Mai Ceton duniya,\nYesu ne Mai Cetonmu.\nShi ya mutu domin duka,\nSa'an nan ya tashi kuwa.\n\n2.\n Di mun ƃata, ya neme mu,\nTumakinsa ƃatattu,\nShi ya ƙaunace mu duka,\nShi ya kawo mu garkensa.\n\nKorus\n\n3.\n Mun yi ciwon zunubanmu,\nYa warkad da dukanmu.\nBa ma gani, mun ji tsoro,\nYa fisshe mu lafiya.\n\nKorus\n\n4.\n Kuma duhu ya dame mu,\nƁacin zuciya ya zo.\nYesu ne ya kawo haske,\nShi ya kawo kwanciyar rai.\n\nKorus\n\n5.\n Za ya riƙa kiyaye mu.\nHar ya sauko dominmu,\nZa ya kai mu can wurinsa,\nNasa ne har abada.\n\nKorus\n",
      title: "136-Yesu Ne Mai Ceton Duniya",
      tune: "I will sing the wondrous story/ Bilhorn"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 137,
      lyric:
          "1.\n In ƙyautar Allah ku ke so,\nKu manya duk da yara ma,\nYesu shi ne ya shirya ta,\nYanzu kuwa ta ke samuwa.\n\nKORUS\nYana so ku ku zo\nWurinsa, karƃar gafara\nTun kuna nan a duniya,\nTun shi ma yana samuwa.\nYana so ku ku zo\nWurinsa, karƃar gafara.\n\n2.\n Ko kuɗi ne bukatarku,\nSutura ma, ko ci, ko sha,\nSai da dalili. Shi ya sa:\n\"Dalili ya fi dukiya.\"\n\nKorus\n\n3.\nA wajen ceto haka ma,\nTafarkin samu, Yesu ne.\nKo ɗaya ba mai rasawa\nA cikin dukan Masu Bi.\n\nKorus\n\n",
      title: "137-In Kyautar Allah Ku Ke So",
      tune: "O happy day that fixed my choice/ Rimbault"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 138,
      lyric:
          "1.\n Labarin gafara da daɗin ji ya ke.\nShi mu ke bayarwa, iawabin Allah ne.\n\nKORUS\nYabonka ne, ya Allah, wannan ya kamata\nJama'a su yi maka don gafara.\n\n2.\n Alherin gafara an shirya shi sosai,\nDa damar samuwa a wurin duk mai rai.\n\nKorus\n\n3.\n Dalilin gafara, Ɗan Allah aikakke,\nAzabarmu ya sha a jikin gungume.\n\nKorus\n",
      title: "138-Labarin Gafara Da Daɗin Ji Ya Ke",
      tune: "I need Thee every hour"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 139,
      lyric:
          "1.\n Sai in ba ku labarin nan, zance mai ba da rai,\nBan da ragi ma ko kaɗan, zance mai ba da rai.\nAikakke na Allah shi ya sha wahala.\n\nKORUS\nYesu ne shi, Yesu ne shi, zance mai ba da rai.\nYesu ne shi, Yesu ne shi, zance mai ba da ral.\n\n2.\n Daɗin zama bai nema ba, zance mai ba da rai.\nGirman kansa ya ƙyale ma, zance mai ba da rai.\nAikakke na Allah shi ya sha wahala.\n\nKorus\n\n3.\n Zancen nan mai aminci ne, zance mai ba da rai.\nYa kamata ku karƃa dai, zance mai ba da rai. Wani ne ya mutu don ya ba mu hutu.\n\nKorus\n\n4 Sai mu ba da labarin nan, zance mai ba da rai\nBan da ragi ma ko kaɗan, zance mai ba da rai.\nAlmasihu Yesu, Allah ya tashe shi.\nƊaukaka shi Allah ya yi, Yesu mai ba da rai.\nƊaukaka shi Allah ya yi, Yesu mai ba da rai.\n\n",
      title: "139-Sai In Ba Ku Labarin Nan, Zance Mai Ba da Rai",
      tune: "Wonderful words of life"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 140,
      lyric:
          "1.\n Zamanin dā, Almasihu Ɗan Allah\nYa ji tausayinmu, mu ƃatattu.\nShi ma ya rabu da gidan Ubansa\nYa shigo duniyan nan tare da mu.\n\nKORUS\nZuwan Mai Ceto ƙauna ta sa shi,\nAllah ya bayar don duniya duk,\nKada su ƃata, sai dai su sami\nCeto da rai kuwa na har abada.\n\n2.\n Zaman Mai Ceto a wurin mutane\nDa yawan so da alheri ya ke.\nKowa ya nema ya gamu da Yesu.\nYa dai same shi mai taimako ne.\n\nKorus\n\n3.\n Zaman nan nasa na aikin alheri,\nBa shi da aibi, mai ƙauna ne shi.\nRansa ya bayar don fansar mutane,\nAllah ya karƃa, mai tsarki ne shi.\n\nKorus\n\n4.\n Domin zunubinmu Yesu ya mutu,\nBayan ya mutu ma sai binnewa.\nShi ma ya tashi a rana ta uku\nKāna ya hau Sama wurin Uba.\n\nKorus\n\n5.\n Yesu Mai Cetonmu zai sake zuwa,\nHaka alkawari wanda ya yi.\nSa zuciyarmu dai kowace rana,\nBari ya iske mun shirya sosai.\n\nKorus\n",
      title: "140-Zamanin Dā, Almasihu Ɗan Allah",
      tune: "One day when Heaven"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 141,
      lyric:
          "1.\n Ga duhu dayawa a duniyan nan,\nZunubi ya kawo duhu.\nAmma hasken darajar Yesu ya zo,\nYa haskaka zukatanmu.\n\nKORUS\nHaske ya zo a duniyan nan,\nBari ya shiga zuciyarka\nDā, cikin duhu na ke, amma\nNa zo wurin hasken Yesu.\n\n2.\n Ba duhu a wurin Yesu, ko kaɗan,\nDomin shi Mai Gaskiya ne.\nMu bi cikin haskensa, kusa da shi,\nZai haskaka zukatanmu.\n\nKorus\n\n3.\n Zunubi ya duhunta zuciyarka?\nKa zo wurin hasken Yesu.\nKa ba da gaskiya ga Yesu kaɗai,\nZai haskaka zuciyarka.\n\nKorus\n\n4.\n Akwai haske can cikin gidan Allah.\nBa duhu a cikin Sama,\nGama Almasihu shi ne haske can\nA cikin gidan daraja.\n\nKorus\n",
      title: "141-Ga Duhu Dayawa A Duniyan Nan",
      tune: "The light of the world is Jesus /The Whole World"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 142,
      lyric:
          "1.\n Jinin Yesu mai daraja yana zubowa\nDomin fansar duk jama'a, domina.\n\nKORUS\nJinin Yesu mai daraja za ya tsarkake\nWanda za ya zo ya karƃa, kyauta ce.\n\n2.\n Ko da zunubanku sun yi kamar mulufi,\nCikin jinin Almasihu za su fita.\n\nKorus\n\n3.\n Ba abin da za mu biya, duk ya ƙarasa\nYesu yana miƙa mana gafara.\n\nKorus\n\n4.\n Cikin wuri mafi tsarki sai mu shiga fa,\nDon ta wurin jinin Yesu mun tsarkaka.\n\nKorus\n\n5.\n Kome kokawa da Shaiɗan, akwai nasara.\nGama cikin jinin Yesu iko 'na nan.\n\nKorus\n\n6.\n Ran da za mu shiga Sama, sai da jinin nan,\nZa mu yabi sunan Yesu ranan nan.\n\nKorus\n",
      title: "142-Jinin Yesu Mai Daraja Yana Zubowa",
      tune: "Precious Blood"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 143,
      lyric:
          "1.\n In za ka bi Mai Cetonmu,\nLura da wannan tun yanzu,\nBa za ya karƃi kome ba,\nIn ba ka ba shi ranka ba.\n\n2.\n Aikinka kawai ba ya so,\nBa ya bukatar taimako.\nIn ba ka ƙaunace shi ba,\nAikinka ba zai karƃa ba.\n\n3.\n Kayanka kuma ba ya so,\nBa domin kaya ba ya zo.\nIn ba ka ba shi ranka ba,\nKayanka ba zai karƃa ba.\n\n4.\n Gama ya bar gidansa can,\nYa ba da jininsa a nan,\nGarin ya sayi zuciyarka.\nBar shi ya karƃi mulkinta.\n",
      title: "143-In Za Ka Bi Mai Cetonmu",
      tune: "Jesus shall reign /Duke Street /Truro /Rimington"),
  Hymns(
      author: "Allahkyauta Illiya",
      favorite: 0,
      id: 144,
      lyric:
          "1.\n Allah. ya ba mu hasken rai domin mu haskaka,\nJama'a duk su gaskata Yesu Ɗan Allah ne.\n\n2.\n Shi kuwa ya nuna ƙaunarsa a cikin hasken nan.\nYa aiko Ɗansa, tilo ne, Ya sauko duniyan nan.\n\n3.\n Wanda ya ƙyale hasken nan, ya fi son duhunsa.\nBa zai ga fuskar Allah ba sai cikin fushinsa.\n\n4.\n Yanzu ku tuba, bi shi dai, domin ku sami rai.\nBa wata hanyar ceto fa, sai Yesu shi kaɗai.\n\n5.\n Ya Yesu, ba mu ikonka mu furta ƙaunarka,\nMu shaida. kai ne cetonmu da ƙarfin zuciya.\n\n",
      title: "144-Allah. Ya Ba Mu Hasken Rai Domin Mu Haskaka",
      tune: "God, make my life a little light/ Sawley/ Azmon"),
  Hymns(
      author: "H. E. Smith",
      favorite: 0,
      id: 145,
      lyric:
          "1.\n Cikin raina ga wahala, hutu na ke so,\nYesu shi kaɗai ya iya taimako.\n\n2.\n Yana kira, yan kira, yana nemana.\n\"Zo gare ni, za ka sami hutawa.\"\n\n3.\n \"Ka gaji da aikin Shaiɗan? Bautarsa da wuya\nZo gare ni, dukan fansa ni na biya.\"\n\n4.\n \"Cikin zuciya ko da sauran shakka har wa yau?\nDuba, jinina na bayar, sai ka zo.\"\n\n5.\n \"Wanda ya ke zuwa gare ni, ba na korarsa,\nHar da kowane mai neman gafara.\"\n\n6.\n Yesu, ina so in bi ka, zama bawanka.\nKai ne yau har muddar raina Sarkina.\n\n",
      title: "145-Cikin Raina Ga Wahala, Hutu Na Ke So",
      tune: "Art thou weary?/St. Stephen"),
  Hymns(
      author: "",
      favorite: 0,
      id: 146,
      lyric:
          "1.\n Ko kun zo gun Yesu domin gafara?\nYana kiranmu duka mu zo.\nShi ya ba da ransa domin dukanmu,\nSai ku zo wurin Yesu, ku zo.\n\nKORUS\nSai ku zo, sai ku zo,\nWurin Yesu Mai Ceto, ku zo.\nShi zai tsarkake ku daga zunubi,\nSai ku zo wurin Yesu, ku zo.\n\n2.\n Kome yawan laifi fa zai wanke ku,\nSai ku zo wurin Yesu tun yanzu.\nZa ku sami murna kuwa da kwanciyar rai,\nSai ku zo wurin Yesu, ku zo.\n\nKorus\n\n3.\n Almasihu Yesu yana jiranmu.\nCikin gidan Ubansa ya hau,\nYana shirya wuri don ya karƃe mu,\nSai ku zo wurin Yesu, ku zo.\n\nKorus\n\n",
      title: "146-Ko Kun Zo Gun Yesu Domin Gafara?",
      tune: "Have you been to Jesus?"),
  Hymns(
      author: "E. P. Miller",
      favorite: 0,
      id: 147,
      lyric:
          "1.\n Kun ji shela a ke yi, Halleluya!\nIn ji Yesu Ubangijina,\nSai ku duba, ku yi rai, Halleluya!\nA Linjila aka rubuta.\n\nKORUS\nKu yi rai. . . . . har abada..... !\nDuban Yesu, shi ne rai.\nSai ku duba, ku yi rai, Halleluya!\nI, alkawari na Allah ne.\n\n2.\n Allah ya yi ƙaunarmu, Halleluya!\nƘaunar Allah ne jawabin rai.\nDuba Yesu, ku yi rai, Halleluya!\nBa Mai Ceto, sai dai shi kaɗai.\n\nKorus\n\n3.\n Ana miƙa muku rai, Halleluya!\nRai har abada fa kyauta ne.\nFaɗin Yesu ne kun ji, Halleluya!\nDomin haka ku sakankance.\n\nKorus\n",
      title: "147-Kun Ji Shela A Ke Yi, Halleluya!",
      tune: "Look and live/ I've got a Message"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 148,
      lyric:
          "1.\n Wanda ya ke neman ceto daga zunubi, Wanda ya ke so ya daina nufin zunubi,\nYa zo ya ji labarin wani, shi Mai Cetonmu\nSunansa Yesu ne.\n\nKORUS\nYesu, Yesu ne Mai Ceto,\nYesu, Yesu ne Mai Ceto,\nYesu, Yesu ne Mai Ceto.\nYesu, Mai Ceto ne.\n\n2.\n Ko ka yi ƙoƙari kome yawan famanka,\nBa ka iya kome don ka ceci ranka ba.\nMai Ceto guda ɗaya ne, tausayi gare shi kuwa,\nSunansa Yesu ne.\n\nKorus\n\n3.\n Zo, ka kasa kunne ga jawabina yanzu,\nSai ka nemi ceto wurin Ubangijinmu,\nBari neman kowa sai Mai Cetonmu kaɗai, Sunansa Yesu ne.\n\nKorus\n",
      title: "148-Wanda Ya Ke Neman Ceto Daga Zunubi",
      tune: "Our God is marching on/ Battle Hymn of the Republic"),
  Hymns(
      author: "E. M. Paddon",
      favorite: 0,
      id: 149,
      lyric:
          "1.\n Ya ku zukatan mutane,\nRashin sani kuka yi,\nKamar ƃatattun tumaki,\nWurin kiwo ku ke ki.\n\n2.\n Ko kun san wani kamarsa?\nAlmasihu ya fi duk\nƘauna, taimako, har kuma\nCeto daga zunubi.\n\n3.\n Ya ku zukatan mutane,\nShakka ce ta hana ku?\nSai ku dogara gare shi\nWanda ya ke ƙaunarmu.\n\n4.\n Sai ku zo, ku ji, ku gwada,\nYesu mai aminci ne.\nMaimakonmu shi ya cika\nNufin Ubanmu daidai.\n\n5.\n Cikin Yesu mu ke samun\nSanin Allah, sanin rai.\nKuma aka ɗora masa\nDuk alhakin zunubai.\n\n6.\n Da kun gaskata maganar,\nDa ya sake halinku,\nDa ya sabonta zukata,\nDa ya zauna cikinku.\n\n7.\n Ƴanuwa, mu yi godiya,\nSai mu ƙaunace shi dai.\nBa dalilin tsoro kuma\nHar iyakar zamanai.\n\n",
      title: "149-Ya Ku Zukatan Mutane",
      tune: "Courage, Brother /Galilee"),
  Hymns(
      author: "",
      favorite: 0,
      id: 150,
      lyric:
          "1.\n Ya mutanen ƙasan nan, Musulmi da ama duk,\nSai ku kasa kunnenku ga labarin cetonku.\n\nKORUS\nYesu shi ne Mai Ceto wanda Allah ya aiko\nDomin fansar ƴan Adam daga bautar zunubi.\n\n2.\n Babu wani masoyi ko kuwa mai jin tausayi.\nSai dai Yesu haifaffe, shi kaɗai Ɗan Allah ne.\n\nKorus\n\n3.\n Jinin ransa ne ya bayar domin ceton duniya.\nShi ya ɗauke zunubai, shi ya buɗe ƙofar rai.\n\nKorus\n\n4.\n Sheƙa gunsa kuwa yanzu, ga shi yana jiranku.\nTuba daga laifinku, nemi ceto wurinsa.\n\nKorus\n\n",
      title: "150-Ya Mutanen Ƙasan Nan, Musulmi da Ama Duk",
      tune: "Christ receiveth sinful men"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 151,
      lyric:
          "1.\n Yesu yana bakin ƙofa,\nYana ta da murya,\nKu ƴan Adam duk, ku ji ni,\nShiga ƙofar hanyata.\n\n2.\n Ƙofan nan da wuyar shiga\nHanya kuwa ƙunƙunta ce,\nMasu shiga babu yawa,\nSai mutane kima ne.\n\n3.\n Dukan masu son adalci,\nDukan masu ƃacin rai,\nMasu ladabi a ruhu,\nSu ke shiga, su kaɗai.\n\n4.\n Ba da dukiya za mu je ba,\nBa kuwa da aniya ba,\nBa don aikin nagarta ba,\nSai da bangaskiya kaɗai.\n\n5.\n Wata ƙofa tana nan kuwa,\nMasu shiga sun .yi yawa,\nHanyan nan kuwa ke da fādi\nZa ta kai su halaka.\n\n6.\n Hanyan nan da sauƙi ta ke,\nGama babu kokawa\nDa jaraba ko mugunta,\nBa kuwa masu hanawa.\n\n7.\n Ba su ganin inda za su,\nBa tsammanin halaka.\nDuniya duk da ruɗin Shaiɗan\nSu kan rufe idonsu.\n\n8.\n Tashi, masu laifi duka,\nSai ku nemi gafara,\nSai ku karƃi kyautar Allah\nSai ku riƙa yin godiya\n\n",
      title: "151-Yesu Yana Bakin Ƙofa",
      tune:
          "Jesus calls us o'er the tumult / Courage, Brother/ Galilee /St. Andrew/"),
  Hymns(
      author: "",
      favorite: 0,
      id: 152,
      lyric:
          "1.\n Zo wurin Yesu, kada ku ƙi,\nYesu ke nemanmu duka mu bi.\nKada ku tsaya, yau sai ku ji,\nYesu ke kiranku.\n\nKORUS\nMurna, murna, murna za mu yi,\nMasu zuwa, Yesu ba ya ƙi.\nCan za mu taru tare da shi,\nCan cikin mulkinsa.\n\n2.\n Yara, in ji shi, su na ke so,\nDuk ƙanƙanana ku bar su su zo,\nKada ku hana wanda ya so,\nAmma ku karƃe su.\n\nKorus\n\n3.\nYesu ne hanya, Yesu ne rai,\nMakiyayi mai aminci ne dai.\nShi za ya bi da nasa sosai\nHar zuwa gidansa.\n\nKorus\n\n",
      title: "152-Zo Wurin Yesu, Kada Ku Ƙi",
      tune: "Come to the Saviour, make no delay"),
  Hymns(
      author: "",
      favorite: 0,
      id: 153,
      lyric:
          "1.\n Ga ƙofa nan, buɗaɗɗiya,\nMai Ceto ne ya buɗe.\nDukan mai so ya sami rai\nYa bi ta wannan ƙofa.\n\nKORUS\nGa ƙora dai buɗaɗɗiya\nMai Cetonmu ya buɗe ta.\nKu zo, mu je,\nKu zo ku shiga dai.\n\n2.\n Ga ƙofa nan a buɗe dai\nKowa ya iya shiga\nMawadaci da talaka\nNa kowace kabila.\n\nKorus\n\n3.\n Ku matso zuwa ƙofan nan,\nYanzu ne loton jinƙai.\nKu karƃi rawani na rai.\nKyauta ce wannan duka.\n\nKorus\n\n4.\n Mai Cetonmu ya mutu dai\nDomin ƴan Adam duka.\nYa buɗe ƙofar samun rai,\nDukan mai so zai samu.\n\nKorus\n\n",
      title: "153-Ga Ƙofa Nan, Buɗaɗɗiya",
      tune: "The gate ajar for me/ There is a Gate"),
  Hymns(
      author: "",
      favorite: 0,
      id: 154,
      lyric:
          "1.\n Yesu yana so ya zauna\nCikin zuciyar mutane.\nShi ya ɗauke laifofinka\nRanka kuma ya ke so.\n\nKORUS\nYesu yana bakin ƙofa,\nSai ka ji maganarsa,\nBuɗe ƙofar zuciyarka\nYi wa Yesu maraba.\n\n2.\n Akwai dama domin wasa\nAkwai damar aiki kuwa.\nBabu wuri domin Yesu\nCikin zuciyar mutane.\n\nKorus\n\n3.\n Yau ne lokacin alheri,\nAkwai ceto dominmu.\nKila gobe babu dama,\nGobe fa ba tamu ba.\n\nKorus\n\n4.\n Kwanakinmu kamar iska\nSuna wucewa da sauri.\nSai ka tuba, karƃi Yesu\nKamin ranar fushinsa.\n\nKorus\n\n",
      title: "154-Yesu Yana So Ya Zauna",
      tune: "Have you any room for Jesus?"),
  Hymns(
      author: "",
      favorite: 0,
      id: 155,
      lyric:
          "1.\n Akwai haske yanzu cikin zuciyata\nTun Yesu ya zo wurina.\nAka gafarta mini duk zunubina\nTun Yesu ya zo wurina.\n\nKORUS\nTun Yesu ya zo wurina,\nTun Yesu ya zo wurina,\nIna da kwanciyar rai,\nHar da murna sosai,\nTun Yesu ya zo wurina.\n\n2.\n Yanzu dai na ke da tabbataccen bege,\nTun Yesu ya zo wurina.\nWata rana zan zauna tare da shi can,\nTun Yesu ya zo wurina.\n\nKORUS\n\n3.\n Ɗanuwa, kana so ka yi murna kuma?\nBar Yesu ya cece ka yau.\nZa ya gafarta maka duk zunubanka.\nBar Yesu ya cece ka yau.\n\nKORUS NA ƘARSHE\nBar Yesu ya cece ka yau,\nBar Yesu ya cece ka yau,\nZa ka yi kwanciyar rai,\nHar da murna sosai,\nIn Yesu ya cece ka yau.\n\n",
      title: "155-Akwai Haske Yanzu Cikin Zuciyata",
      tune: "Since Jesus came into my heart /What a Wonderful Change"),
  Hymns(
      author: "",
      favorite: 0,
      id: 156,
      lyric:
          "1.\n Zo gare ni, masu kaya,\nMasu shan wahala ma,\nIn ji Yesu Mai Cetonmu,\nNi in ba ku hutawa.\n\nKORUS\nAkwai hutu kuwa mai daɗi,\nWurin Ubangijinmu.\nSai ku tashi, zo wurinsa,\nZai saukad da kayanku.\n\n2.\n Kayana fa marar nauyi,\nKarkiyata mai sauki ce.\nSai ku koya a wurina,\nZa ku sami hutawa.\n\nKorus\n\n3.\n Ga shi, kayanku da nauyi,\nKuna shan wahala kuwa,\nIn kun dogara ga Yesu,\nShi zai ɗauke kayanku.\n\nKorus\n",
      title: "156-Zo Gare Ni, Masu Kaya",
      tune: "In the rifted rock I'm resting"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 157,
      lyric:
          "1.\n Sai ku zo wurin Yesu, sai ku zo wurin Yesu,\nSai ku zo wurin Yesu, in dai ceto ku ke so.\n\n2.\n Haka Allah ya shaida, haka Allah ya shaida,\nHaka Allah ya shaida, \"Dana ne, shi na ke so.\"\n\n3.\n Sai ku bi wannan hanya, sai ku bi wannan hanya,\nSai ku bi wannan hanya, in dai ceto ku ke so.\n\n4.\n In kun mutu, ba dama, in kun mutu, ba dama,\nIn kun mutu, ba dama, in dai ceto ku ke so.\n\n5.\n Bayan wannan ba samu, bayan wannan ba samu,\nBayan wannan ba samu, in kun tashi kuna so.\n\n6.\n Za ku ce, \"Da mun sani,\" za ku ce, \"Da mun sani,\"\nZa ku ce, \"Da mun sani, da mun so a duniya. \"\n\n7.\n Yau ku yarda da Yesu, yau ku yarda da Yesu,\nYau ku yarda da Yesu, in dai ceto ku ke so.\n\n",
      title: "157-Sai Ku Zo Wurin Yesu",
      tune: "'Tis the old time religion"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 158,
      lyric:
          "1.\n \"Sai wata rana,\" in ji mutum,\n\"Sai wata rana, ni ma zan bi,\nBa dama tukuna, yanzu ba zarafi,\nSai wata rana dai, zan bi Yesu.\"\n\n2.\n \"Zo, zo, yanzu dai,\" in ji Yesu,\n\"Kada ka daɗe, ka lalace.\nIna ta kiranka, zo, zo a wurina,\nNi ne Mai Cetonka, Masoyinka.\"\n\n3.\n \"Sai wata rana,\" in ji Shaiɗan,\nSai wata tana, sai halaka.\nDama 'na wucewa, ƙofa 'na rufewa,\nSaura kaɗan, ayya-Gidan Wuta !\n\n",
      title: "158-Sai Wata Rana,In Ji Mutum",
      tune: "Almost Persuaded"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 159,
      lyric:
          "1.\n Alherin ceto, ga shi nan,\nAn shirya shi dayawa fa\nA wurin Yesu, Aikakken.\nMai nema ba zai rasa ba.\n\n2.\n Da ya ke yana kusa dai,\nShi kuma yana samuwa,\nKa jingina gare shi fa,\nDuk kwananka a duniya.\n\n3.\n Duk shakkarsa ka daina yi,\nƊan Allah ku ka ƙaryata.\nTun faɗa tasa tana nan,\nAlkawarin, ka gaskata.\n\n",
      title: "159-Alherin Ceto, Ga Shi Nan",
      tune: "All people that on earth do dwell /Old 100th"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 160,
      lyric:
          "1.\n Yesu, Mai Ceto, 'na kiranku yau,\nKo kuna ji, ko ba ku ji.\nGara ku kasa mar kunne da kyau,\nSanadin ceto ne shi.\n\nKORUS\nKo kuna ji, ko ba ku ji,\nYesu Mai Cetonku\nKiranku yau ya ke yi.\n\n2.\n Ba inda ba shi, shi mai kiran nao, Ba shakka dai, gaskiya ne.\nKusa da kowa, shi Mai Taimakon,\nGa shi kurkusa da ku.\n\nKorus\n\n3.\n Yaya sunansa, shi mai kiran nan?\nShi Yesu ne, shi Aikakke,\nKristi, Dan Allah ma, Maaaukaki,\nBabu kama tasa dai.\n\nKorus\n",
      title: "160-Yesu, Mai Ceto, 'na Kiranku Yau",
      tune: "Jesus is tenderly calling/ Stebbins"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 161,
      lyric:
          "1.\n Babban malami ne ya zo da dare\nA wurin Yesu don ya tambaye shi\nZancen hanyar ceto, har Yesu ya ce,\n\"A haife ka kuma.\"\n\nKORUS\nDole a haife ka, a sake haihuwarka,\nHakika, mai neman shiga Sama can\nDole haihuwa sau biyu.\n\n2.\n Ku mutane duk, kasa kunne a nan\nGa zancen Yesu Ubangijinmu dai,\nA bin da ya ce ya shafe mu duka,\n\"A haife ku kuma.\"\n\nKorus\n\n3.\n Idan kana so ka kai wurin Allah,\nKa huta a cikin gidan daraja,\nIdan kana son rai na har abada,\nA haife ka kuma.\n\nKorus\n\n4.\n \"Zancen nan da wuya, ba dama.\" ka ce\nKa zo wurin Yesu, zai yiwu sosai\nShi yana da ikon al'ajabi fa,\nZai sake haihuwarka.\n\nKorus\n",
      title: "161-Babban Malami Ne Ya Zo da Dare",
      tune: "Ye must be born again/ A ruler once came to Jesus by night"),
  Hymns(
      author: "R.M. Jacobson",
      favorite: 0,
      id: 162,
      lyric:
          "1.\n Zo, kowane mai zunubi, ka nemi gafara.\nYesu ya yi alkawari zai ba ka nasara.\n\nKORUS\nGaskata shi, gaskata shi, gaskata shi yau\nZai karƃe ka, zai karƃe ka, zai karƃe ka yau.\n\n2.\n Yesu ya ba da jininsa, jini mai daraja\nHar ma ya sha hukuncinka domin ka barata.\n\nKorus\n\n3.\n Yesu shi ne mai ba da rai, shi ne mai gaskiya,\nKa dogara gare shi dai, zai tsare zuciyarka.\n\nKorus\n\n",
      title: "162-Zo, Kowane Mai Zunubi, Ka Nemi Gafara",
      tune: "Only Trust Him"),
  Hymns(
      author: "E. P. Miller",
      favorite: 0,
      id: 163,
      lyric:
          "1.\n Babban mai magani 'na nan,\nYesu mai jin tausayinmu.\nMu je mu nemi warkewa\nA wurin Almasihu.\n\nKORUS\nYesu! suna mai daɗin ji,\nBa mai kamarsa, ba mai fi.\nIna sonsa kamar me !\nYesu Almasihu.\n\n2.\n Mai ba da lafiya ne shi,\nCuta fa zunubanmu.\nMu je mu roƙi gafara\nA wurin Almasihu.\n\nKorus\n\n3.\n Mai kawo gafara ne shi,\nYa ɗauke zunuhanmu,\nYa kai su bisa itacen\nA cikin jiki nasa.\n\nKorus\n\n4.\n Nan gaba za mu yabe shi,\nMun komo lafiyayyu.\nBa magani na zunubi\nSai wurin Almasihu.\n\nKorus\n\n5.\n Amma da dangi masu yawa\nDa ba su da cetonsa,\nMu sai mu je mu neme su,\nMu kai su wurin Yesu.\n\nKorus\n",
      title: "163-Babban Mai Magani 'Na Nan",
      tune: "The great physician now is here"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 164,
      lyric:
          "1.\n Ni mai laifi ƃatacce,\nJininka kaɗai ya isa.\nZunubaina sun yi yawa,\nJininka kaɗai ya isa\n\nYesu !  ga ni wurinka!\nCeto na ke nema.\nDauɗar zuciya, laifina,\nJininka kaɗai ya isa .\n\n2.\n Muryarka na riƙa ji,\n\"Jinina na bayar don ceto,\"\nAmsa na ke so in yi,\nDuk na rasa ikon roƙo,\n\nYesu! ga ni wurinka !\nCeto na ke nema.\nMuryarka ta ce da ni,\n\"Jinina na bayar don ceto.\"\n\n3.\n Nan na tsaya ƃaratacce,\nJininka kaɗai ya isa.\nNi yanzu ka tsarkake.\nJininka kaɗai ya isa.\n\nYesu! ga ni wurinka!\nTsarki na ke nema.\nRanka cikina kaɗai\nZa ya isa mini ceto.\n\n4.\n Bawanka na zama yau,\nJininka kaɗai ya saye ni,\nAikinka kaɗai in yi,\nNi ne naka, ka cece ni.\n\nYesu! ga ni wurinka!\nManzonka ka aika.\nJininka mai fansata,\nJininka kaɗai ya isa.\n\n",
      title: "164-Ni Mai Laifi Ɓatacce",
      tune: "Nothing but Thy blood/St. Oswald"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 165,
      lyric:
          "1.\n Wa ke da iko ya ceci duniya?\nBa mutum, ba mutum.\nWa ke da ƙauna ya ba da ransa?\nBa mutum, ba mutum.\nYesu Kristi ya ƙaunace mu,\nShi kaɗai ya ji tausayinmu.\nWa za ya ƙi ba da gaskiya gare shi?\nBa mutum, ba mutum.\n\n2.\n Wa ya ke so ya yi musun ransa?\nDukanmu, dukanmu.\nWa za ya yarda ya ƙi son kansa?\nDukanmu, dukanmu.\nMu ne nasa, mun ƙi bin wani.\nHar ya komo, mu jira shi.\nSauran abu mu maishe su wofi,\nDukanmu, dukanmu.\n\n",
      title: "165-Wa Ke Da Iko Ya Ceci Duniya?",
      tune: "No, not one/ There's not a friend"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 166,
      lyric:
          "1.\n Wannan labarin Yesu kullum in riƙa ji,\nLabarinsa mai daɗi, labari ba mai fi.\nTuna mini wannan kullum,\nMai saurin mantawa ne ni,\nLabarinsa mai daɗi, labarinsa mai fi.\n\nDaɗin labarin Yesu, daɗin labarin Yesu,\nDaɗin labarin Yesu, kullum in riƙa ji.\n\n2.\n Idan na faɗa laifi, labarinsa in ji,\nLabarin fansar ƴan Adam da shi kaɗai ya yi.\nIdan na ratse hanya wadda ta kai ni rai,\nIn komo kan labarin nan na Yesu mai ba da rai.\n\nWannan labarin Yesu, wannan labarin Yesu,\nWannan labarin Yesu, kullum in riƙa ji.\n\n3.\n Ba ni labarin Yesu, mai zunubi ne ni,\nLabarinsa mai daɗi, a hankali in ji.\nKada in fasa jinsa, labarin ƙaunarsa,\nƘauna mai girma ƙwarai, ƙauna ba iyaka.\n\nBa ni labarin Yesu, ba ni labarin Yesu,\nBa ni labarin Yesu, labarin ƙaunarsa.\n\n",
      title: "166-Wannan Labarin Yesu Kullum In Riƙa Ji",
      tune: "Tell me the old, old story/Evangel"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 167,
      lyric:
          "1.\n Ya Allah Uba, ga ni nan,\nBa kai ne ka kira ni ba?\nMai yalwar jinƙai, yafe ni,\nNa zo, na zo, ka cece ni.\n\n2.\n Ya Yesu, kai mai iko ne,\nAlheri, ceto naka ne.\nSai ka ji kukana yanzu,\nNa zo, na zo, Mai Cetona.\n\n3.\n Ya Ruhun gaskiya, Ruhun rai,\nNi ne na bata zuciyarka.\nA cikin rashin ƙarfina\nNa zo, na zo, ka cika ni.\n\n4.\n Ubangiji, Almasihu,\nƘaunarka ce ta jawo ni,\nBa za ka ƙi mai sonka ba,\nNa zo, na zo, ka karƃe ni.\n\n",
      title: "167-Ya Allah Uba, Ga Ni Nan",
      tune: "At ever e'er the sun was set"),
  Hymns(
      author: "",
      favorite: 0,
      id: 168,
      lyric:
          "1.\n Ya Almasihu, ga ni nan,\nNa zo gare ka ƃatacce.\nBa wanda za ya cece ni,\nBa taimako, sai kai kaɗai.\n\nKORUS\nGa ni nan, ga ni nan,\nYa Almasihu, ga ni nan.\nNa zo da kayan zunubi,\nKa kau da shi, ka wanke ni.\nGa ni nan, ga ni nan,\nYa Almasihu, ga ni nan.\n\n2.\n Ban zo da kuɗin fansa ba,\nBa kome nan sai zunubi,\nAmma na duba jininka,\nKa ji tausayi, ka karƃe ni.\n\nKorus\n\n3.\n An gama aikin cetona,\nGa jininka ya fanshe ni.\nYanzu na zama bawanka,\nHar abada ni naka ne.\n\nKorus\n",
      title: "168-Ya Almasihu, Ga Ni Nan",
      tune: "O happy day that fixed my choice"),
  Hymns(
      author: "",
      favorite: 0,
      id: 169,
      lyric:
          "1.\n Ya Yesu Ubangijina\nBa kome cikin hannuna,\nBa hujja domin laifina,\nMai biyan fansa, na zo, na zo.\n\n2.\n Alkawarinka na ke bi.\nBa ka korar mai zunubi,\nMai tuba za ka karƃe shi,\nMai biyan fansa, na zo, na zo.\n\n3.\n Dube ni marar ƙarfi fa.\nKa biya bukatar ruhuna.\nAddu'ar kowa ba ka ƙi,\nMai biyan fansa na zo, na zo.\n\n4.\n Ba ni da kome ban da kai,\nKo kyau ko gaskiya ko rai,\nKai ne Mai Ceto, kai kaɗai,\nMai biyan fansa, na zo, na zo.\n\n5.\n Ƙaunarka marar iyaka,\nTa sa ni cikin hanyarka,\nNi bawanka har abada,\nMai biyan fansa, na zo, na zo.\n\n",
      title: "169-Ya Yesu Ubangijina Ba Kome Cikin Hannuna",
      tune: "Just as I am/Woodworth"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 170,
      lyric:
          "1.\n Yesu, Dutsen Cetona, bar in ƃuya wurinka.\nJini, fansar mutane; ruwa, tsarkakewar rai,\nGa su, suna zubowa daga cikin zuciyarka.\n\n2.\n Hannu wofi fa na zo, jinƙanka ne na ke so.\nDukan zuciya, dukan rai, duk ƙazanta ne kaɗai.\nGa ni wurin giciyenka, ina neman gafara.\n\n3.\n Kome yawan aikina, bai isa cetona ba.\nKo ban huta ba daɗai, kullum ina hawaye,\nDukan wannan banza ne, kai kaɗai Mai Ceto ne.\n\n4.\n Ran da za a binne ni, ko kuwa za a fyauce ni,\nRan da zan bar duniyan nan, Zan dai gan ka zaune can,\nAmma kamin ranan nan, bar in ƃuya wurinka.\n",
      title: "170-Yesu, Dutsen Cetona, Bar In Ɓuya Wurinka",
      tune: "Rock of ages, cleft for me/ Toplady"),
  Hymns(
      author: "",
      favorite: 0,
      id: 171,
      lyric:
          "1.\n Yesu Ubangijinmu ne,\nMun ƃuya cikin ƙaunarsa.\nBa zai kori mai tuba ba,\nMu zo mu ba da gaskiya.\n\nKORUS\nI, Yesu ne Mai Ceto, mai ƙaunarmu,\nMu karƃe shi, mu karƃe shi.\nYa ba da ransa domin laifinmu,\nZa shi yi mana gafara.\n\n2.\n Dā, nan a cikin duniya,\nMutane suka ƙi binsa,\nAmma mu dai mu karƃe shi,\nMu zama Masu Bin Yesu.\n\nKorus\n\n3.\n Ko muna yi ta aikinsa,\nAyyuka ba su cetonmu,\nSai dai mu ba da gaskiya\nGa mutuwar da ya yi dominmu.\n\nKorus\n\n4.\n Yesu shi ne mai zuwa kuwa,\nI, za ya komo duniyan nan.\nMu yi shiri don zuwansa,\nShi kai mu zuwa Sama can\n\nKorus\n\n",
      title: "171-Yesu Ubangijinmu Ne",
      tune: "A shelter in the time of storm/The Lord is Our Rock"),
  Hymns(
      author: "Mrs. P. Ummel",
      favorite: 0,
      id: 172,
      lyric:
          "1.\n Ubangiji ya ce, ku zo gare ni duk\nDa kayan laifinku, zan ba ku hutawa.\n\nKORUS\nShi ya biya duk domin laifina.\nYesu ya hutad da ni, ya ba ni sabon rai.\n\n2.\n Yesu, na gaskata ikonka, shi kaɗai,\nZai sāke zuciyata, ya ba ni sabon rai.\n\nKorus\n\n3.\n Ko kyau ba ni da shi, ban isa kome ba,\nAmma jinin Yesu ya wanke zuciyata.\n\nKorus\n\n",
      title: "172-Ubangiji Ya Ce, Ku Zo Gare Ni Duk",
      tune: "Jesus Paid it all/ I Hear the Saviour Say"),
  Hymns(
      author: "",
      favorite: 0,
      id: 173,
      lyric:
          "1.\n Allah ya yi alkawari zancen ceto\nGa mai ba da gaskiya ga Ɗansa Yesu.\n\nKORUS\nHalleluya, an gama, ina ba da gaskiya,\nAn cece ni ta wurin jinin Yesu.\nHalleluya, an gama, ina ba da gaskiya,\nAn cece ni ta wurin jinin Yesu.\n\n2.\n Ko tafiyarmu tana da wuya a nan,\nLalle Yesu zai kai mu a wurinsa can.\n\nKorus\n\n3.\n Akwai waƙar da za mu yi cikin Sama,\nKuma yabonsa za mu yi har abada.\n\nKorus\n",
      title: "173-Allah Ya Yi Alkawari Zancen Ceto",
      tune: "Hallelujah, 'tis done /Tis the promise of God"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 174,
      lyric:
          "1.\n Na ji kiranka yanzu, ya Ubangijina.\nA cikin jininka, Yesu, ka wanke zuciyata.\n\nKORUS\nUbangijina, ga ni nan, na zo,\nSai ka ji addu'ata, ka ba ni taimako.\n\n2.\n Ko na zo da zunubi, da rashin ƙarfina,\nNa sani kai ba za ka ƙi ka tsarkake ni ba.\n\nKorus\n\n3.\n A wurinka kaɗai akwai murna sosai.\nKai ne ka ba ni kwanciyar rai da sanin gaskiya.\n\nKorus\n\n4.\n Ina so in ci gaba, in zama cikakke,\nIn koyi irin halinka, in ɗauki giciye.\n\nKorus\n\n",
      title: "174-Na Ji Kiranka Yanzu, Ya Ubangijina",
      tune: "I am coming, Lord/I hear thy Welcome Voice"),
  Hymns(
      author: "F. D. Hein",
      favorite: 0,
      id: 175,
      lyric:
          "1.\n Jinin Yesu ya ba da shi saboda laifinmu.\nKu masu laifi, tuba dai. ku nemi gafara.\n\n2.\n Wanda ya juyo wurinsa, ya faɗi laifinsa,\nBa za ya rasa ceto ba, amma ya sami rai.\n\n3.\n Mutane duk ku zo yanzu, ku bi Mai Cetonku,\nKu shaida yawan ƙaunarsa har duniya duk ta ji.\n\n4.\n Ya Yesu, muna yabonka domin ka cece mu.\nYanzu ka ba mu Ruhunka shi kai mu wurinka.\n\n",
      title: "175-Jinin Yesu Ya Ba da Shi Saboda Laifinmu",
      tune: "There is a fountain/Cowper"),
  Hymns(
      author: "",
      favorite: 0,
      id: 176,
      lyric:
          "1.\n Na ta da idona wurin Mai Cetona,\nWurin Yesu.\nNa bata hanya fa, na faɗa jaraba,\nSai ka ji roƙona, Mai Cetona.\n\n2.\n Na faɗi laifina, na faɗi aibina\nWurin Yesu.\nZuciyata mai dauɗa, ka iya wankewa.\nSai ka ji roƙona, Mai Gafara.\n\n3.\n Shugabance ni dai a wannan duniya,\nIna addu'a.\nKwaɗayin zuciyata ya kawo jaraba.\nKa iya gyartawa, Mai Cetona.\n\n4.\n A ranar mutuwa, sai ka bishe ni kuwa\nHar Sama can.\nSaboda giciyenka, ina da fansata,\nNan gaba na yarda in bi Yesu.\n\n",
      title: "176-Na Ta da Idona Wurin Mai Cetona",
      tune: "My faith looks up to Thee/ Olivet"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 177,
      lyric:
          "1.\n Yesu, ja ni wurinka, wurinka sai daɗi,\nKyautar rai har abada, ɗaukar zunubaina.\n\nKORUS\nWurinka, Masoyi, ina so in zauna,\nKo yanzu a duniyan nan, bayan wannan, Sama.\n\n2.\n Ga ni nan, mai tsoro ne, gama na yi laifi,\nSai ka yafe ni yanzu, sake mini hali.\n\nKorus\n\n",
      title: "177-Yesu, Ja Ni Wurinka, Wurinka Sai Daɗi",
      tune: "Jesus, keep me near the Cross"),
  Hymns(
      author: "",
      favorite: 0,
      id: 178,
      lyric:
          "1.\n Yesu mai jin tausayi, ga ni nan a gabanka.\nNi na cika zunubi, laifina ya kā da ni.\nBabu wani Mai Ceto sai dai kai. ya Almasihu.\n\n2.\n Kome niyyar da na yi garin zaman adali,\nKo ƙoƙari na ke yi garin barin zunubi\nDuk ya kasa cetona, sai ka sake halina.\n\n3.\n Ban da kuɗin fansata, ga ni nan a wurinka.\nSai ka kau da laifina da jininka, Ɗan Allah.\nSai ka ba ni sabon rai har in bi ka, kai kaɗai.\n\n4.\n Cikin duniyan nan yanzu haɗa ni da cetattu.\nKome wuya, sai in bi kusa da Ubangiji,\nBa da ikon kaina ba, sai da ikon Ruhunka.\n",
      title: "178-Yesu Mai Jin Tausayi, Ga Ni Nan A Gabanka",
      tune: "Rock of ages, cleft for me/ Toplady"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 179,
      lyric:
          "1.\n Na ji kiranka, ya Mai Cetona,\nNa ji zancen ƙaunarka,\nDa gafararka daga zunubi\nDa ka yi dominmu duk.\n\nKORUS\nI, zan bi ka, ya Mai Cetona,\nZan dai kama hanyarka,\nYau na zo wurinka domin gafara,\nSai ka ji roƙona yau.\n\n2.\n Na gaji da bin hanyoyin Shaiɗan\nNa gaji da bautarsa,\nBa ya kyauta wa masu binsa fa,\nMutuwa ce ladansa.\n\nKorus\n\n3.\n Ina neman murna da kwanciyar rai,\nIna neman gafara,\nBan same su ba cikin duniya\nSai a wurinka kaɗai.\n\nKorus\n\n4.\n Duk wahalar duniya da zafinta\nWanda Masu Bi ke ji,\nBa ya kai ga bege na daraja\nWanda ya ke cikinka.\n\nKorus\n\n",
      title: "179-Na Ji Kiranka, Ya Mai Cetona",
      tune: "I am Thine, O Lord"),
  Hymns(
      author: "",
      favorite: 0,
      id: 180,
      lyric:
          "1.\n A cikin Yesu na sami rai, a cikinsa kaɗai,\nSalama kuwa da kwanciyar rai, murna ba fasawa.\n\nKORUS\nYesu shi ne Mai Cetona, ba wani wanda na fi so.\nSalama, murna, kwanciyar rai, sai cikin Almasihu.\n\n2.\n Raina bai sami hutu ba a cikin duniyan nan,\nAmma ƙaunar Mai Cetona ta hutasshe ni nandanan.\n\nKorus\n\n3.\n Dā mutane suka kashe shi, amma ya tashi kuwa.\nShi kuma za ya dawo nan, zai karƃi mulkinsa.\n\nKorus\n\n4.\n Mai zuwa ba ya korarsa, mai tuba kuwa ba ya ƙi.\nKuma mai ba da gaskiya, Yesu zai cece shi.\n\nKorus\n",
      title: "180-A Cikin Yesu Na Sami Rai, A Cikinsa Kaɗai",
      tune: "None but Christ can satisfy/ O Christ, in Thee my soul has found"),
  Hymns(
      author: "W.A. Thompson",
      favorite: 0,
      id: 181,
      lyric:
          "1.\n A cikin zuciyata na ji muryar Mai Cetona.\n\"Ka zo gare ni nan\", ta ce, \"In ba ka hutawa\".\nNa zo gun Yesu hakanan, da zunubi mai yawa,\nYa saukar mini fa da su, ya ba ni warkarwa.\n\n2.\n Muryar ta kuma ce da ni, \"Ga ruwan rai na bayar.\nKa zo, ka sunkuya, ka sha, ka daina ƙishirwa.\"\nNa zo gun Yesu fa, na sha daga rijiyar rai.\nKishi ya ƙare, na natsu, raina ya wartsake.\n\n3.\n Muryar Mai Cetona ta ce, \"Ni hasken duniya ne.\nWanda ya zo gun haskena, ransa zai tsarkake.\"\nNa zo na shiga haskensa, ya rayad da ruhuna,\nHar abada kuwa nan na ke gun Yesu, Sarkina.\n\n",
      title: "181-A Cikin Zuciyata Na Ji Muryar Mai Cetona",
      tune: "I heard the voice of Jesus / Vox Dilecti /Kingsfold"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 182,
      lyric:
          "1.\n Da cuta da gajiya a jeji can na ke,\nSai Yesu ya same ni, ya rungume ni fa.\nYa sa ni cikin garkensa da farinciki mai yawa.\n\nKORUS\nƘauna ta neme ni, jini ya saye ni,\nJinƙai marar iyaka ne fa!\nJinƙan Yesu, ba misalinsa!\n\n2.\n Miyagun zunubaina ya wanke mini duk.\nYa kori tsoron raina ya ba ni ƙaunarsa,\nYa ce da ni ni nasa ne, ba wanda za ya raba mu.\n\nKorus\n\n3.\n Azabar da ta samo gafarar laifina,\nJininsa da ya wanke ƙazantar zuciyata,\nIna misalin raɗaɗi wanda ya sha saboda ni!\n\nKorus\n\n4.\n Yanzu a nan gabansa a cikin haskensa,\nGun Yesu na ke zaune, Yesu Mai Cetona.\nA ƙare dukan yabonsa? Ko rabi ba na iyawa.\n\nKorus\n\n5.\n Gabansa na ke zaune da daɗin rai yanzu.\nZuwansa na ke jira domin ya kira ni.\nA Sama can in tarbe shi wanda ya zo ya cece ni.\n\nKorus\n",
      title: "182-Da Cuta da Gajiya A Jeji Can Na Ke",
      tune: "O, the love that sought me/ In Tenderness He sought Me"),
  Hymns(
      author: "J. F. Cotton",
      favorite: 0,
      id: 183,
      lyric:
          "1.\n Cikin Yesu Almasihu zan dogara.\nAikin ceto duk ya cika, zan dogara,\nBa a cikin aiki nawa,\nKo a cikin nagartata,\nSai dai cikin aikin Yesu zan dogara.\n\n2.\n Cikin giciyen Almasihu, ga gafara.\nKo mutane ba sa yarda, ga gafara.\nFansarmu wurinsa ta ke,\nAlmasihu Mai Cetonmu,\nGiciyen ya kai mu gunsa, ga gafara.\n\n3.\n Jinin Ubangiji Yesu ya wanke ni.\nJininsa mai daraja ne, ya wanke ni.\nLaifina mai dauɗa baki,\nJininsa ya tsarkake ni.\nCikin jininka, ya Yesu, ka wanke ni.\n\n4.\n Cikin ƙaunar Almasihu, ga hutawa.\nTa fi ƙaunar iyayenmu, ga hutawa.\nƘaunarsa fa ba kamarta.\nKo zunubi, ko jaraba,\nYesu ne zai ci nasara, ga hutawa.\n\n5.\n Zuwan Yesu Almasihu na gaskata.\nBisa ga alkawarinsa, shi ne zai dawo.\nZo da sauri, Ubangiji,\nSake halina da jiki,\nTaka ce sarautar kome har abada.\n\n",
      title: "183-Cikin Yesu Almasihu Zan Dogara",
      tune: "All will be well /Southgate"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 184,
      lyric:
          "1.\n Ya Yesu, kayan adona\nJininka ne da giciyenka.\nKo duniya dai ta yi gobara,\nYafe da waɗannan zan tsaya.\n\nKORUS\nKan Yesu, Fan Ceto, na tsaya,\nBa wani wurin rai, ko ɗaya.\nBa wani wurin rai, ko ɗaya.\n\n2.\n Ko zunubaina sun yi yawa\nHar ba mai iya ƙirgawa,\nBa wanda ba a shafe ba\nRan da ka ba da jininka.\n\nKorus\n\n3.\n Dabarun duniya suna nan,\nDabarun banza na Shaiɗan.\nTawa dabara ɗaya ce,\nCetona jinin Yesu ne.\n\nKorus\n\n4.\n Domin shari'ar Lahira,\nYesu, na fake wurinka.\nBan duba nawa aiki ba,\nGare ka ne na dogara.\n\nKorus\n\n5.\n A ƙofar Sama, izinina\nSai jininka da giciyenka.\nKo gaban kursiyi, murnata\nJinin Yesu da ƙaunarsa.\n\nKorus\n\n",
      title: "184-Ya Yesu, Kayan Adona  Jininka Ne",
      tune: "My hope is built on nothing less /Solid Rock"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 185,
      lyric:
          "1.\n Yesu Mai Ceto, zo wurinmu,\nMu za mu bi ka har abada.\nKwashe zunubi, tsabtad da mu,\nKa ba mu rai na har abada.\n\nKORUS\nYesu Mai Ceto, Mai Cetonmu,\nZa mu yabe ka har abada.\nYesu Mai Ceto, Mai Cetonmu,\nMā ba ka girma har abada.\n\n2.\n Yesu Mai Ceto, ka cece mu,\nƘaunataccenmu har abada.\nMagadan Sama, ka maishe mu,\nƳaƴa na Uban har abada.\n\nKorus\n\n3.\n Yesu Mai Ceto, kai mu ke so,\nZa ka karƃe mu har abada.\nKai, kana zuwa don Masu Bi,\nMa zauna tare har abada.\n\nKorus\n\n",
      title: "185-Yesu Mai Ceto, Zo Wurinmu",
      tune: "Blessed Assurance"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 186,
      lyric:
          "1.\n Yesu ya karƃe ni,\nKo da na yi zunubi, ko da na yi nisa kuwa,\nIna dogara da shi, Yesu ya karƃe ni.\n\nKORUS\nShi ya mutu domina, shi ya sha wahalata.\nBa don wani aiki ba, Yesu ya karƃe ni.\n\n2.\n Yesu ya cece ni.\nDukan aikin da na yi ba ya shafe zunubi,\nMutuwar da shi ya yi wannan ta cece ni.\n\nKorus\n\n3.\n Shi ya taimake ni,\nIn Shaiɗan ya taba ni, in ya zo ya ƃad da ni,\nYesu za ya riƙe ni, shi ya taimake ni.\n\nKorus\n\n4.\n Yesu zai karƃe ni,\nBa na tsoron mutuwa, ko azabar Lahira,\nGama ranar zuwansa Yesu zai karƃe ni.\n\nKorus\n\n",
      title: "186-Yesu Ya Karƃe Ni, Ko Da Na Yi Zunubi",
      tune: "Weeping will not save me /None but Jesus"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 187,
      lyric:
          "1.\n Na sami ceto ta wurin Yesu.\nShi ne Ɗan Ragon da Allah ya bayar\nDomin ya mutu saboda mu,\nMu sami pansarmu wurinsa.\n\nKORUS\nCeto na Allah kyauta ne\nCeto na Allah kyauta ne.\nYesu Mai Ceto,\nAlhamdu ga Allah,\nI, Ceto na Allah kyauta ne.\n\n2.\n Na yi ƙoƙari in sami ceto\nCikin ayyukan da jiki ke yi,\nNi dai na kasa, duk banza ne.\nAi, ceto na Allah kyauta ne.\n\nKorus\n\n3.\n Ran da na tuba na sami ceto,\nYesu ya yafe duk zunubaina,\nNa sami rai na har abada,\nBukata ta biya, an cece ni.\n\nKorus\n\n4.\n Duk ƴanuwana, ku zo wurinsa,\nYau sai ku tuba, ku karƃi Yesu,\nBar neman ceto gun ayyuka\nDon ceto na Allah kyauta ne.\n\nKorus\n\n",
      title: "187-Na Sami Ceto Ta Wurin Yesu",
      tune: "Only a sinner saved by grace"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 188,
      lyric:
          "1.\n Dā ina zaune cikin duhuna,\nA cikin bautar zunubai.\nBan sani Yesu yana sona ba,\nBan kula da cetonsa ba.\n\nKORUS\nAmma Allah ya ƙaunace mu,\nYa ba da Ɗansa domin ya mutu,\nDon kada mu ma mu mutu\nAmma dai mu sami rai.\n\n2.\n Shaiɗan ya ɗaure mini zuciyata\nA cikin halin hanyarsa.\nYa hana mini hasken gaskiya\nYa hana ni in bi Yesu.\n\nKorus\n\n3.\n An kawo mana wa'azin ceto,\nAn kawo mana gaskiya,\nYesu ya kawar mini duhuna,\nYa sa ni cikin hanyarsa.\n\nKorus\n\n4.\n Yanzu jin daɗi kullum na ke yi,\nA cikin hanyar gaskiya.\nNa sami ceto daga zunubi,\nRai na har abada.\n\nKorus\n\n5.\n Sai wata rana Yesu za ya zo,\nYa ɗauki dukan Masu Bi.\nNi ma zan tafi can tare da shi,\nIn zauna fa a gabansa.\n\nKorus\n",
      title: "188-Dā Ina Zaune Cikin Duhuna",
      tune:
          "Tune-I know whom I have believed/ I know not why God's wondrous grace"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 189,
      lyric:
          "1.\n Dā, ban san labarin Yesu ba,\nCikin duhu na bi hanyata,\nBan ko kula akwai ceto ba\nGun giciye.\n\nKORUS\nJinƙai marar iyaka ne fa.\nGafara a yalwace ya yi,\nHar ya kau da dukan zunubi\nKan giciye.\n\n2.\n Da na ji labarin cetonsa,\nNa ji nauyin kayan laifina.\nSai na tashi neman gafara\nGun giciye.\n\nKorus\n\n3.\n Duba yawan girman ƙaunarsa,\nDuba irin aikin gafara!\nDa jininsa ne ya fanshe mu\nKan giciye.\n\nKorus\n\n4.\n Daga nan na zama bawansa,\nYa yarda ya zama Sarkina.\nAkwai murna cikin zuciyata\nDon giciye.\n\nKorus\n\n",
      title: "189-Dā, Ban San Labarin Yesu Ba",
      tune: "At Calvary/ Years I spent in vanity and pride"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 190,
      lyric:
          "1.\n Yesu ya zo da ƙaunarsa,\nYa fanshe ni da jininsa,\nYa cece ni da ikonsa,\nYana riƙe da ni.\n\nKORUS\nYesu ya ba da jininsa,\nYa wanke dukan laifina,\nYa kawo mini gafara.\nIna yabon Yesu yanzu.\n\n2.\n Tun da ya kira ni, na ƙi,\nAmma yanzu, Yesu zan bi,\nIna misalin kyautarsa\nDa daɗin bautarsa!\n\nKorus\n\n3.\n Yesu ya kawo gafara,\nYa cika ni da Ruhunsa,\nYa sake mini halina,\nUbangijina ne.\n\nKorus\n\n",
      title: "190-Yesu Ya Zo Da Ƙaunarsa",
      tune: "He lifted me / In loving kindness Jesus came"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 191,
      lyric:
          "1.\n Dā, na zauna cikin zunubi,\nBa na kula da Ubangiji,\nKo mutuwa wadda shi ya yi\nKan giciye.\n\nKORUS\nJinƙan Yesu, ba misalinsa,\nYa yi mini aikin gafara.\nKayan laifina ya ɗauka kuwa\nKan giciye.\n\n2.\n Na ji zancen ladan zunubi.\nTsoron mutuwa ya kama ni.\nSai na roƙi jinƙan Mai Ceto\nKan giciye.\n\nKorus\n\n3.\n Na yi murna marar iyaka\nTun da Yesu ya yi cetona.\nIna rera waƙar yabonsa,\nBa fasawa.\n\n4.\n Nufina in kawo daraja\nWurin Yesu Ubangijina,\nSa'an nan in dubi fuskarsa\nHar abada.\n",
      title: "191-Dā, Na Zauna Cikin Zunubi",
      tune: "At Calvary/ Years I spent in vanity and pride"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 192,
      lyric:
          "1.\n Ya Yesunmu, mun taru wurinka.\nKa ji roƙonmu, mu ne ƴaƴanka.\nYa Ruhun Allah, buɗe zuciyarmu,\nYi aikinka, ya Ruhu, cikinmu.\n\n2.\n Bayyana kanka cikin ƙaunarka.\nBishe mu kuwa ta wurin Ruhunka.\nMai Taimako fa cikin zuciya,\nZai buɗe mana dukan gaskiya.\n\n3.\n Ruhunka Yesu, Ruhunka kaɗai\nZai tsarkake zukatanmu sarai.\nIkonsa ne zai juye nufinmu,\nI, daga ƙeta zuwa Allahnmu.\n\n4.\n Ruhun bangaskiya, Ruhun ƙauna kuwa,\nRuhu Mai Tsarki, kyautar hannunka,\nShi zo, shi sauko bisa dukanmu,\nIkonsa kuwa shi zauna cikinmu.\n",
      title: "192-Ya Yesunmu, Mun Taru Wurinka",
      tune: "Grant us Thy Peace/ Ellers"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 193,
      lyric:
          "1.\n Kamar ruwa ya kan sauko\nBisa duniya busasshiya,\nHaka Ruhun Ubangiji\nCikin can Ekklesiya,\nSauko nan, ya Ruhun Allah,\nSauko, muna kishinka. (2x)\n\n2.\n Kamar raƃa ta kan faɗo\nBisa ƙasa, ta kan tsaya,\nBa ta fita, sai ta gama\nNata aikin warkarwa.\nSauko nan, ya Ruhun Allah,\nSauko, muna jiranka. (2x)\n\n3.\n Kamar wuta ta kan cinye\nDauɗa, cuta, ruƃewa,\nHaka Ruhun Ubangiji,\nZauna cikin zuciya.\nKau da ƙarya, dukan lafi,\nKone su da wutarka. (2x)\n\n4.\n Aikin Ruhu mu ke roƙo,\nƳaƴansa na lafiya.\nƘaunar Ruhu mu ke nema,\nƘauna marar ƙarewa,\nBa mu su, ya Ruhun Allah,\nBa mu su, ba fasawa. (2x)\n",
      title: "193-Kamar Ruwa Ya Kan Sauko",
      tune: "Guide me, O Thou great Jehovah"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 194,
      lyric:
          "1.\n Ka zo da Ruhunka, ya Allah, bisanmu,\nDomin mu nemi nufinka, mu danne gurinmu.\n\n2.\n Ka zo da Ruhunka, ya Allah, bisanmu,\nDomin a wanke zuciyarmu, a gyara halinmu.\n\n3.\n Ka zo da Ruhunka, ya Allah, bisanmu,\nDon tsarkinka da ikonka, su zauna a cikinmu.\n\n4.\n Ka zo da Ruhunka, ya Allah, bisanmu,\nDomin mu zama shaidunka, mu juyo da danginmu.\n",
      title: "194-Ka Zo da Ruhunka, Ya Allah, Bisanmu",
      tune: "Breathe on me, Breath of God/ Carlisle /Trentham"),
  Hymns(
      author: "E. P. Miller",
      favorite: 0,
      id: 195,
      lyric:
          "1.\n Mai fansarmu, da za ya hau ya bar mai taimako\nYa bi da mu, ya zauna kuwa a cikinmu.\n\n2.\n Shugabanmu, mai bayarwa, da yardar rai ya zo,\nYa hura mana ƙaunarsa a zuciyarmu.\n\n3.\n Ya. zo da kamar kurciya, shaidar salama shi,\nDa nufin ba da lafiya ga duniya duko\n\n4.\n Tasa kuwa wannan murya a zuciya mu kan ji,\nMai tsautawa, mai ta'aziyya, mai ƙauna kuwa.\n\n5.\n Idan fa mun yi nasara, idan da tsabtar rai,\nKo tunani mai tsarki, shi ne ya bayar.\n\n6.\n Ya Ruhun Tsarki, Ruhun Rai, bayyana ikonka,\nKa kau da rashin ƙarfinmu, ka cika mu.\n\n",
      title: "195-Mai Fansarmu, da Za Ya Hau Ya Bar Mai Taimako",
      tune: "Our blest Redeemer/ St. Cuthbert"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 196,
      lyric:
          "1.\n Ya Yesu, Ruhunka kaɗai zai juye zuciyarmu,\nIkonsa ma a cikinmu zai sake halinmu.\n\nKORUS\nYa Ruhu mai taimako, wurinmu duk ka zo,\nKa cika dukan zuciyarmu, ka ba mu ikonka yau.\n\n2.\n Ya Yesu, Ruhunka kaɗai, zai ba mu ƙaunarka,\nIkonsa cikin ranmu kuwa zai juye gurinmu.\n\nKorus\n\n3.\n Ruhunka, Yesu, ƙauna ne, Ruhun bangaskiya kuwa.\nShi fid da kwaɗayinmu duk da ikon ƙaunarsa.\n\nKorus\n\n4.\n Ya Ruhun Yesu, muna so ka ji addu'armu,\nKa sauko nan da ikonka, ka zauna bisanmu.\n\nKorus\n",
      title: "196-Ya Yesu, Ruhunka Kaɗai Zai Juye Zuciyarmu",
      tune: "O Spirit of Faith/Thy Holy Spirit, Lord, alone"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 197,
      lyric:
          "1.\n Ya Ruhun Allah, Ruhun rai, ka ji addu'armu,\nKa sauko nan da ikonka, Ruhu mai taimako.\n\n2.\n Ya Ruhun haske, ga mu nan, mun kira ka yanzu,\nKa haskaka zukatanmu, ka kori duhunsu.\n\n3.\n Ya Ruhun wuta, tsarkake harsunan bayinka,\nHar za mu ba da shaidarka da ƙarfin zuciya.\n\n4.\n Ya Ruhun ƙauna, cika mu da ƙauna cikakkiya,\nDomin mu zama kamarka tun yau har abada.\n",
      title: "197-Ya Ruhun Allah, Ruhun Rai, Ka Ji Addu'armu",
      tune:
          "Spirit Divine, attend our prayers/ Ortonville/ Winchester Old/ Beatitudo"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 198,
      lyric:
          "1.\nKu yi ta wa'azi wurin mutane duk,\nGama a duniya akwai wahalar rai.\nBari duk Masu Bi su shaida ko'ina,\nMai Taimako ya zo.\n\nKORUS\nMai Taimako ya zo, Mai Taimako ya zo,\nRuhu Mai Tsarki da Allah ya aiko.\nKu labartad da shi wurin mutane duk,\nMai Taimako ya zo.\n\n2.\n Mun sami haskensa, ya watsa duhunmu,\nYa kau da tsoro duk, ya ba mu kwanciyar rai.\nYa kawo gafara ta dukan zunubi,\nMai Taimako ya zo.\n\nKorus\n\n3.\n Ga Ubangijinmu, ya zo da warkarwa.\nGa ƴaƴan duniya, ruɗaɗɗu na Shaiɗan.\nYa kwance ɗaurarru, ya kawo fansarsu,\nMai Taimako ya zo.\n\nKorus\n\n4.\n Ya Allah mai ƙauna, ko ni na iya ƙi\nIn shaida j inƙanka ga dukan mutane?\nGa ni da, matacce, ka ba ni sabon rai,\nMai Taimako ya zo.\n\nKorus\n",
      title: "198-Ku Yi Ta Wa'azi Wurin Mutane Duk",
      tune: "The Comforter has come/O Spread the Tidings"),
  Hymns(
      author: "A. M. Locke",
      favorite: 0,
      id: 199,
      lyric:
          "1.\n Ya Ruhun Allah, zo yanzu\nKa sauko nan, ka cika mu.\nRuhu mai shafewa ne kai,\nMai ba da kyautar sabon rai.\nSai dai ka ba mu kyautarka\nDa hasken rai da ƙaunarka.\n\n2.\n Kullum ka ba mu haskenka\nDomin mu bi ka, Shugaba.\nKa cika mu da murnarka,\nKa haskaka fuskokinmu,\nJaraba duk, ka kore ta,\nInda ka ke, sai lafiya.\n\n3.\n Kai Kyautar Allah, Ruhunsa,\nMai koya mana sanin Ɗan,\nKa nuna mana ƙaunarsa\nDomin mu riƙa yabonsa.\nMu yi yabo ga Allahnmu\nMai ba da haske da ƙauna.\n\n",
      title: "199-Ya Ruhun Allah, Zo Yanzu",
      tune: "Eternal Father, strong to save/ Melita"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 200,
      lyric:
          "1.\n Ruhu na alheri, zo, ni da kaina ina so.\nZauna cikin zuciyata don in zama kamarka,\nBa ni halin taimako duk da na tawali'u.\n\n2.\n Ruhun gaskiya, ka zo, ni da kaina ina so.\nGaskiya ta kasance, har ta bi da ni sosai.\nCikin dukan aikina, kau da halin ƙarya.\n\n3.\n Ruhun Allah, sai ka zo, ni da kaina ina so.\nRaba ni da zunubi, don in aika adalci.\nDukan nawa sai in ba Yesu Ubangijina.\n\n",
      title: "200-Ruhu Na Alheri, Zo, Ni da Kaina Ina So",
      tune: "Rock of ages, cleft for me/ Toplady"),
  Hymns(
      author: "H. K. Germaine",
      favorite: 0,
      id: 201,
      lyric:
          "1.\nRuhun iko, zo gare mu,\nMun ga kasawarmu yau.\nRashin jinƙai, rashin ƙauna\nRashin musun kanmu ma.\n\nKORUS\nSai ka zo, ka tsarkake mu\nDaga dukan kasawa.\nMuna jira, muna jira,\nTsarkake mu duk yanzu.\n\n2.\n Ruhun sani, zo gare mu,\nAkwai duhu cikinmu.\nSanasshe mu, koya mana\nHanyar tsarkakewar rai.\n\nKorus\n\n3.\n Ruhun wuta, zo gare mu,\nKone duk muguntarmu\nHar mu zama mutanenka\nCikin dukan gaskiya.\n\nKorus\n\n4.\n Ruhun haske da addu'a,\nBi da mu, ka ƙarfafa.\nMuna bege, muna bege\nHar mu sami nasara.\n\nKorus\n\n5.\n Ruhun ƙauna, zo gare mu,\nSai ka yafe mu yanzu.\nMuna jira, muna kuka,\nAmsa dai addu'armu.\n\nKorus\n\n6.\n Ƴanuwa, ku yafa Yesu,\nYafa sabon hali kuwa.\nYafa kuma zuciyar tausayi,\nLadabi da jurewa.\n\nKorus\n\n7.\n Ruhun Kristi, ni na gode,\nKana nan a zuciya,\nMallake ni, mallake ni\nDaga yau har abada.\n\nKorus\n",
      title: "201-Ruhun Iko, Zo Gare Mu",
      tune: "God is here, and that to / Arch Street"),
  Hymns(
      author: "",
      favorite: 0,
      id: 202,
      lyric:
          "1.\n Huro da Ruhunka, cika ni, Allahna,\nDomin abin da na ke yi ya zama nufinka.\n\n2.\n Huro da wutarka, cika ni, Allahna,\nHar jikina ya tsarkake, in zama kamarka.\n\n3.\n Cika ni, Allahna, da rai mai daurewa,\nDomin abin da na ke yi ya shaida zamanka.\n\n4.\n Cika ni, Allahna, har ranar mutuwata,\nRan da zan saki ruhuna, ya koma wurinka.\n",
      title: "202-Huro da Ruhunka, Cika Ni, Allahna",
      tune: "Breathe on me, Breath of God/Carlisle /Trentham"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 203,
      lyric:
          "1.\nYa Allahnmu na Bethel, kai mai jin addu'armu,\nYakub a cikin jeji dā, ka biya bukatarsa.\n\n2.\n Addu'armu da roƙonmu, mun kawo su yanzu.\nYa Allahn ubanninmu, kai ka zama Allahnmu.\n\n3.\n  A cikin dukan ƙuncinmu, ka bi da ƙafarmu.\nAbincin yini ba mu dai, ka rufa jikinmu.\n\n4.\n Ka tsare mu, ya Allahnmu, a cikin duniyan nan.\nHar ran da za ka kira mu, mu shiga Sama can.\n",
      title: "203-Ya Allahnmu Na Bethel, Kai Mai Jin Addu'armu",
      tune: "O God, our help in ages past/ St. Anne"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 204,
      lyric:
          "1.\n Ka bishe ni, ya Jehovah,\nNi baƙo ne a duniyan nan.\nNi rarrauna, kai Mai Iko,\nRiƙe ni da hannunka.\nKa cishe ni, ka cishe ni,\nDa gutasan nan mai rai.\nDa gurasan nan mai rai.\n\n2.\n Buɗe mini, ya Mai Ceto,\nMaƃulƃula masu rai.\nKa bishe ni da idonka,\nHar an kai ni a wurinka,\nTaimakona, taimakona,\nKai ka zama ƙarfina.\nKai ka zama ƙarfina.\n\n3.\n In na taka kwarin mutuwa,\nKau da dukan tsorona,\nTokare ni da hannunka,\nKai ni can a gidanka.\nWaƙar yabo, waƙar yabo\nTaka ce har abada.\nTaka ce har abada.\n\n",
      title: "204-Ka Bishe Ni, Ya Jehovah",
      tune: "Guide me, O Thou great Jehovah"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 205,
      lyric:
          "1.\n Ka bi da ni, ya Ubangijina,\nA duniyan nan,\nNa ƃata dai, ban san hanyarka ba,\nKa bi da ni.\nTsare zamana, tsare tashina,\nInda na je, ka riƙe hannuna.\n\n2.\n Da idonka, ya Ubangijina,\nKa bi da. ni,\nHasken mutane, hasken duniyan nan,\nKa bi da ni.\nIn ban da kai, tuntuƃe na ke yi,\nYa kai Shugabana, ka bi da ni.\n\n3.\n Ruhu Mai Tsarki, Ruhun taimako\nZai bi da ni.\nKo cikin lafiya ko cikin cuta,\nZai bi da ni.\nShi ma zai zama Jagabana kuwa\nHar ranar da zai cika cetona.\n\n",
      title: "205-Ka Bi da Ni, Ya Ubangijina",
      tune: "Lead, kindly light/ Sandon"),
  Hymns(
      author: "J. A. MacKinnon",
      favorite: 0,
      id: 206,
      lyric:
          "1.\n Lokacin da ka ke shan wahala fa,\nLokacin da Shaiɗan ya ke damunka,\nTuna da alherin Ubangiji inka,\nWannan dai zai ba ka karfin zuciya.\n\nKORUS\nHar matuka Yesu yana nan\nHar matuka Yesu yana nan\nHar matuka Yesu yana nan\nShi ba zai rabu da kai ba, ko kaɗan.\n\n2.\n Sa'ad da ka duba masu dukiya,\nTuna da alkawarin Mai Cetonka,\nRai madauwami ne shi ya ce zai bayar\nGa duk wanda ya ke ba da gaskiya.\n\nKorus\n\n3.\n Idan ka gaji da halin duniya,\nKana neman rabuwa da ruɗinta,\nIn ji Ubangiji, \"Ina jiranka,\nZo, ka karƃi hutawa a wurina.\"\n\nKorus\n\n4.\n Ko a matse ka ke, babu fasawa,\nShaiɗan yana neman ƃata halinka,\nSai ka ta da murya ga Allahnmu,\nShi ba za ya yarda ba ka lalace .\n\nKorus\n",
      title: "206-Lokacin da Ka Ke Shan Wahala Fa",
      tune: "Count your blessings /When Upon Life's Billows"),
  Hymns(
      author: "",
      favorite: 0,
      id: 207,
      lyric:
          "1.\n Yesu, Ɗan Allah, Mai Ceto ne, shi za ya tsare ka.\nYesu mai taimakonka ne, shi za ya tsare ka.\n\nKORUS\nYesu zai tsare ka ko wane gu, ko wace sa'a.\nYesu zai tsare ka, Yesu zai tsare ka.\n\n2.\n Yesu ya mutu don laifinka, shi za ya tsare ka.\nZunubai duka ya ɗauke su, shi za ya tsare ka.\n\nKorus\n\n3.\n Yesu kuwa ya fito kabarin, shi za ya tsare ka.\nShi ne mai rai har abada, shi za ya tsare ka.\n\nKorus\n\n4.\n Idan jaraba ke damunka, Yesu zai tsare ka.\nIkonsa ba za ya kare ba, Yesu zai tsare ka.\n\nKorus\n\n5.\n Lokacin ciwo fa yana nan, shi za ya tsare ka.\nShi ne mai warkarwa ba mai fi, shi za ya tsare ka.\n\nKorus\n\n6.\n Kada ka ji tsoron kome dai, shi za ya tsare ka.\nSama da duniya nasa ne, shi za ya tsare ka.\n\nKorus\n",
      title: "207-Yesu, Ɗan Allah, Mai Ceto Ne, Shi Za Ya Tsare Ka",
      tune: "Be not dismayed whate'er betide"),
  Hymns(
      author: "C. Sanderson",
      favorite: 0,
      id: 208,
      lyric:
          "1.\n Yabi Yesu, ku bayinsa,\nZo, ku ɗaukaka sunansa,\nSai da murna za mu gusa\nWurinsa yanzu.\n\n2.\n Sunan Yesu ya tsare mu,\nHannunsa ya tokare mu,\nKo menene ya same mu,\nMu ne ƴaƴansa.\n\n3.\n Kafa begenku gare shi!\nBa zai sāke ba, in ji shi.\nDaga ayyukan maƙiyi\nZa ya cece ku.\n\n",
      title: "208-Yabi Yesu, Ku Bayinsa",
      tune: "Praise the Saviour"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 209,
      lyric:
          "1.\n Ubangiji, ka bishe ni\nA tafiyata duka.\nSai ka ba ni farinciki,\nSai ka ba ni bangaskiya,\nSai ka yi mini alheri,\nSai ka taimake ni yau,\nGama ni ban iya kome,\nNi kaɗai, a duniya ba.\n\n2.\n Ubangiji, ka bishe ni\nA tafiyata duka,\nGama a kan jarabce ni,\nNi kan shiga tsanani\nDuk wahala daga Shaiɗan\nTa kan dulmayad da ni\nGama ni ban iya kome,\nNi kaɗai, a duniya ba.\n\n3.\n Ubangiji, ka bishe ni\nA tafiyata duka,\nGama ilmi ya kan kasa,\nIna son hikimarka.\nDuk ƙoƙarina ya kasa,\nSai ka ba ni ƙarfinka\nGama ni ban iya kome,\nNi kaɗai, a duniya ba.\n\n4.\n Ubangiji, ka bishe ni\nA tafiyata duka,\nKuma ranar da zan mutu,\nSai ka yi ta taimako.\nIna so in yi ta shiri\nDon in tsaya gabanka.\nNi kaɗai ban iya zuwa\nCikin kwarin mutuwa ba,\nNi kaɗai ban iya zuwa\nCikin kwarin mutuwa ba.\n\n",
      title: "209-Ubangiji, Ka Bishe Ni",
      tune: "All the way my Saviour leads me"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 210,
      lyric:
          "1.\n Sai ku nemi shawara gun Yesu fa.\nKome ya same ku nan a duniya,\nSai ku shaida masa, ku ji nufinsa.\nYesu ne mai shawararmu dai.\n\nKORUS\nYesu Kristi\nShi zai taimake mu cikin dukan kome.\nYesu Kristi\nShi ne mai taimakon mu Masu Bi.\n\n2.\n Ko mun fāɗa cikin tarkon jaraba,\nSai mu nemi  ƙarfafawa wurinsa.\nKo mun yi tuntuƃe har da faɗuwa,\nSai mu nemi gafara tun yau.\n\nKorus\n\n3.\n Ko mun fāɗa cikin ƙuncin tsanani,\nSai mu nemi ƙarfi wurin Mai Ceto\nMuna so mu zama masu shaidarsa,\nKada mu yi musun sunansa.\n\nKorus\n",
      title: "210-Sai Ku Nemi Shawara Gun Yesu Fa",
      tune: "Standing on the promises"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 211,
      lyric:
          "1.\n Ya Yesu, ga ni gabanka,\nDomin in koyi gaskiyarka.\nKa nuna mini cin gaba\nDa ni zan yi a hanyarka.\n\nKORUS\nYa Yesu, buɗe idona,\nDomin in gane hanyarka,\nKa nuna mini nufinka,\nYa Mai Ceto.\n\n2.\n Ya Yesu, buɗe kunnena,\nDomin in ji maganarka.\nNi ina so in bi nufinka,\nIn yi abin da ka ke so.\n\nKORUS\nYa Yesu, buɗe kunnena,\nDomin in ji maganarka,\nKa nuna mini nufinka,\nYa Mai Ceto.\n\n3.\n Ya Yesu, buɗe bakina,\nDomin in shaida ko'ina\nCeton da ka yi wa duniya\nDa gafarar zunubanmu.\n\nKORUS\nYa Yesu, buɗe bakina,\nDomin in shaida cetonka,\nKa nuna mini nufinka,\nYa Mai Ceto.\n\n4.\n Yesu, juyad da zuciyata,\nDomin in nuna halinka\nƳanuwana su dube ni,\nHar su ga Allah cikina.\n\nKORUS\nYesu, juyad da zuciyata\nDomin in nuna halinka,\nKa nuna mini nufinka,\nYa Mai Ceto.\n\n5.\n Ya Yesu, ba ni zarafi\nDomin in yi ta aikinka,\nƳanuwana su rinjayu\nSu ma su shiga hanyarka.\n\nKORUS\nYa Yesu, ba ni zarafi\nDomin in yi ta aikinka,\nKa nuna mini nufinka,\nYa Mai Ceto.\n\n",
      title: "211-Ya Yesu, Ga Ni Gabanka",
      tune: "Open my eyes, that I may see"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 212,
      lyric:
          "1.\n Muna tafiya yau cikin hanyar Yesu.\nAmma ba mu kaɗai ba ne fa.\nYesu ma yana nan, yana tare da mu,\nGama shi yana ja gabanmu.\n\nKORUS\nKai dai ka zo, ka je tare da mu,\nCikin hanyar Mai Ceto, zuwa wurin Allah\n\n2.\n Cikin ƙuncinmu duk, ya kan tallafe mu,\nYana ƙarfafa zukatanmu.\nKo jaraba ta zo, zai yi hanyar tsira,\nMasu Bi duk su ci nasara.\n\nKorus\n\n3.\n Da abinci mai rai cikin Maganarsa\nYa kan ciyad da kowannenmu,\nKamar maƃulƃulai na ruwa mai rai\nRuhunsa yana cikinmu duk.\n\nKorus\n\n4.\n Ya yi alkawari, za ya ji roƙonmu,\nIn mun yi cikin sunan Yesu.\nSai mu ƙaunace shi, mu bi dokokinsa,\nSai mu bi shi da zuci ya ɗaya.\n\nKorus\n",
      title: "212-Muna Tafiya Yau Cikin Hanyar Yesu",
      tune: "Trust and Obey"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 213,
      lyric:
          "1.\n Inda ya kai ni, zan tafi,\nGama na saba binsa nan,\nKuma na tuna, domina\nYesu ya tafi Kalfari.\n\nKORUS\nZa ya bishe ni ko'ina,\nZa ya bishe ni koyaushe,\nIna tafiya tare da shi,\nGama na tuna da Kalfari.\n\n2.\n Jawabi nasa na ke bi,\nMuna tarayya, ni da shi,\nDaɗin nufinsa na ke ji,\nGama na tuna da Kalfari.\n\nKorus\n\n3.\n Inda ya kai ni, zan tafi,\nTare da Yesu Mai Ceto,\nGama na sani, domina\nYesu ya tafi Kalfari.\n\nKorus\n",
      title: "213-Inda Ya Kai Ni, Zan Tafi",
      tune: "Where He may lead me I will go"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 214,
      lyric:
          "1.\n Alherin Yesu, Ubangijina,\nYa wuce gaban ganewa.\nGama tun muna maƙiyansa fa,\nYa mutu don mu sami rai.\n\nKORUS\nWaɗanda suka karƃi Yesu\nYa ba su iko su zama nasa.\nƳaƴa ne idan sun ba da\nGaskiya ga sunansa.\n\n2.\n Ban iya gane ko in fassara\nAbin da aka aika ba,\nAmma na sani cikin zuciyata\nSalama tana nan zaune.\n\nKorus\n\n3.\n Ruhu Mai Tsarki yana aikinsa\nA cikin masu zunubi\nDomin su san bukatar zuciya,\nSu karƃi Yesu Mai Ceto.\n\nKorus\n\n4.\n Ban san ran zuwan Ubangiji ba,\nAmma a shirye na ke fa\nIn tarbe shi a cikin sarari,\nKo kuwa in bi ta mutuwa.\n\nKorus\n",
      title: "214-Alherin Yesu, Ubangijina",
      tune: "I know whom I have believed/I know Not Why"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 215,
      lyric:
          "1.\n A cikin duniyan nan yanzu,\nYa Ubanjiji, bi da mu.\nAkwai jaraba ko’ina,\nKa bi da mu da Ruhunka.\n\nKORUS\nYa Ubangiji, Mai Ceto,\nIn ban da kai, ba taimako,\nKa koya mana nufinka,\nKa bi da mu da Ruhunka.\n\n2.\n Ga aiki yana jiranmu,\nGa tumakinka, ƃatattu,\nMu je mu kawo su yanzu,\nKa bi da mu da Ruhunka.\n\nKorus\n\n3.\n In za mu shiga yaƙinka,\nMu yi kokawa da magauta,\nKa ƙarfafa ƴan yaƙinka\nKa bi da mu da Ruhunka.\n\nKorus\n\n4.\n Idan mun gama aikinka,\nKa kira mu ga hutawa.\nKa bi da mu da Ruhunka,\nKa kai mu Sama lafiya.\n\nKorus\n",
      title: "215-A Cikin Duniyan Nan Yanzu",
      tune: "Higher ground/ I'm pressing on the upward way"),
  Hymns(
      author: "H. Casler",
      favorite: 0,
      id: 216,
      lyric:
          "1.\n Yesu Mai Ceto, ni ya ke so,\nMai pansata ne mai taimako.\nYa sha azaha don laifina,\nYa ba ni rai na har abada.\n\nKORUS\nYesu Ɗan Allah shi na ke bi\nHar za ya komo ya fyauce ni.\n\n2.\n Yesu Mai Ceto, ka ƴanta ni\nDaga bauta ta zunubaina.\nCika zuciya da ƙaunarka,\nKada in ƙara son duniya.\n\nKorus\n\n3.\n \"In za ka bi ni.\" Yesu ya ce,\n\"Bar neman kome, sai ni kaɗai.\nWanda ya ɗauki giciyensa\nBa za ya rasa ladansa ba.\"\n\nKorus\n\n4.\n Tun da na zama masoyinsa,\nBa na jin tsoron mutuwa dai.\nGama, in ji shi, zai koma can\nYa shirya wurin zamanmu duk.\n\nKorus\n",
      title: "216-Yesu Mai Ceto, Ni Ya Ke So",
      tune: "I have a Saviour, He died for me"),
  Hymns(
      author: "",
      favorite: 0,
      id: 217,
      lyric:
          "1.\n Ya Hasken ƙauna, ƙaunar Allahna,\nKa haskaka.\nRana ta faɗi, dubu ma ya yi,\nKa haskaka.\nWahalar raina duk ta danne ni,\nAmma, ya Haskena, ka bishe ni.\n\n2.\n Na daɗe fa, kai na ke ta nema,\nKa haskaka.\nKai shugaba ne, Hasken gaske kuwa,\nKa haskaka.\nDuk zunubaina suna ƙaruwa\nAmma, Mai Ceto, zo, ka haskaka.\n\n3.\n Kai shugabana ne har abada,\nKa haskaka.\nBa wanda na ke so dai kamarka,\nKa haskaka.\nSha'anin duniya ba su ja ni ba,\nNa ci nasara domin giciyenka,\n\n4.\n Har ran da za ka zo ka karƃe ni,\nKa haskaka.\nKo duhu ne, ko ciwo na ke ji,\nKa haskaka.\nZan kwana lafiya a hannunka\nHar ma in farka cikin ƙaunarka.\n",
      title: "217-Ya Hasken Ƙauna, Ƙaunar Allahna",
      tune: "Lead, kindly light"),
  Hymns(
      author: "",
      favorite: 0,
      id: 218,
      lyric:
          "1.\n A cikin dukan halin da mu ke, da murna da wahala,\nYabo na Allahna zan yi, zai riƙe zuciyata.\n\n2.\n Bari mu girmama ka, Allah, mu ɗaukaka sunanka.\nCikin wahala na yi kira, ka ba ni cetonka.\n\n3.\n Rundunan Allah suna nan kewaye da adilai.\nWanda ya ba da gaskiya, zai cece shi sarai.\n\n4.\n Bari mu gwada ƙaunarsa, gwadawa za ta nuna\nSu ne masu albarka duka, masu gaskata ka.\n\n5.\n Ku ji tsoronsa, tsarkaka, ba sauran tsoro kuma.\nKu mai da aikinsa fa naku, muradinku zai biya.\n\n6.\n Ga Allah Uba, Allah Ɗa, Ruhu Mai Tsarki kuma,\nMu ba ka dukan ɗaukaka, ya Allah Triniti.\n",
      title: "218-A Cikin Dukan Halin da Mu Ke, da Murna Da Wahala",
      tune: "Wiltshire"),
  Hymns(
      author: "",
      favorite: 0,
      id: 219,
      lyric:
          "1.\n Cikin sunan Ubangiji,\nKullum zan yi ta aikina.\nMuradina saninka ne,\nCikin duk al'amurana.\n\n2.\n Tsare ni daga tarkoki,\nƁoye rarraunar zuciyata,\nKada ta faɗa nishaɗi\nWanda ke cikin duniya.\n\n3.\n Kai ne a hannun damana,\nKai idona ke dubawa,\nDomin in bi umarninka\nWanda ka nufe ni da yi.\n\n4.\n Ɗawainiyarka mai sauƙi ce,\nKayanka ba mai nauyi ba,\nTaimake ni in jure fa,\nHar ran da zan kai mulkinka.\n\n5.\n Wanda ya zo, ka karƃe shi,\nDomin ya dinga aikinka.\nDon haka murna na ke yi,\nHar ran da zan je can Sama.\n",
      title: "219-Cikin Sunan Ubangiji",
      tune: "Angel's Song 34/ Forth in Thy Name, O Lord, I go"),
  Hymns(
      author: "",
      favorite: 0,
      id: 220,
      lyric:
          "1.\n Ta wurin ƙaunar Mai Ceto, sai lafiya.\nƘauna ba ta sakewa kuwa, sai lafiya.\nJininsa mai tamani ne, ƙaunarsa har abada ce,\nIdonsa ya tsare mu dai, sai lafiya.\n\n2.\n Ko da muna shan wahala, sai lafiya.\nShi ya iya cetonmu duk, sai lafiya.\nMurnarmu daga Uban ce, ladanmu daga Yesu ne,\nTsarkakewarmu ta Ruhu, sai, lafiya.\n\n3.\n Bege kuwa ya haskaka mu, sai lafiya.\nBangaskiya ta ƙarfafa mu, sai lafiya.\nMun dogara kuwa ga Allah, Yesu ne ke biyan bukata,\nKo a mace ko a raye, sai lafiya.\n",
      title: "220-Ta Wurin Ƙaunar Mai Ceto, Sai Lafiya",
      tune: "All will be well /Southgate"),
  Hymns(
      author: "W.A. Thompson",
      favorite: 0,
      id: 221,
      lyric:
          "1.\n Almasihu, pa babba, kai ne dutsen cetonmu.\nSa mu cikin inuwarka, bar mu shiga kariyarka.\nDuk mun kasa adalci, duk mun aika zunubi,\nKai madogararmu ne, kai dai matserarmu ne.\n\n2.\n Ko mun kawo sadaka, ko mun daina ratsewa,\nDukan namu ƙoƙari ba ya iya cetonmu.\nKai kaɗai matsakanci, aikin sulhu naka ne.\nMutuwarka da tashinka su sun kawo gafara.\n\n3.\n Ga mu nan gun giciyenka, muna jiran ikonka.\nKau da dukan zunubi, rashin ƙwazon Masu Bi.\nDa jini mai daraja, wanke mana zukata. Tsarkake mu duk yanzu don mu cika nufinka.\n\n4.\n Ya maƃuyar tsarkaka, nuna ƙarfin cetonka.\nBa mu ikon nasara, tsai da ikon magauta,\nKwaƃi duk muguntarsu, rushe duk dabarbaru.\nSai ka taya mu yanzu, ƙarfafa rayukanmu.\n",
      title: "221-Almasihu, Pa Babba, Kai Ne Dutsen Cetonmu",
      tune: "Jesus, Lover of my soul / Hollingside /Martyn"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 222,
      lyric:
          "1.\n Da duniyan nan da girmanta da yawan daɗin rai\nSu dā sun jarabce ni, sun kama ni sosai.\nAmma da dukan daɗinsu ban ƙoshi ba daɗai,\nGama raina ba ya ƙoshi in ban da kai kaɗai.\nYesu, Yesu, Yesu Gurasar Rai,\nBan yarda ba, ban yarda ba a raba ni da kai.\n\n2.\n Ko raina ya matsu fa, ko kewa na ke ji,\nKo ina shan wahala, ko ciwo na ke yi,\nNi sai in nemi Yesu, shi ne ya ce in zo,\nIn faɗa masa duka, in roƙi taimako.\nYesu, Yesu, Yesu Mai Taimako,\nBan yarda ba, ban yarda ba a raba ni da kai.\n\n3.\n Alkawarin Mai Cetonmu ba za ya tashi ba.\nMai zuwa ba a ƙinsa in ya zo da gaskiya.\nIna dalilin zafin zuciya, babu hutawa?\nGa Yesu yana jira, ba iyakar tausayi.\nYesu, Yesu, Yesu mai ƙaunata,\nBan yarda ba, ban yarda ba a raba ni da kai.\n",
      title: "222-Da Duniyan Nan da Girmanta da Yawan Daɗin Rai",
      tune: "African/ Home Sweet Home/O For A Faith /Evan"),
  Hymns(
      author: "H. E. Smith",
      favorite: 0,
      id: 223,
      lyric:
          "1.\n Mai Ceto yana ƙaunata,\nShi Makiyayina ne.\nTun Yesu yana kiwona,\nNi ba na rasa kome.\n\nKORUS\n\"Ku zo gare ni, dukanku,\nKu masu nauyin kaya,\nNi ma in ba ku hutawa,\"\nIn ji shi, Masoyina.\n\n2.\n Dā ina zaman tayarwa,\nNa ƙi tafarkin Yesu,\nSai ƙaunarsa ta jawa ni,\nTa sa ni cikin garke.\n\nKorus\n\n3.\n Nan gaba dai, Ubangiji\nKullum zai bi da raina\nA cikin hanyar adalci\nSabili da sunansa.\n\nKorus\n\n4.\n Ko cikin kwarin mutuwa,\nBa zan ji tsoro ba fa,\nBa wanda za ya taƃa ni,\nTun Yesu yana sona.\n\nKorus\n\n5.\n Ƙaunarsa marar ƙarewa\nNan gaba za ta bi ni.\nA cikin gidan Allah kuwa\nHar abada zan zauna.\n\nKorus\n",
      title: "223-Mai Ceto Yana Ƙaunata",
      tune: "The King of love my Shepherd is/ Dominus Regit Me"),
  Hymns(
      author: "A. P. Stirret",
      favorite: 0,
      id: 224,
      lyric:
          "1.\n Yesu mu ke so don ya cece mu,\nMuna jingina ga ƙirjinsa.\nShi ya mutu dai don mu sami rai,\nMuna murna cikin cetonsa.\n\nKORUS\nYesu …….Yesu ……\nƘaunar Yesu mai girma ce.\nYesu ….... Yesu …....\nYesu ya mutu domin laifinmu.\n\n2.\n Yesu mu ke bi har mutuwarmu,\nMuna dogara ga ikonsa.\nShi ya tsare mu daga mugunta,\nMuna murna cikin ƙaunarsa.\n\nKorus\n\n3.\n Shi mai ba da rai na har abada,\nMuna jingina ga hannunsa.\nShi ya zaƃe mu daga duniya,\nMuna murna cikin ikonsa.\n\nKorus\n",
      title: "224-Yesu Mu Ke So Don Ya Cece Mu",
      tune: "Resting (Leaning) on the everlasting arms"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 225,
      lyric:
          "1.\n Yesu, kai ni wurinka, kar in ratse hanyarka.\nWurinka sai lafiya, ina so in zauna can.\n\nKORUS\nYesu, Yesu, Yesu, kai ni wurinka,\nIna so in zauna can wurinka, Mai Cetona.\n\n2.\n Kai Makiyayinmu ne, babu tsoro wurinka,\nJinƙanka ya rufe ni, wa zai iya zargina?\n\nKorus\n\n3.\n Yesu, kai ni lafiya, har in isa wurinka.\nZa ka shafe hawaye, gunka shi ne kwanciyar rai.\n\nKorus\n",
      title: "225-Yesu, Kai Ni Wurinka, Kar In Ratse Hanyarka",
      tune: "Saviour, lead me lest I stray"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 226,
      lyric:
          "1.\n Allah yana kusa, shi Ubanmu ne.\nNi dai ina cikinsa, shi kuwa cikina.\n\n2.\n Allah yana kusa, yana tsarona.\nZarmana da tashina suna wurinsa.\n\n3.\n Allah yana kusa, ko da duhu ma,\nHanyata da kwanciyata, yana shiryawa.\n\n4.\n Allah yana kusa, yana taimako.\nAbu duk 'na hannunsa tun dā har wa yau.\n\n5.\n Sani irin naka ya fi ƙarfina.\nƘaunarka da saninka sun fi ganewa.\n",
      title: "226-Allah Yana Kusa, Shi Ubanmu Ne",
      tune: "God is always near me/St. Cyril"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 227,
      lyric:
          "1.\n Ekklesiyar Almasihu, jama'ar Masu Bi,\nYa kafa ta a duniya, sabuwar halittarsa.\nYesu ya fito Sama, ya zo ya neme mu.\nDa jini ya fanshe mu, mu zama jikinsa.\n\n2.\n Zaƃaƃƃu. cikin duniya, nasa kaɗai mu ke,\nBa kuwa don aikin kirki, sai bangaskiya kaɗai.\nDaga kowane iri, ya tara mu a nan,\nYa shirya mana wuri a cikin Sama can.\n\n3.\n Ko muna shan azaba, ko mutuwa ta zo,\nKo sun yi mana ba'a, ba za mu koma ba.\nMuna bin sawun Yesu, ya zama gurbinmu. Wane mu, mu yi musun Yesu Masoyinmu?\n\n",
      title: "227-Ekklesiyar Almasihu, Jama'ar Masu Bi",
      tune: "The Church's one foundation/ Aurelia"),
  Hymns(
      author: "A. P. Stirret",
      favorite: 0,
      id: 228,
      lyric:
          "1.\n Yesu ya cece ni, za ya taya ni.\nMuddar ya riKe ni, tsoro ba na ji.\nShi amintacce ne, sai in dogara,\nDuk alkawaransa za ya aikata.\n\n2.\n Yesu ya same ni, huntu, ƃatacce.\nIna so in ji shi, kullum shi kaɗai.\nSa'ad da ya kira, amsa za mu yi,\nKo'ina ya nufa sai mu riƙa bi.\n\n3.\n Yesu Makiyayi, shi ya ba da rai\nKada tumakinsa duk su lalace.\nUbansa mai ƙauna yana riƙonmu,\nDaga hannuwansa ba mai fizgewa.\n\n4.\n Yesu Makiyayi, shi ne ƙofar rai,\nMasu Bi sun shiga dukansu sosai.\nSa'ad da zai komo, za ya tattara\nDukanmu gabansa, ma ga fuskarsa.\n",
      title: "228-Yesu Ya Cece Ni, Za Ya Taya Ni",
      tune: "Jesus is our Shepherd"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 229,
      lyric:
          ") Yesu, ko tunawa da kai abu mai daɗi ne,\nAmma dai, daɗin ganinka, ina misalinsa?\n\n2.\n Ba waƙar duniyan nan, ko ɗaya, ko zancen masana,\nDa za su iya kwatanta jamalin sunanka.\n\n3.\n Mai tuba duk, sai begenka da gaskiya ya ke yi.\nWanda ya nemi fuskarka, alheri nasa ne.\n\n4.\n Amma fa masu samunka, ƙaunar da ka ke yi,\nBa za a ga cikarta ba, sai wurin Masu Bi.\n\n5.\n Ya Yesu, kai ne murnarmu a cikin duniyan nan,\nKai za ka zama ladanmu a cikin Sama can.\n",
      title: "229-Yesu, Ko Tunawa Da Kai Abu Mai Daɗi Ne",
      tune: "Jesus, the very thought of Thee/ St. Agnes"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 230,
      lyric:
          "1.\n Albarka tana kan mutum wanda bai ratse ba,\nWanda bai tsaya a hanya ta masu zunubi ba.\n\n2.\n A wurin masu ba'a, shi ba ya kan zauna ba,\nMaganar Allah ya ke bi dare da rana kuwa.\n\n3.\n Misalin itace ne shi a bakin ruwaye,\nZai ba da ƴaƴa lotonsa, yaushi kuwa ba ya yi.\n\n4.\n Duk aikinsa da ya ke yi, albarka tana kai.\nMiyagu kamar ƙaiƙai ne, iska zai ture su.\n\n5.\n Ranar shari'a, miyagu ba za su tsaya ba,\nKo kuwa su masu zunubi a gidan adalai.\n\n6.\n Ubangijinmu kuwa ya san tafiyar adalai.\nAmma tafarkin miyagu lalle zai lalace.\n\n",
      title: "230-Albarka Tana Kan Mutum Wanda Bai Ratse Ba",
      tune:
          "Our Saviour's voice/ O For A Faith /Jesus, the very thought of Thee/ St. Agnes"),
  Hymns(
      author: "E. W. Morrow",
      favorite: 0,
      id: 231,
      lyric:
          "1.\n Yesu ya fi anna bawa duka,\nGaya wa Yesu, gaya wa Yesu.\nKo mala'iku ba su iya ceto,\nGaya wa Yesu kaɗai.\n\nKORUS\nGaya wa Yesu, gaya wa Yesu,\nIkonsa bai kāsa ba.\nShi ya iya biya duk bukata,\nGaya wa Yesu kaɗai.\n\n2.\n Yana nan a hannun daman Allah,\nGaya wa Yesu, gaya wa Yesu.\nYana furta roƙonmu ga Uba,\nGaya wa Yesu kaɗai.\n\nKorus\n\n3.\n In da tsoron Lahira a zuciya,\nGaya wa Yesu, gaya wa Yesu.\nAllah ya nufe ka da salama,\nGaya wa Yesu kaɗai.\n\nKorus\n\n4.\n Idan ka gaji da jarabobi,\nGaya wa Yesu, gaya wa Yesu.\nKa damu da ƃoyayyun zunubai?\nGaya wa Yesu kaɗai.\n\nKorus\n\n5.\n Idan danginka duka sun ƙi ka,\nGaya wa Yesu, gaya wa Yesu.\nIn mutane duk sun cika ba'a,\nGaya wa Yesu kaɗai\n\nKorus\n",
      title: "231-Yesu Ya Fi Anna Bawa Duka",
      tune: "Tell it to Jesus"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 232,
      lyric:
          "1.\n Mai kiwona shi Yesu ne,\nDuk tsoro dai ya kawu.\nNi ba zan rasa kome ba,\nGa kulawa mai kyau fa!\n\n2.\n Abinci dai a yalwace,\nGa ruwan sha domina.\nBan rasa kome ba domin\nYesu ne makiyayi.\n\n3.\n Har raina ma ya wartsake.\nYanzu dai Yesu ya sa\nShawararsa ta bi da ni\nA duk tafiyata ma.\n\n4.\n Har cikin kwarin mutuwa,\nIn dai ya sa in je can,\nTafiya tare mu ke yi,\nZai tsare ni sosai kuwa.\n\n5.\n A idon su maƙiyana\nAbinci ma ya shirya.\nDa mai ya shafe kaina har\nSai daɗi na ke ta ji.\n\n6.\n Alheri duk da jinƙansa\nYesu ya sa su bi ni.\nDon haka daɗi na ke ji\nKullum a wannan duniya.\n\n7.\n Mai kiwona shi Yesu ne,\nBa fashi, ko kaɗari ma,\nHar gidansa madauwarni,\nMu je mu zauna tare.\n",
      title: "232-Mai Kiwona Shi Yesu Ne",
      tune: "The gate ajar for me"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 233,
      lyric:
          "1.\n Ya Almasihu, kai mai ɗaukar zunubai,\nBa naka ba.\nDuk na mutane ne, aza ba tasu ce,\nA jikin gungume, wuya ka sha.\n\n2.\n Addu'ata ka ji, roƙonka na ke yi\nDon taimako.\nKada in goce kuwa daga kan hanyarka.\nKa tokare ni dai, Mai Cetona.\n\n3.\n Tsoron me ni zan yi tun da ka riƙe ni\nDa hannunka?\nMai Ceto, kai kaɗai an haɗa ni da kai,\nTsayad da ni sosai, ni naka ne.\n",
      title: "233-Ya Almasihu, Kai Mai Ɗaukar Zunubai",
      tune: "My faith looks up to Thee/ Olivet"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 234,
      lyric:
          "1.\n Ina yabon sunan Yesu, shi ne Mai Cetona,\nCikin duniya duka babu kininsa.\nZunubaina masu yawa ya yafe mini duk,\nHar ya tsarkake ni cikin jininsa.\nWahala ko ta zo ne, ko daɗi na ke ji,\nSai in sani yana nan tare da ni.\n\nKORUS\nYesu ne ya ba ni iko,\nShi ne mai nasara,\nBa zan rabu ba da shi har abada.\n\n2.\n Shaiɗan ya kan jarabce ni, amma idan na je\nWurin Yesu, ya kan ba ni nasara.\nIn na karanta Littafi, in yi addu'a kuwa,\nZa ya fi ni har ya ba ni taimako.\nKo duniya duk ta ƙi ni, ba zan ji tsoro ba,\nSai in ci gaba a cikin hanyar rai.\n\nKorus\n\n3.\n Ba zai bar ni ba a duniya in zauna, ni kaɗai,\nZa ya kiyaye ni cikin ƙaunarsa.\nSai in yi masa biyayya, in aika nufinsa,\nIna dogara ga ikon Ruhunsa.\nYa shaida za ya dawo ya kai ni gidansa,\nInda zan ga fuskarsa har abada.\n\nKorus\n",
      title: "234-Ina Yabon Sunan Yesu, Shi Ne Mai Cetona",
      tune: "The Lily of the valley/ I Have Found A Friend"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 235,
      lyric:
          "1.\n Kusa da Yesu zan riƙa bi,\nKullum in gami Ubangijina.\nLoton bukata, a iske ni\nKusa da Yesu mai jin tausayi.\nKusa da Yesu mai jin tausayi.\n\n2.\n Kusa da Yesu, ga hutawa\nDaga zunubi da hukuncinsa.\nJini mai tsarki ya jawo ni\nKusa da Yesu Mai Cetona fa,\nKusa da Yesu Mai Cetona fa.\n\n3.\n Kusa da Yesu har matuƙa,\nKowane aiki zan yi dominsa.\nCan cikin Sama har abada\nKusa da Yesu zan yi zamana,\nKusa da Yesu zan yi zamana\n\n",
      title: "235-Kusa da Yesu Zan Riƙa Bi",
      tune: "Nearer, still nearer"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 236,
      lyric:
          "1.\n In san ka, Yesu, na ke so,\nDa ikon tashinka yanzu.\nIn yi tarayya tare da kai\nA cikin naka raɗaɗi.\n\n2.\n A iske ni a cikinka,\nBa da adalcin kaina ba,\nAmma ta wurin bangaskiya\nKullum in aikata nufinka.\n\n3.\n Na duba ribar duniya,\nBa za ta isa dogara ba,\nDukan abu na lassafta\nHasara domin saninka.\n\n4.\n Na baya sai in manta fa,\nIn kai ga ladan nasara.\nYa Yesu, sai in nace bi\nTare da kai, Ubangiji.\n",
      title: "236-In San Ka, Yesu, Na Ke So",
      tune: "O Master, let me walk with Thee"),
  Hymns(
      author: "",
      favorite: 0,
      id: 237,
      lyric:
          "1.\n Bari nufin Mai Cetona ya bishe ni koyaushe.\nDa ƙaunarsa da ikonsa su mallake ni.\n\n2.\n Kalmarsa ta zauna kullum cikin zuciyata sosai,\nDon a rinjayi mugunta, sai ta ikonsa.\n\n3.\n Salamar Allah Uban ta kiyaye duk raina,\nDon in ta'azantar da su masu ƃacin rai.\n\n4.\n Ƙaunar Yesu ta cika ni kamar cikowar teku,\nYa ɗaukaka, in ƙasƙanta, nasara ke nan.\n\n5.\n Tsere gaba gaɗi zan yi, in tasar wa maƙiya,\nYesu shi zan duba kawai, cin gaba zan yi.\n\n6.\n Jamalinsa ya haskaka loton neman ƃatattu,\nSanadin kuwa kar su damu, sai su gaskata.\n",
      title: "237-Bari nufin Mai Cetona Ya Bishe Ni Koyaushe",
      tune: "St. Leonards"),
  Hymns(
      author: "",
      favorite: 0,
      id: 238,
      lyric:
          "1.\n Ya Yesu, Ubangijinmu,\nMuna roƙon taimako,\nGa mu nan, mu marasa ƙarfi,\nSai ka shigo wurinmu.\n\nKORUS\nZo yanzu, cika mu,\nYesu muna roƙonka.\nCika mu da naka iko,\nBa mu ƙarfin zuciya,\n\n2.\n Ga mu nan a gaban kursiyin,\nMuna jiran ikonka.\nBan da kai, ya Ubangiji,\nBa mu iya kome ba.\n\nKorus\n\n3.\n Ƴanuwanmu cikin duniya,\nGa su suna mutuwa.\nSuna zaune cikin duhu,\nBa su san tafarki ba.\n\nKorus\n\n4.\n Ubangiji, muna roƙo,\nCika mu da ƙaunarka.\nBari Ruhunka ya ja mu,\nHar mu cika aikinka.\n\nKorus\n",
      title: "238-Ya Yesu, Ubangijinmu, Muna Roƙon Taimako",
      tune: "Fill me now/ Hover Over Me"),
  Hymns(
      author: "H. G. Farrant",
      favorite: 0,
      id: 239,
      lyric:
          "Kada ka yi sujada sai ga Allah,\nMmm, ko kaɗan, mu muna bin Yesu.\nKada ka yi kowane tsafi.\nMmm, ko kaɗan, mu muna bin Yesu.\nKada ka kama sunan Allah banza.\nMmm, ko kaɗan, mu muna bin Yesu.\nKada ka yi aiki ran hutawa.\nMmm, ko kaɗan, mu muna bin Yesu.\nKada ka raina iyayenka.\nMmm, ko kaɗan, mu muna bin Yesu.\nKada ka yi kisa, in ji Allah.\nMmm, ko kaɗan, mu muna bin Yesu.\nKada ka yi zina, in ji Allah.\nMmm, ko kaɗan, mu muna bin Yesu.\nKada ka yi sata, in ji Allah.\nMmm, ko kaɗan, mu muna bin Yesu.\nKada ka yi shaidar zur kan kowa.\nMmm, ko kaɗan, mu muna bin Yesu.\nKada ka yi ƙyashin samun wani.\nMmm, ko kaɗan, mu muna bin Yesu.\n",
      title: "239-Kada Ka Yi Sujada Sai Ga Allah",
      tune: "African tune"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 240,
      lyric:
          "1.\n Ya Yesu Almasihu, na zo gare ka yau.\nDa raina duk da ruhu, ka karne su yanzu.\nKullum in zama naka, in bi ka, kai kaɗai.\nYau nufina na ba ka, duk nawa naka ne.\n\n2.\n Ya Ubangiji Yesu, kai ne muradina.\nKa zo ka gyarta raina, ka ɗauke zunubai.\nYa Ruhun Ubangiji, zauna a zuciyata.\nGa kasawa gare ni, ka zo da ikonka.\n\n3.\n  Na gode maka, Yesu, ka zama sarkina.\nTun daga nan a duniya, ka ba ni nasara.\nKo zunubi, ko Shaiɗan, ba sa yin mulkina.\nKai ne ka ba ni ceto, i, rai har abada.\n",
      title: "240-Ya Yesu Almasihu, Na Zo Gare Ka Yau",
      tune: "The Church's one foundation/ Aurelia"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 241,
      lyric:
          "1.\n Yesu, ina roƙonka, ina neman cetonka,\nCeto daga zunubi, Yesu mai alheri.\n\n2.\n Yesu, ina roƙonka, ina neman nasara,\nBisa mugun halina, Yesu Almasihu.\n\n3.\n Yesu, ina yin addu'a, ina roƙon halinka,\nHalinka mai. tsarki, Yesu marar laifi.\n\n4.\n Yesu, ina roƙonka, ina neman hutawa, Hutawa da kayana, Yesu mai nasiha.\n\n5.\n Yesu, ina yin addu'a, ina ncman mutuwa,\nMutuwa ga duniya, Yesu Masoyina.\n\n6.\n Yesu, marmarina ne, fuskarka in duba dai,\nZauna cikin haskenka, Yesu Mai Cetona.\n",
      title: "241-Yesu, Ina Roƙonka, Ina Neman Cetonka",
      tune: "Jesus, from Thy throne/ Labbaeus"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 242,
      lyric:
          "1.\n Dukan sarautar duniyan nan,\nDa ikonta da girmanta,\nGame da kai, Mai Cetona,\nBa na maishe su kome fa.\n\n2.\n Ƴanuwana da abokaina\nBa su da hanyar taimako,\nAmma a bisa giciye\nYesu ya gama fansata.\n\n3.\n I, jinin Yesu ne kaɗai\nWanda ya shafe laifina,\nMai yawan ƙauna hakanan,\nBa waninsa a duniyan nan.\n\n4.\n Haƙuri, ƙauna, taimako,\nKoyarwa, iko, gafara,\nZuciya mai tuba, ceto duk,\nShi Yesu ne mai bayarwa.\n\n5.\n Ya Yesu Ubangijina,\nNan gaba bawanka na ke.\nZuciyata, raina, ƙaunata,\nNa ba ka duka, naka ne.\n",
      title: "242-Dukan Sarautar Duniyan Nan",
      tune: "Jesus shall reign/ Duke Street / Truro"),
  Hymns(
      author: "A. Villessen",
      favorite: 0,
      id: 243,
      lyric:
          "1.\n Ni Allahnka ne, Ubangijinka,\nBa za ka shiga bautar wani ba.\nGare ni za ka dogara kaɗai,\nNi ma zan kiyaye ka zuwa rai\n\n2.\n Ba za ka yi wa kanka sura ba,\nSura ta sama ko ta duniya.\nBa za ka yi musu sujada ba,\nNi, Ubangiji, za ka bauta wa.\n\n3.\n Ba za ka ƃāta sunan Allah ba,\nBa za ka gama shi da ƙarya ba,\nAmma a cikin duk bukatarka\nYi roƙo fa tare da godiya.\n\n4.\n Ka tuna da rana mai tsarki,\nCikinta za ka daina aikinka.\nSai dai ka tuna da maganata,\nKa nemi ceton ƴanuwanka kuwa.\n\n5.\n Uba da uwa za ka girmama,\nMaganarsu ba za ka raina ba.\nBiyayya za ka yi gare su kuwa,\nNi ma zan sa maka albarkata.\n\n6.\n Kisa ba za ka yi shi ba lalle.\nBa za ka ɗauko fansa ba daɗai.\nBa za ka ƙi wanda ya ƙi ka ba,\nƘaunarsa za ka yi har abada.\n\n7.\n Zina da fasikanci za ka ƙi,\nKada ka ko yi tunaninsu fa.\nSai ka yi zamanka da tsabtar rai,\nKiyaye aurenka da tsarkin rai.\n\n8.\n Kada ka yi sata ko yaudara.\nBa za ka ƙwace kayan kowa ba,\nAmma ka yi aiki da hannunka,\nKa riƙa taimakon matsiyata.\n\n9.\n Kada ka yi wa kowa shaidar zur.\nShaiɗan ne uban masu ƙarya,\nTsegumi da makirci nasa ne,\nDukansu dole za ka ƙi sosai.\n\n10.\n Kada ka yi ƙyashin kayan mutum.\nKada ka nemi mata tasa kuwa.\nYi aikin ƙauna da makusanta,\nYadda kai ka ke so a yi maka.\n",
      title: "243-Ni Allahnka Ne, Ubangijinka",
      tune: "Abide with me / Eventide"),
  Hymns(
      author: "",
      favorite: 0,
      id: 244,
      lyric:
          "1.\n Ya Yesu Mai Cetona, ga ni nan a giciyenka.\nIna neman ceto dai, ceto daga zunubi.\n\nKORUS\nNa dogara gare ka, Almasihu Ɗan Allah.\nKai kaɗai Mai Ceto ne, kai ka mutu domina.\n\n2.\n Kai ne ka san zamana, kai kuwa ka san tashina\nCikin dukan aikina da tunanin zuciyata.\n\nKorus\n\n3.\n Kai ne ka ke kiwona, kai ne Makiyayina.\nCikin wannan duniya, kiyaye ni lafiya.\n\nKorus\n\n4.\n Almasihu Masoyi, zauna cikin zuciyata,\nCika ni da ƙaunarka, bar in bi ka, kai kaɗai.\n\nKorus\n",
      title: "244-Ya Yesu Mai Cetona, Ga Ni Nan A Giciyenka",
      tune: "I am coming to the Cross"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 245,
      lyric:
          "1.\n Yi nufinka cikin nawa rai,\nKai magini ne, ni yumbu ne,\nShirya ni bisa ga nufinka,\nNa ba da kaina a hannunka.\n\n2.\n Yi nufinka cikin nawa rai,\nGwada, ka gani yadda na ke,\nWanke ni sarai da jininka,\nNa ba da kaina a hannunka.\n\n3.\n Yi nufinka cikin nawa rai,\nIna da ciwo na zunubi,\nKai ne mai ikon warkad da ni,\nNa ba da kaina a hannunka.\n\n4.\n Yi nufinka cikin nawa rai,\nKa yi sarauta bisana dai.\nBa ni Ruhunka, kowa ya ga\nYesu ke zaune a zuciyata.\n",
      title: "245-Yi Nufinka Cikin Nawa Rai",
      tune: "Have Thine own way, Lord"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 246,
      lyric:
          "1.\n Ƙaunar Allah, ba kamarta\nKo a Sama ko a nan,\nSai ka cika mana zuciya,\nSai mu zama cikakku.\nYesu mai jin tausayinmu,\nKai mai ƙaunar mutane,\nZiyarce mu da cetonka,\nShigo dukan zukata.\n\n2.\n Sai ka huro mana Ruhu,\nKarfafa mu duk yanzu,\nKai ne gādonmu, ya Allah,\nZa ka ba mu hutawa.\nRaba mu da son mugunta,\nKai ne Ruhu, kai ne Rai,\nFarkon kome da cikarsa,\nAllah ne Madauwami.\n\n3.\n Zo, ya Allah, domin ceto,\nBa mu duk alherinka,\nZo da sauri, zo da zama,\nZauna nan har abada.\nKai ne kullum mu ke yabo,\nBautarka ce mu ke so,\nYin addu'a da sujada\nSun yi mana daɗi yau.\n\n4.\n Mai da mu sabuwar halitta,\nTsarkake mu duka fa\nHar mu ga fansa mai girma\nWadda ka yi dominmu.\nSāke mu da darajarka,\nHar mu isa Sama can.\nZa mu rusuna gabanka\nMuna maka godiya,\n\n",
      title: "246-Ƙaunar Allah, Ba Kamarta",
      tune: "Love Divine, all loves excelling/ Hyfrydol /Beecher"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 247,
      lyric:
          "1.\n Ya Ubangiji, mallake ni\nDomin in zama da amfani.\nYi da ni yadda kai ka ke so,\nNa cire hannu nawa yanzu.\n\n2.\n Ya Ubangiji, maliake ni,\nKada in yarda da zunubi.\nBincike dukan zuciyata,\nWanke ni, Yesu, da jininka.\n\n3.\n Ya Ubangiji, mallake ni,\nKai ne mai aika al'ajabi.\nZauna a cikin zuciyata,\nYi nufinka dai ta wurina.\n\n4.\n Ya Ubangiji, mallake ni,\nRuhu Mai Tsarki ya cika ni.\nYi mulkin raina har za a ga\nHalinka, Yesu, a wurina.\n\n",
      title: "247-Ya Ubangiji, Mallake Ni",
      tune: "Have Thine own way, Lord"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 248,
      lyric:
          "1.\n Cikin zukatanmu duka, sai mu bincike yanzu\nMuna cikin hanyar Yesu? Yesu yana cikinmu.\nIdan haka, ya kamata halinsa ya bayyana.\nIdan haka, ya kamata halinsa ya bayyana.\n\n2.\n Mu kan nemi girman kanmu. Ko mun nemi nasa ne\nKo mun ajiye wa kanmu dukiya a Sama dai\nShi ya ba da ransa duka domin ceton mutane\nShi ya ba da ransa duka domin ceton mutane\n\n3.\n Kwayar hatsi, don ya tsira, sai ya mutu tukuna\nAmma bayan mutuwarsa, amfani zai yawaita\nRaina za ya zama banza in na rayu, ni kaɗai\nRaina za ya zama banza in na rayu, ni kaɗai\n\n4.\n Kada ka yi ƙaunar duniya, gama tana wucewa.\nKa yi ƙaunar Ubangiji bisa ga Maganarsa.\nIn ka fi son wani abu, ba ka isa binsa ba.\nIn ka fi son wani abu, ba ka isa binsa ba.\n\n5.\n Ko na sami dukan duniya, har na zama sarkinta,\nDuk hasara ce gare ni gaban kursiyin Allahna.\nSai abin da ke na Yesu, shi kaɗai zai dauwama.\nSai abin da ke na Yesu, shi kaɗai zai dauwama.\n\n6.\n Sai mu ba shi namu duka, shi ne hanyar nasara.\nMuddar ranmu za mu zama bayinsa na gaskiya.\nRai gare mu shi ne Yesu, mutuwa kuwa riba ce.\nRai gare mu shi ne Yesu, mutuwa kuwa riba ce.\n\n\n",
      title: "248-Cikin Zukatanmu Duka, Sai Mu Bincike Yanzu",
      tune: "What a friend We Have In Jesus /Converse/ Blaenwern"),
  Hymns(
      author: "H. K. Germaine",
      favorite: 0,
      id: 249,
      lyric:
          "1.\n Ya Yesu Mai Ceto, ka ba ni sabon rai,\nKa tsarkake ni da jininka, in ji, in bi sosai.\n\nKORUS\nKa ba ni sabon rai, a cikin zuciyata.\nKa sauko nan da ikonka, ka ba ni sabon rai !\n\nYa Ruhu Mai Tsarki, farkad da ni yanzu\nDaga nauyi, barci, ragwanci, ka wartsakad da ni.\n\nKorus\n\n3.\n Uba, ina roƙonka ka ba ni ƙishirwa\nKa shayar-da ni da ruwa mai rai, ka amsa kukana.\n\nKorus\n\n4.\n Yesu, Ruhu, Uba, na girmama ka yau.\nKa sauko nan da ikonka, na ba ka zuciyata.\n\nKorus\n\n5.\n Sai mu tashi fa ƴanuwa, mu yi ta yin addu'a\nMu yi shelar Yesu da cetonsa da ƙarfin zuciya.\n\nKorus\n",
      title: "249-Ya Yesu Mai Ceto, Ka Ba Ni Sabon Rai",
      tune: "Revive Thy work, O Lord"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 250,
      lyric:
          "1.\n Na zo gare ka, ya Allahna,\nBa ni da kome a hannuna fa.\nGa zunubai dayawa ƙwarai,\nYa Ubangiji, yi mini jinƙai,\nYa Ubangiji, yi mini jinƙai.\n\n2.\n Yesu ya mutu don laifina,\nNa sami ceto don alherinsa,\nYi mulkin raina, ya Sarkina,\nKa tsarkake ni, in bi nufinka,\nKa tsarkake ni, in bi nufinka.\n\n3.\n Zuciya da ruhu, duk naka ne,\nNa miƙa jikina baiko mai rai.\nBa nufin kaina na ke so ba,\nSai nufi naka, ya kai Allahna,\nSai nufi naka, ya kai Allahna.\n\n4.\n Inda ka kai ni duka zan bi,\nYa Ruhun Allah, Ruhu Mai Tsarki,\nKa cika zuciya da ƙaunarka,\nHar zan yi murna da bin nufinka,\nHar zan yi murna da bin nufinka:\n\n",
      title: "250-Na Zo Gare Ka, Ya Allahna",
      tune: "Nearer, still nearer"),
  Hymns(
      author: "",
      favorite: 0,
      id: 251,
      lyric:
          "1.\n Yesu Mai Ceto 'na kiran duk ƴan Ekklesiyarsa\nShi ne Magabaci namu, dukanmu masu binsa,\n\nKORUS\nMagabaci namu shi ne Ubangijinmu.\nZa mu yi masa biyayya cikin kowane abu.\n\n2.\n Wanda ya za daga bisa, bisanmu duka ya ke.\nKada mu bi nufin kanmu, sai mu bi nasa sosai,\n\nKorus\n\n3.\n In muna aiki a gida ka can a gona mu ke,\nKullum mu yi dukan kome cikin ikonsa kaɗai.\n\nKorus\n\n4.\n Nan gaba, ni a gare ni, rai shi ne Yesu Kristi\nHar dukan k0wa ya gane Yesu ne Magabaci.\n\nKorus\n\n",
      title: "251-Yesu Mai Ceto 'Na Kiran Duk Ƴan Ekklesiyarsa",
      tune: "Showers of blessing"),
  Hymns(
      author: "",
      favorite: 0,
      id: 252,
      lyric:
          "1.\n Ya Ubanmu, sa albarka\nBisa kan ƴaƴanka yau.\nZa mu yi yabon sunanka,\nAddu'a kuma za mu yi.\nMun ji labarin Ubangiji\nNa gaskiya da alheri.\nCikin hasken Almasihu\nZa mu gane ƙaunarka.\n\n2.\n Maganarka ta koya mana\nMu ƙaunaci ƴanuwa,\nMu girmama gaskiyarka,\nMu yi haƙuri kullum,\nMu hori kanmu da aniya\nDomin mu yi aikin kirki,\nLoton shiru ko na faɗi,\nKoyaushe sai kamewa.\n\n3.\n Bari ruhohinmu duka\nSu yi yabon ikonka.\nMurna, ƙauna da salama\nSu kasance wurinmu duk.\nMu zama amintattu naka,\nKo cikin aiki ko tunani.\nTsakaninmu da ƴanuwanmu,\nMu yi duk domin Yesu.\n\n4.\n Mu ɗaukaka sunan Allah,\nMu ambaci duk tsarkinsa.\nAlbarka kuwa ga Almasihu\nDa Ruhunsa Mai Tsarki.\nGa Allah Uba, Allah Ɗa kuwa,\nAllah Ruhu Mai Tsarki,\nMu ha ka dukan daraja ma,\nAllahnmu har abada.\n",
      title: "252-Ya Ubanmu, Sa Albarka",
      tune: "Pleading Saviour"),
  Hymns(
      author: "",
      favorite: 0,
      id: 253,
      lyric:
          "1.\n Ya Allahna, ƙarfafa ni\nLoton da duniya ta cuɗe,\nDomin kullum in yabe ka, in yi nufinka\n\n2.\n Ka buɗe mini idanu,\nIn ga kasawar ƴan Adam,\nIdonka zai yi nasara, in yi nufinka.\n\n3.\n Da hamdala da dangana,\nDa ƴanci zan yi sujada,\nKullum in yi ta addu'a, in yi nufinka.\n\n4.\n Ko'ina cikin ƃacin rai\nZan sa dangana gare ka,\nHikimarka ta bishe ni, in yi nufinka.\n\n5.\n Da ikonka mai taimako,\nZan kiyaye wa'adina,\nIn manta da kaina, sai kai, in yi nufinka.\n\n6.\n Algaitar Sama ta furta.\nSu gaskatawa, da bege,\nDa ƙauna sun yi nasara, in yi nufinka.\n\n",
      title: "253-Ya Allahna, Ƙarfafa ni",
      tune: "Es ist Kein Tag"),
  Hymns(
      author: "",
      favorite: 0,
      id: 254,
      lyric:
          "1.\n Allahna, ka keƃe ni, tsarkake ni dominka.\nBari dukan kwanakina in yi ta yabonka.\n\n2.\n Kebe hannuwana dai, su yi aikin ƙaunarka.\nBi da ƙafafuna kuwa har su tafi gun aikinka.\n\n3.\n Bari muryata ta yi waƙar yabon Allahna.\nBari leƃunana su furta kullum saƙonka.\n\n4.\n Nufina duk dukiyata sai ta zama dominka.\nIyawar da ka bayar sai in mayar don aikinka.\n\n5.\n Na yarda duk nufina naka nufi ya aikata.\nZuciyata kuwa taka ce, za ta zama kursiyinka.\n\n6 Ya Allah, ga ƙaunata tare da duk dukiyata.\nIna nan da shiri kuwa kullum domin bautarka,\n",
      title: "254-Allahna, Ka Keƃe Ni, Tsarkake Ni Dominka",
      tune: "Mozart/ Nottingham"),
  Hymns(
      author: "",
      favorite: 0,
      id: 255,
      lyric:
          "1.\n Ina gaskata da Yesu, Ubangijina.\nBangaskiya ta kawo ceto cikakke.\n\n2.\n Na gaskata gafararka, ga ni durƙushe,\nDon ƙaunarka da jinƙanka, na amince.\n\n3.\n Ina son ka tsarkake ni domin giciye.\nKeƃe ni, ka tsarkake ni da jininka.\n\n4.\n Ina roƙo ka bishe ni, Yesu, kai kaɗai.\nYau da gobe ka ke ba ni bukataina.\n\n5.\n Ina gaskata ka, Yesu, ba zan kasa ba.\nNa gaskata ka, Mai Ceto, har abada.\n\n",
      title: "255-Ina Gaskata da Yesu, Ubangijina",
      tune: "I am trusting Thee"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 256,
      lyric:
          "1.\n Ya Mai Ceton duniya duka,\nKasa mana kunnenka.\nBayinka fa, muna roƙo,\nMuna neman ikonka.\nBa don kanmu mu ke so ba.\nKo'ina ga ƴanuwa.\nMu mun samu, su sun rasa.\nNuna mu su cetonka.\n\n2.\n Mu da kanmu dai mun kasa,\nIkon ceto naka ne.\nBan da kai, ya Ubangiji,\nAikinmu na banza ne.\nƊibo mana iko naka,\nCika mu da ƙarfinka.\nKullayaumin taimake mu,\nHar mu gama aikinka.\n\n3.\n Inda za mu shiga duka,\nTaimake mu, bayinka,\nDomin masu ji su yarda\nDa labarin ƙaunarka.\nƘarfafa ma'aikatanka,\nSa musu albarkarka,\nHar mutane duk su tsira,\nDuk su shiga mulkinka.\n",
      title: "256-Ya Mai Ceton Duniya Duka",
      tune:
          "Lord, Thy ransomed Church/Contemplation/ What a Friend / Converse"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 257,
      lyric:
          "1.\n Ina da aiki nan, Allah zan ɗaukaka.\nRaina zan sa a hannunsa a ƃoye a Sama can.\n\n2.\n Zan yi ta aikina, zan cika kirana.\nDa hannu biyu, da zuciya ɗaya in bauta wa Yesu.\n\n3.\n Ya Ubangijina, ka ba ni Ruhunka.\nKa shirya bawanka a nan don aikin Sama can.\n\n4.\n Ka ba ni taimako, ka ji addu'ata,\nDon kada dai in kasa nan, in rasa ladana.\n\n",
      title: "257-Ina da Aiki Nan, Allah Zan ɗaukaka",
      tune: "The Heavenly Lamb/Blest Be the Tie That Binda/Boylston/Cromer"),
  Hymns(
      author: "A. P. Stirret",
      favorite: 0,
      id: 258,
      lyric:
          "1.\n Ga masu bacewa, sai ku cece su,\nFaɗaɗɗu, sai ku tsaishe su sosai.\nRuɗaɗɗu, batattu, bi su da kuka,\nKai su gun Yesu mai yawan tausayi.\n\nKORUS\nBi masu ƃacewa, kada su mutu,\nKai su gun Yesu, mai yawan tausayi.\n\n2.\n Yesu ya iya ya rayad da kowa,\nWanda ya kira, ba zai ƙi shi ba.\nBi su da ƙauna, ka kai su gare shi,\nKo za su karƃa, su yarda da shi?\n\nKorus\n\n3.\n Ceci mutane dai, Yesu 'na jira.\nKu Masu binsa fa, me ku ke yi?\nKira mutane su juyo, su bi shi,\nYesu Ɗan Allah Mai Cetonsu ne.\n\nKorus\n",
      title: "258-Ga Masu Ɓacewa, Sai Ku Cece Su",
      tune: "Rescue the perishing"),
  Hymns(
      author: "A. P. Stirret",
      favorite: 0,
      id: 259,
      lyric:
          "1.\n Muryar Makiyayi ce\nCan cikin jeji na ke ji,\nKira tumaki ƃatattu,\nNesa da garke sun watsu.\n\nKORUS\nZo da su, zo da su,\nZo da su wurin cetonsu,\nZo da su, zo da su,\nZo da su wurin Yesu.\n\n2.\n Wa za ya taimaki Yesu,\nTaimake shi da samunsu?\nWa za ya kawo ƃatattu\nWurin da za a cece su?\n\nKorus\n\n3.\n Suna ta kuka can jeji,\nInda ba kowa a kan dutse.\nUmarnin Yesu ka ke ji,\n\"Zo da tumakina yanzu.\"\n\nKorus\n",
      title: "259-Muryar Makiyayi Ce",
      tune: "Bring them in/ Hark! 'tis the Shepherd's voice"),
  Hymns(
      author: "A. P. Stirret",
      favorite: 0,
      id: 260,
      lyric:
          "1.\n Yesu Ubangijinmu ne, shi ne Sarkinmu,\nLalle shi ne zai yi mulkin dukan duniya.\n\nKORUS\nYesu, Yesu, muna sonka domin ƙaunarka.\nKai kaɗai ka iya ceto, ceton gaskiya.\n\n2.\n Muna so mu jawo mutane zuwa hanyarka,\nKada danginmu su mutu cikin zunubai.\n\nKorus\n\n3 Ku mutane, kasa kunne, sai ku tuba fa,\nSai ku bi Ubangijinmu, za ya cece ku.\n\nKorus\n\n",
      title: "260-Yesu Ubangijinmu Ne, Shi Ne Sarkinmu",
      tune: "Hold the fort/Ho, My Comrades!"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 261,
      lyric:
          "1.\n Zo, ku ji umarnin Yesu, (3x)\nSai mutane duk su ji.\n\nKORUS\nYesu za ya taimake mu, (3x)\nHar mutane duk su ji.\n\n2.\n Za mu yi bangaskiya, (3x)\nHar mutane duk su ji.\n\nKorus\n\n3.\n Za mu je kowane gida, (3x)\nHar mutane duk su ji.\n\nKorus\n\n4.\n Za mu ba da labari, (3x)\nHar mutane duk su ji.\n\nKorus\n\n5.\n Za mu shaida wa yara, (3x)\nHar mutane duk su ji.\n\nKorus\n\n6.\n Za mu yi musu addu'a, (3x)\nHar mutane duk su ji.\n\nKorus\n\n7.\n Za mu hau cikin dutse, (3x)\nHar mutane duk su ji.\n\nKorus\n\n8.\n Za mu daure shan wuya, (3x)\nHar mutane duk su ji.\n\nKorus\n\n9.\n Za mu komo da murna, (3x)\nIn mutane duk sun ji.\n\nKorus\n",
      title: "261-Zo, Ku Ji Umarnin Yesu",
      tune: "'Tis the old time religion"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 262,
      lyric:
          "1.\n Da jininsa ya fansa, da ransa ne ya biya\nLaifofin duk jama'a, bashi mai girma ne.\nYa iske mu a jeji, ya kai mu gidansa,\nBa bayi nan gaba ba, ƴaƴan sarautarsa.\n\n2.\n Me ne dalilin wannan aikin al'ajabi?\nYa wuce dukan faɗi, ya zarce tunani.\nMe za mu kai gare shi, shaidar godiyarmu?\nBayi ba su da zaƃi, ko da, mu nasa ne.\n\n3.\n A cikin mulkin Allah, an kafa hidima.\nGare mu aka raba abin da za mu iya.\nBa domin ikon kanmu ko kuwa da karfi ba,\n\"Da ikon nawa Ruhu,\" Ubangiji ya ce.\n\n4.\n Allah Mahaliccinmu, Yesu mai ba da rai,\nRuhu mai taimakonmu, uku a cikin ɗaya, Ranmu da aka saya, aikin da mu ke yi,\nRuhunmu duk da jiki, karƃa, godiyarmu ne.\n",
      title: "262-Da Jininsa Ya Fansa, da Ransa Ne Ya Biya",
      tune: "From Greenland's icy mountains/ Greenland"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 263,
      lyric:
          "1.\n Yesu Ubangijinmu ne,\nJininsa ya saye mu,\nDaga hannunsa mun sami\nCeto daga zunubi.\nMu bayinsa, mu bayinsa,\nSai mu yi ta aikinsa.\n\n2.\n Almasihu ya fanshe mu,\nBa da azurfa ba fa,\nBa kuwa da zinariya ba,\nSai da jininsa kaɗai.\nMu bayinsa, mu bayinsa,\nMu, hakika, nasa ne.\n\n3.\n Ranmu duka ne ya saya,\nRabin zuciya ba ya so.\nShi ya ba da ransa duka,\nNamu duka ya ke so.\nMu bayinsa, mu bayinsa,\nKome namu za mu bayar.\n\n4.\n Ga mutane cikin duniya,\nBa su san Mai Ceto ba.\nShi kuwa yana so su san shi\nSai mu je mu neme su.\nMu bayinsa, mu bayinsa,\nSai mu je mu neme su.\n\n5.\n Ƴanuwana, sai mu tuba,\nSai mu yad da ƙyuyarmu,\nGa mutane suna mutuwa,\nSai mu ceci waɗansu\nMu bayinsa, mu bayinsa,\nƘaƙa za mu ƙyale su?\n\n6.\n Su da suka yi aniya,\nMasu yi da zuciya ɗaya,\nRan da Yesu za ya komo,\nZa a ɗaukaka su dai.\nBayin Yesu, bayin Yesu,\nZa su sami ladansu.\n\n",
      title: "263-Yesu Ubangijinmu ne, Jininsa Ya Saye Mu",
      tune:
          "Look, ye saints, the sight is glorious / Guide me, O Thou great Jehovah"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 264,
      lyric:
          "1.\n Zo, mu ba da shaida, duniya duk ta ji,\nBabu damar hutu, babu damar ƙi.\nCewar Almasihu, duk su duba ni,\nHaka za su sami rai.\n\nDuniya duk ta ji, duniya duk ta ji,\nDuniya duk ta ji labarin fansarta.\nBabu damar zama, Yesu ba ma ƙi,\nZo, mu ba da shaidarmu.\n\n2.\n Zo, mu kafa tuta, yaƙi za mu yi,\nYaƙin Almasihu, ba mai damar ƙi.\nFizgi bayin duhu daga zunubi,\nKai su wurin Sarkinma,\n\nDuniya duk ta ji, duniya duk ta ji,\nDuniya duk ta ji labarin fansarta.\nBabu damar zama, Yesu mu ke bi,\nZo, mu kafa tutarmu.\n\n3.\n Zo, mu faɗi laifi, roƙi gafara,\nMu mun yi son zuciya, mu nun yi ƙyuya.\nDomin rashin ƙauna, domin ba aniya,\nDuniya tana mutuwa.\n\nYaushe za ta ji? Yaushe za ta ji?\nYaushe za ta ji labarin fansarta?\nYesu AImasihu, gyarta halinmu,\nMuna faɗin laifinmu.\n\n",
      title: "264-Zo, Mu Ba da Shaida, Duniya Duk Ta Ji",
      tune: "Whosoever will may come/Whosever Heareth"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 265,
      lyric:
          "1.\n Muna zuwa wurin Yesu, Mai Ceto,\nDon mu shiga aikinsa.\nShi ya kira mu mu yi ta wa'azi\nKo'ina a duniya.\n\nKORUS\nYesu ne Shugaba,\nShi ne mai ƙaunar mutane.\nZa mu taya shi nemansu\nDon su sami gafara.\n\n2.\n Komenene Yesu shi ya ce mu yi,\nZa mu yi da zuciya ɗaya.\nZa mu yi biyayya cikin abu duk,\nZa mu yi ta wa'azi\n\nKorus\n\n3.\n Shi ya ce mu bar duk zunubai na dā,\nMu tafi da tsabtar rai.\nKo ya nemi kayan da ke wurinmu,\nZa mu ba shi nandanan.\n\nKorus\n\n4.\n Sai mu yi aniya cikin aikinsa\nSai mu ƙara ƙoƙari.\nShi da kansa zai tafi tare da mu\nHar iyakar duniya.\n\nKorus\n",
      title: "265-Muna Zuwa Wurin Yesu, Mai Ceto",
      tune: "The banner of the Cross/There's a Royal Banner"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 266,
      lyric:
          "1.\n Tashi, mu kama aiki, aikin Ubangiji.\nHatsi ya isa girbi, zo dai, mu yi ta yi.\nMa'aikata sun kasa, girbi day awa ne.\nBari mu tara hatsi, kar ya lalace.\n\n2.\n Tashi, mu sh iga yaƙi, yaƙin Ubangiji.\nYesu ya kira dukan ma su bangaskiya.\nShaiɗan da magautanmu suna ta tsayayya, Amma da ikon Yesu mā yi nasara.\n\n3.\n Tashi, mu yi aniya, jin daɗi sai mu ƙi,\nBa ma wahalar banza cikin aikinsa.\nIdan mun gama aiki, mun taru wurinsa,\nZai raba mana lada, ladan nasara.\n\n",
      title: "266-Tashi, Mu Kama Aiki, Aikin Ubangiji",
      tune: "Work, for the night is coming"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 267,
      lyric:
          "1.\n Ko zan tafi da hannu wofi\nWurin Ubangijina?\nBa mai tuba da zan kawo\nRan da na ga fuskarsa?\n\nKORUS\nIn na tafi da hannu wofi,\nBabu kowa tare da ni,\nRan da na ga fuskar Yesu\nLalle kunya ce zan ji.\n\n2.\n Ubangiji ya sha wahala\nGarin neman tumaki,\nHar ya ba da ransa duka\nNi Mai Bi fa, me zan yi?\n\nKorus\n\n3.\n Ƴanuwana ma sun tashi\nSuna kama aikinsa.\nGa ni nan dai hannu wofi\nNi kuwa ban yi aiki ba.\n\nKorus\n\n4.\n Ni ma ina so in tashi\nCikin ƙarfin ikonsa,\nDon in sami masu tuba\nDa zan kawo wurinsa.\n\nKorus\n",
      title: "267-Ko Zan Tafi da Hannu Wofi",
      tune: "Must I go and empty-handed?"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 268,
      lyric:
          "1.\n Yesu ne ya ba mu suna, mu da mu ke binsa nan,\nYana ce da mu masuntan mutane.\nYana so mu yi ƙoƙari da mutanen duniya\nHar mu jawo su gun Yesu Mai Ceto.\n\nKORUS\nSai mu nemi ƴanu'wanmu,\nSai mu nemi ƴanuwanmu,\nSai mu nemi ƴanuwanmu\nHar mu jawo su gun Yesu Mai Ceto.\n\n2.\n Kamar ƃatattun tumaki ba su san gidansu ba,\nSuna makuwa a cikin jeji kuwa.\nSai mu yi musu addu'a, mu yi musu shaida ma,\nHar mu jawo su gun Yesu Mai Ceto.\n\nKorus\n\n3.\n Sai mu daɗa yin ƙoƙari, gama suna mutuwa,\nBa su san labarin ceton Allah ba.\nBar mu dinga faɗa musu har ya shiga zuciya,\nSai mu jawo su gun Yesu Mai Ceto.\n\nKorus\n",
      title: "268-Yesu Ne Ya Ba Mu Suna, Mu da Mu Ke Binsa Nan",
      tune: "When the trumpet of the Lord shall sound/ Roll Call"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 269,
      lyric:
          "1.\n Zumuntar Masu Bi da daɗi kamar me!\nBa za a ga irinsa ba, sai can wurin Kristi.\n\n2.\n Kadan wani Mai Bi ya je don wa'azi,\nKome nisan tafiyarsa, ba za mu manta ba.\n\n3.\n Sai binsa za mu yi ta wurin roƙonmu.\nDa ƙauna za mu raka shi, mu ƙarfafa shi kuwa.\n\n4.\n Ko cikin ƙunci ne, ko wurin hatsari,\nKo ciwo ne, ko lafiya, ba za mu fasa ba.\n\n5.\n Idan ya dawo fa, murnar da za mu yi\nBa za a ga irinta ba sai wurin Masu Bi.\n\n6.\n Can wurin Yes dai inda ba rubuwa,\nCan za mu gai da junanamu, mu gode har abada,\n",
      title: "269-Zumuntar Masu Bi da Daɗi Kamar Me",
      tune: "BIest be the tie that binds"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 270,
      lyric:
          "1.\n Yesu Ɗan Allah ne, Mai Ceton duniya,\nYa ƙaunace mu har ga mutuwa.\nWanda ya ba da gaskiya gare shi\nLalle ya tsira daga shari'a.\n\nKORUS\nYesu mai iko duka ne,\nBa za ya kasa ba daɗai,\nSai mu kai bishara ko'ina a duniya\nShi kuwa za ya taimake mu.\n\n2.\n Ƴanuwanmu sun ƃata cikin duhu,\nBa su da rai, ko sanin hanyarsa.\nKada su mutu cikin zunubansu,\nSai dai su zo su sami gafara.\n\nKorus\n\n3.\n Ubangijinmu za ya sake zuwa\nDomin ya kai mu can a gidansa.\nMe za mu ce idan mun ƙi biyayya?\nMe za mu amsa masa ranan nan?\n\nKorus\n\n4.\n Sauri, jama'a, Yesu yana kiran\nDuk Masu Bi su kama aikinsa.\nMaza da mata duk da yara kuma,\nTashi, mu yi biyayya nandanan.\n\nKorus\n",
      title: "270-Yesu Ɗan Allah Ne, Mai Ceton Duniya",
      tune: "Go ye into all the world/ Far, far away/ How Great Thou Art"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 271,
      lyric:
          "1.\n Ba da labarin mutuwar Yesu,\nJini ya bayar domin cetonmu,\nAmma ya tashi, ya ci nasara,\nCeto za a samu wurinsa kaɗai.\n\nKORUS\nBa su labari, ba su labari,\nYawancinsu ba su ji ba.\nMasu zunubi su tuba su bi shi,\nYesu Mai Cetonsu ne.\n\n2.\n Ba da labari ga mazaje duk,\nBa za su tsira ba, sai dai sun ji.\nBa da labari a wurin mata,\nDon su ma su tuba su ba da gaskiya.\n\nKorus\n\n3.\n Ba da labari don yara su ji,\nSu ƙanƙanana su gane su bi.\nKo masu yawa, ko ɗaya kaɗai,\nMu ba su labari da ƙwazo sosai.\n\nKorus\n\n4.\n Ba da labari ga duk mutane,\nKo sun ji daɗi, ko wasu sun ƙi.\nYi ta addu'a da bangaskiya,\nMaganarsa tana da iko sosai.\n\nKorus\n",
      title: "271-Ba da Labarin Mutuwar Yesu",
      tune: "Throw out the life-line"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 272,
      lyric:
          "1.\n Ta da ido, ka duba gonaki\nCikin duniyan nan yanzu,\nDukansu sun isa girbi,\nBabu ma'aikata sosai.\n\nKORUS\nUbangiji, muna roƙo,\nLokaci 'na wucewa,\nNuna mana wurin aiki\nDon mu kawo girbinka.\n\n2.\n Tun da wuri sai mu tafi.\nKo da rana kada mu ƙi.\nKo gajiya ta zo da yamma,\nSai mu ƙarasa aikinmu.\n\nKorus\n\n3.\n Lalle za mu sha wahala\nCikin wasu gonaki.\nAmma can a cikin Sama\nMurna, murna za mu yi.\n\nKorus\n",
      title: "272-Ta da Ido, Ka Duba Gonaki",
      tune: "A call for reapers/ Far and near the fields are teaming/Harvest"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 273,
      lyric:
          "1.\n Ubangijin girbi 'na kiranmu.\nGa hatsi ya nuna, mu zo yanzu,\nMu tashi mu je gun ƃattatu,\nMu shaida labarin Mai Cetonmu.\n\nKORUS\n\"Wa za ya tashi ?\" in ji Yesu,\nIn aike shi a wurin ƃatattu.\n\"Ya taimake ni da nemansu,\nYa shaida musu akwai ceto.\"\n\n2.\n Ku duba,  girbi dayawa ne,\nGa ma'aikam kuwa, kaɗan su ke\nMu yi roƙo gun Ubangiji\nYa aiki manzanni domin su ji.\n\nKorus\n\n3.\n Ka yi addu'a, yi taimako,\nKa ba da dukiya domin su zo.\nA cece su daga halaka,\nSu sami ceto da gafara.\n\nKorus\n",
      title: "273-Ubangijin Girbi 'Na Kiranmu",
      tune: "O, where are the reapers?"),
  Hymns(
      author: "",
      favorite: 0,
      id: 274,
      lyric:
          "1.\n Yesu ni ne naka, zan bi ka kuwa,\nTun ka kori duhu daga zuciyata.\nKome yawan duhu nan a duniya,\nInda na ke duka, zan haskaka.\n\n2.\n Dā, na sha wahala gun magauci,\nHar ka wanke zuciya daga zunubi.\nSai ka ƙarfafa ni cikin hanyarka.\nInda na ke duka, zan haskaka.\n\n3.\n Yesu ni ne naka, zan shaida kuwa,\nDon mutanen duniya su ga haskenka.\nRaina za ya zama kamar fitila,\nInda na ke duka, zan haskaka .\n",
      title: "274-Yesu Ni Ne Naka, Zan Bi Ka Kuwa",
      tune: "Jesus bids us shine"),
  Hymns(
      author: "C. Epp",
      favorite: 0,
      id: 275,
      lyric:
          "1.\n A cikin ikonka, ya Yesu Kristi,\nZa mu tafi mu yi ta aikinka.\nIdan ka bi da mu, ya kai Mai Iko,\nBa za mu ji tsoron duk duniya ba.\nIdan ka bi da mu, ya kai Mai Iko,\nBa za mu ji tsoron duk duniya ba.\n\n2.\n Sunanka, Yesu Kristi Almasihu,\nSunanka dai duk mafi daɗi ne.\nKai ne adalcinmu, kai ne Mai Ceto,\nKai ne Sarkinmu, kai mai daraja.\nKai ne adalcinmu, kai ne Mai Ceto,\nKai ne Sarkinmu, kai mai daraja.\n\n3.\n Gare ka mu ke dogara, ya Yesu,\nInda ka nufa duka za mu bi,\nKo cikin daɗi, ko a cikin wuya,\nKo cikin mutuwa, mu dai nake ne.\nKo cikin daɗi, ko a cikin wuya,\nKo cikin mutuwa, mu dai naka ne.\n\n4.\n A cikin ikonka, ya Yesu Kristi,\nAlherinka ya fi bukatarmu.\nMu kuwa mun fi gaban masu nasara\nDon ƙaunarka, ya Ubangijinmu.\nMu kuwa mun fi gaban masu nasara\nDon ƙaunarka, ya Ubangijinmu.\n",
      title: "275-A Cikin Ikonka, Ya Yesu Kristi",
      tune: "Be still, my soul/ Finlandia"),
  Hymns(
      author: "",
      favorite: 0,
      id: 276,
      lyric:
          "1.\n Mai Bin Ubanginmu, ka kama hanyarsa,\nYesu ne ya ke kira, Yesu ne ladanka.\n\n2.\n Ka yad da aikin duhu, ka tuƃe zunubi,\nYi tseren nan gabanka tare da haƙuri.\n\n3.\n Ba za ka ji Shaiɗan ba, ba za ka koma ba.\nTare da Almasihu, bari ka ci gaba.\n\n4.\n Raini ba za ka ƙi ba, kada ka ji tsoro.\nKa dubi Almasihu, kullum ka shaida shi.\n\n5.\n Mai Bin Ubangijinmu, ka dubi darajar\nDa aka sa gabanka, ka gama lafiya.\n",
      title: "276-Mai Bin Ubanginmu, Ka Kama Hanyarsa",
      tune: "O Jesus, Thou art standing/ Llangloffan"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 277,
      lyric:
          "1.\n Ina cikin yaƙi, magautana kuwa\nShaiɗan ne da duniya, duk da zuciyata.\nUbangiji Yesu, ji addu'ata,\nBan da taimakonka sai in halaka.\n\n2.\n Ni ban isa kome cikin yaƙi ba.\nSai da taimakonka zan ƙori Shaiɗan.\nIn ka bar ni, Yesu, mutuwa zan yi.\nYesu, na roƙe ka, riƙe ni yanzu.\n\n3.\n Kowane Mai Binka, in ya kira ka,\nZa ka taimake shi cikin yaƙinsa.\nIn ka ba ni iko, zan yi nasara.\nNa roƙe ka, Yesu, kai ni lafiya.\n",
      title: "277-Ina Cikin Yaƙi, Magautana Kuwa",
      tune: "Now the day is over/Eudoxia/Merrial"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 278,
      lyric:
          "1.\n Mai Ceto nawa Yesu ne,\nGa magauta a kewaye,\nGa kuwa jaraba ko'ina,\nAmma ba zan ji tsoro ba.\n\nKORUS\nMai Cetona, Mai Cetona\nMai Ceto nawa Yesu ne.\nA cikin hannunsa na ke,\nShi kuma yana tsarona,\nMai Cetona, Mai Cetona,\nMai Ceto nawa Yesu ne.\n\n2.\n Shaiɗan da dukan wayonsa,\nNa sani yana nemana,\nAmma Mai Cetona 'na nan,\nBa zan damu ba, ko kaɗan.\n\nKorus\n\n3.\n Kwatancin Yesu na ke bi,\nMaganar Yesu na ke ji.\nShaiɗan ya zo da ruɗinsa,\nNi ba zan kasa kunne ba.\n\nKorus\n",
      title: "278-Mai Ceto Nawa Yesu Ne",
      tune: "Beulah Land/ I've reached the land"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 279,
      lyric:
          "1.\n Mu ƴan yaƙin Yesu ne, gaba mu ke yi\nShaiɗan ya amsa dā, mun yi bautarsa\nMutuwar Almasihu fansarmu ta yi.\nMu yanzu nan gaba binsa za mu yi.\n\nKORUS\nYaƙin Almasihu, ƴanuwa, mu ke yi.\nGabanmu ya tafi, binsa mu ke yi.\n\n2.\n Sarakunan duniya, duk da ikonsu,\nSu kan zo su wuce, ba Su tsayawa,\nJama'ar Almasihu la tabbata nan.\nIkon Shaiɗan, ikon duniya, ba sa yin nasara.\n\nKorus\n\n3.\n Inda mu ke bi yanzu, sawun mutanen dā.\nSu sun fara shiga cikin hutunsu.\nMu da su ɗaya ne, duk jama'arsa,\nƘaunarmu da saninmu duk da nasu ɗaya.\n\nKorus\n",
      title: "279-Mu Ƴan Yaƙin Yesu Ne, Gaba Mu Ke Yi",
      tune: "Onward, Christian Soldiers /St. Gertrude"),
  Hymns(
      author: "",
      favorite: 0,
      id: 280,
      lyric:
          "1.\n Ƴan yaƙin Almasihu, ku sa sulkenku fa,\nKu ɗauki kayan yaƙinsa, ku kafa dagarku.\n\n2.\n Cike da Ruhunsa, da ƙarfi za ku tsaya\nIdan kun dubi Almasihu, za ku ci gaba dai.\n\n3.\n Ku zare takobi, Maganar Allah ce.\nKuma ku ɗauki garkuwarku, wato bangaskiya ce.\n\n4.\n Karƙashin tutarsa kada ku ji tsoro.\nKu fāda wa maƙiyanku, Shaiɗan da zunubi.\n\n5.\n Da haka za ku tsaya, kome kashedinsu.\nMagauta za su ba ku baya, kome dai ikonsu.\n",
      title: "280-Ƴan Yaƙin Almasihu, Ku Sa Sulkenku Fa",
      tune: "Soldiers of Christ, arise / Franconia"),
  Hymns(
      author: "",
      favorite: 0,
      id: 281,
      lyric:
          "1.\n Yaƙi 'na nan, yaƙi na Almasihu ne,\nKu Masu Bi, yi shirin yaƙin nan.\nUbangijinmu shi ne sarkin yaƙin nan\nDa mu ke yi, zai ba mu nasara.\n\nKORUS\nYaƙi 'na nan, ku Masu Binsa,\nKu nemo kayan yaƙin nan,\nSulken adalci, kwalkwalin ceto,\nDa garkuwa ta bangaskiya,\nTakalma na shirin bishara,\nGaskiya ce ɗamararmu,\nTakobin Ruhu--Maganar Allah,\nDa su mu ke yin nasara.\n\n2.\n Ku ƙarfafa a cikin Ubangijinmu,\nKu tsaya fa ta wurin bangaskiya.\nKokawarmu tare da Shaiɗan ne da\nIkoki nasa da kuma zunubi.\n\nKorus\n\n3.\n Ku yi aniya, ga Yesu yana zuwa\nDon ya dube mu a cikin yaƙin nan.\nGa shi, hakkinsa yana nan tare da shi,\nZai bayar wa masu cin nasara.\n\nKorus\n",
      title: "281-Yaƙi 'Na Nan, Yaƙi Na Almasihu Ne",
      tune: "The fight is on"),
  Hymns(
      author: "E. P. Miller",
      favorite: 0,
      id: 282,
      lyric:
          "1.\n Ƴan tumaki ne mu a tsakiyar kerketai,\nAmma \"Haka na aike ku,\" Ubangiji ya  e.\n\n2.\n Jawabinsa kaɗai kayan yaƙinmu ne.\nIn ji shi, \"Mulkin Allah ne ya zo kusa da ku.\"\n\n3.\n Ko kisanmu sā yi, ko wuya za mu sha,\nAn kashe Ubangijinmu, balle iyalinsa.\n\n4.\n Mu ɗauki giciyensa, bayansa za mu bi,\nDomin a ranar zuwansa, mu karƃi yabonsa.\n",
      title: "282-Ƴan Tumaki Ne Mu a Tsakiyar Kerketai",
      tune: "Soldiers of Christ, arise / Franconia"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 283,
      lyric:
          "1.\n Yesu mu ne naka, kai ka saye mu,\nGa kuwa muna zuwa bayanka yanzu.\nInda za ka duka, wurin za mu bi,\nKome wuyar aiki, lalle za mu yi.\nKome ya same mu, ko a cikin rai,\nKo ya kai ga mutuwa, Yesu mu ke bi.\n\n2.\n Masu Bi, ku tashi, yi da zuciyarku,\nAikin Ubangiji yana jiranku.\nGa mutanen duniya, duhu su ke bi,\nBa sa bin tafarki, ƙaƙa za mu yi ?\nLalle sai mu tashi, hutu sai mu ƙi,\nHar labarin Yesu dukansu sun ji.\n\n3.\n Duba can a Sama, ga mazuninmu,\nDaraja da tsarki, ba misalinsu.\nBabu saura kewa, babu rabuwa,\nBabu sauran cuta, babu mutuwa.\nGaba dai, ƴanuwanmu, yad da duniya,\nSama mu k enema, gidan tsarkaka.\n\n4.\n Kome daɗin Sama, wanna ne mai fi,\nYesu za mu gani, Yesu za mu ji.\nƘafa, hannu, goshi, shaida su ke yi\nDa azabar kansa fansarmu ya yi.\nSauri fa, jama’a, babu hutawa!\nYesu mu ke nema, za mu wurinsa.\n",
      title: "283-Yesu Mu Ne Naka, Kai Ka Saye Mu",
      tune: "Forward be our watchword/ Armageddon"),
  Hymns(
      author: "H. E. Smith",
      favorite: 0,
      id: 284,
      lyric:
          "1.\n Ya Almasihu, sarkin tsarkakanka,\nKai ne ka taya su cikin jaraba.\nDuk Masu Binka suna yabonka.\nHalleluya! Halleluya!\n\n2.\n Kai ne mazauninmu har abada,\nKai fā na ceto ne da mai taimako.\nKai Shugaba ne cikin yaƙinmu.\nHalleluya! Halleluya!\n\n3.\n Idan da tsoro cikin zukatanmu,\nKo ikon Shaiɗan ne ya ke ƃata rai,\nKai ne ka fi shi, kai kuwa namu ne.\nHalleluya! Halleluya!\n\n4.\n Kai ne ka kira mu mu bi bayanka.\nKai za ka taya mu cikin yaƙin nan.\nShaiɗan, magauci, za ka taka shi.\nHalleluya! Halleluya !\n\n5.\n Sai wata rana sammai za su buɗe,\nZa ka bayyana nan cikin daraja.\nMu kuwa magada ne na muikinka.\nHalleluya! Halleluya!\n",
      title: "284-Ya Almasihu, Sarkin Tsarkakanka",
      tune: "For all the saints/ Sine Nomine"),
  Hymns(
      author: "",
      favorite: 0,
      id: 285,
      lyric:
          "1.\n Ku yi ƙarfin zuciya cikin Allahnmu.\nShaiɗan da mala'ikunsa sun kewaye mu duk.\n\nKORUS\nSai mu tsaya cikin ikon Yesunmu\nSai mu riƙa ƙaunar Almasihu Mai Ceto.\n\n2.\n Ga shi, Shaiɗan yana nan cikin duniya,\nYana fushi in ya ga mu bayin Yesu ne.\n\nKorus\n\n3.\n Kome yawan wahala da Shaiɗan ya kawo,\nSai mu bi Ubangiji, zai ba mu nasara.\n\nKorus\n\n4.\n Idan muna jurewa zuwa matuƙa,\nAlmasihu za ya ba mu kambin nasara.\n\nKorus\n",
      title: "285-Ku Yi Ƙarfin Zuciya Cikin Allahnmu",
      tune: "Daniel's band/ Standing by a purpose true"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 286,
      lyric:
          "1.\n Shi Yesu ne Mai Nasara a bisa Maƙiyi.\nTun ran da aka giciye shi, ya ka da zunubi.\nYa gama aiki duk a can, ya kawo gafara, Sai mu mu ba da gaskiya ga Ubangijinmu.\n\nKORUS\nTa wurin bangaskiya na sami nasara,\nTa wurin Yesu Kristi Ubangijinmu.\n\n2.\n Yanzu mu Masu Bill Yesu mun sami gafara.\nKada mu rasa nasara a bisa Makiyi.\nBa za mu bauta wa Shaidan, mu saurare shi ba.\nZunubi ba zai ka da mu, ya kai mu mutuwa ba.\n\nKorus\n\n3.\n Yesu shi ne mai mulkinmu a cikin duniya,\nMu sa kanmu a hannunsa, mu nemi nufinsa.\nAbin da ya ke so mu yi, mu yi da zuciya daya\nDon kada zvnubi ya zo, ya rinjaye mu dai.\n\nKorus\n",
      title: "286-Shi Yesu Ne Mai Nasara A Bisa Maƙiyi",
      tune: "Faith is the victory/ Encamped along the hills of light"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 287,
      lyric:
          "1.\n Ya ku ƴanuwa, bar bin duniya,\nTa da murya domin Yesu.\nYafa makamai, dukansu sosai,\nShiga Yaƙin Ubangijinmu.\n\nKORUS\nTashi zuwa yaƙin Almasihu,\nTuƃe nauyin kayan duniya,\nGaba dai, ba za mu waiwaya ba,\nUbangiji Shugabanmu ne.\n\n2.\n  Kome jaraba, muna cin gaba,\nLalle za mu ci nasara.\nIkon magauci ba mu raina ba,\nAmma dai ba za mu bi shi ba.\n\nKorus\n\n3.\n Ubangijinmu, ji addu'armu,\nBa bayinka dai ikonka.\nMuna dogara ga Maganarka,\nMu da kanmu ba mu iya ba.\n\nKorus\n\n4.\n In mun gama nan, za mu huta can\nGidan Allahnmu har abada.\nLadan aikinmu yana jiranmu,\nIn mun yi shi da aminci fa.\n\nKorus\n",
      title: "287-Ya Ku Ƴanuwa, Bar Bin Duniya",
      tune: "Sound the battle cry"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 288,
      lyric:
          "1.\n Mu tashi tsaye, dukan ƴan yakin giciye,\nMu ta da tuta bisa domin a gan ta dai.\nA cikin yaƙin gaskiya, Yesu zai bishe mu kuwa\nBa za mu koma ba fa, sai gaba za mu yi.\n\n2.\n Mu tashi tsaye duka, biyayya za mu yi\nGa Yesu, Shugabanmu, a cikin yaƙinsa.\nKu mazaje ku tashi, ku yi da ƙarfin hali,\nKo tsoro ko ragwanci, ba damar wannan fa!\n\n3.\n Mu tashi tsaye duka, a cikin ikonsa.\nA cikin ikon kanmu, ba za mu isa ba.\nMu tafi da bishara, mu yi ta yin addu'a.\nTa wurin bangaskiya za mu ci nasara.\n",
      title: "288-Mu Tashi Tsaye, Dukan Ƴan Yakin Giciye",
      tune: "Stand up for Jesus/ Morning Light"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 289,
      lyric:
          "1.\n Sunan Yesu shi ne mafi ɗaukaka\nCikin dukan sunaye.\nBabu wani suna wanda ya isa\nCetonmu, sai shi kaɗai.\n\nKORUS\nYesu ne Mai Ceto,\nBa wani Allah za mu bi,\nCikin sunansa, nasara,\nBabu shakka, za mu yi.\n\n2.\n Yesu ya ci nasara da zunubi,\nBa da ikon duniya ba,\nSai ta wurin mutuwa da tashinsa\nDaga cikin kabari.\n\nKorus\n\n3.\n Halin Almasihu mu ke so mu yi,\nRuhunsa ya cika mu\nDon mu shaida shi ga dukan mutane,\nCewa ya yi cetonsu.\n\nKorus\n\n4.\n Sai mu ƙanƙantad da kanmu, ƴanuwa,\nKamar yadda shi ya yi.\nMu yi nufinsa da farar zuciya,\nHar matuka za mu bi.\n\nKorus\n",
      title: "289-Sunan Yesu Shi Ne Mafi Ɗaukaka",
      tune: "The banner of the Cross/There's a Royal Banner"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 290,
      lyric:
          "1.\n Ku zo, ku Masu Bi, mu tashi gaba ɗaya.\nGa tsere yana gabanmu, ga tsere yana gabanmu,\nGa birnin Allahnmu, ga birnin Allahnmu.\n\nKORUS\nYanzu muna hanya,\nHanyar da za ta kai Sama.\nMu yi tafiya da Yesu,\nMu zauna can har abada.\n\n2.\n Mu tuƃe zunubi, mu rage kayanmu,\nMu yi tsere da haƙuri, mu yi tsere da haƙuri,\nGa birnin Allahnmu, ga birnin Allahnmu.\n\nKorus\n\n3.\n Ga Yesu Shugaba, Shugaban bangaskiya,\nMu zuba masa ido fa, mu zuba masa ido fa,\nZai kai mu lafiya, zai kai mu lafiya.\n\nKorus\n",
      title: "290-Ku Zo, Ku Masu Bi, Mu Tashi Gaba Ɗaya",
      tune: "We're marching to Zion / Come, we that love the Lord"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 291,
      lyric:
          "1.\n Su magauta dayawa ne a kewaye da mu.\nShaiɗan da dukan runduna sun zo su kā da mu,\nAmma an shirya makamai don wannan yaƙi fa.\nA cikin sunan Yesu ne za mu ci nasara.\n\nKORUS\nYesu mai nasara, Yesu mai nasara,\nDa sunan Yesu ne mu ke yin nasara.\n\n2.\n Kwalkwalin ceto bisa kai, ɗamarar gaskiya,\nDa garkuwa ta bangaskiya, sulken adalci ma,\nShirin bishara takalmanmu ne a ƙafafu,\nGa takobi na Ruhu ma, wato Maganarsa.\n\nKorus\n\n3.\n Mu yi addu'a koyaushe, mu yi aniya fa,\nMu yi roƙo da naciya don dukan tsarkaka,\nMu tsaya dai da ƙarfi fa, mu yi tsayayya ma,\nA cikin ikon Yesu ne za mu ci nasara.\n\nKorus\n",
      title: "291-Su Magauta Dayawa Ne A Kewaye da Mu",
      tune: "Faith is the victory/ Encamped along the hills of light"),
  Hymns(
      author: "M. Dykstra",
      favorite: 0,
      id: 292,
      lyric:
          "1.\n Yaki yana nan gaba da Shaiɗan,\nSai ka ƙarfafa cikin Yesu.\nYafa makamai domin iko dai,\nSai ka tsaya kan Maganarsa.\n\nKORUS\nJi, ƴan yaƙi ! Haɗa kai da Kristi!\nTashi, shirya! Ba da shaidarsa!\nCi gaba dai, raira waƙar yabo!\nYesu Kristi Shugabanmu ne.\n\n2.\n Ga maƙiyanmu, tsoro ba ma ji,\nGaba za mu yi, Ubangiji!\nƊauki takobi, nuna haskenku,\nYaƙin Yesu sai da nasara.\n\nKorus\n\n3.\n Ya kai Allahnmu, ji kukanmu dai,\nTaimake mu da ƙarfinka,\nYaƙi zai ƙare, za mu tatu can,\nKa karƃe mu cikin hutunka.\n\nKorus\n",
      title: "292-Yaƙi Yana Nan Gaba da Shaiɗan",
      tune: "Sound the battle cry"),
  Hymns(
      author: "",
      favorite: 0,
      id: 293,
      lyric:
          "1.\n Shi wanda zai daure da duk wahalai,\nBari a koyaushe ya bi Shugaba.\nBa zai karaya ba, ko sake nufinsa,\nAlkawari ya yi, bin Yesu zai yi.\n\n2.\n Masu son su ƃad da shi da mugun zance,\nSuna cutar kansu, shi gaba zai yi.\nMaƙiyi zai kasa, kome dabararsa,\nZai kama hanyarsa, bin Yesu zai yi.\n\n3.\n Tun da ka kāre mu da Ruhun ƙarfi,\nMun sani mun doshi rai har abada.\nKome zai shuɗe fa, ba zan ji tsoro ba,\nKoyaushe nufina, bin Yesu zan yi.\n",
      title: "293-Shi Wanda Zai Daure da Duk Wahalai",
      tune: "Monks Gate"),
  Hymns(
      author: "",
      favorite: 0,
      id: 294,
      lyric:
          "1.\n  Ga shaidar kawar a tsoro, ita ce giciye.\nHatimtacce da giciyce, bawan Yesu, ka tsaya.\n\n2.\n Shaidar ba za ka razana a yaƙin Almasihu,\nƘarƙashin tutarsa kullum da ƙarfi za ka tsaya.\n\n3.\nShaidar kai kuma za ka bi hanyar da ya bi dā,\nJure kunya da giciye, zama mai nasara.\n\n4.\nA sarari kowa zai ga an hatimce ka dai.\nGoshin da ke da giciye, kambin sarauta ne.\n",
      title: "294-Ga Shaidar Kawar A Tsoro, Ita Ce Giciye",
      tune: "St. Stephen"),
  Hymns(
      author: "F. D. Hein",
      favorite: 0,
      id: 295,
      lyric:
          "1.\n Albarkacin Allah 'na zuwa\nKamar dai a ke yin ruwa\nBisa ga baiwa da bawa,\nBisa kan mutane duk.\n\nKORUS\nAlbarkacin Allah,\nAlbarkacin Allah 'na zuwa\nKamar dai a ke yin ruwa\nBisa kan duniya duk.\n\n2.\n Albarkacin Yesu 'na zuwa,\nYadda kuwa Allah ya ce,\nGa wanda ya ba da gaskiya,\nGa wanda ya yarda da shi.\n\nKorus\n\n3.\n Albarkacin Ruhu Mai Tsarki\nShi kasance tare da mu\nHar zukata duka su cika\nDa iko da ƙaunar Yesu.\n\nKorus\n",
      title: "295-Albarkacin Allah 'Na Zuwa",
      tune: "Showers of blessing"),
  Hymns(
      author: "E. P. Miller",
      favorite: 0,
      id: 296,
      lyric:
          "1.\n Ina son Mai Ceto, Yesu,\nƘaunarsa  ce zancena,\nIna muma domin giciyen,\nCan ya kau da laifina.\n\nKORUS\nIna waƙar Almasihu,\nJininsa ne fansata,\nTashinsa ne shaidar ceto,\nBabu sauran la'ana.\n\n2.\n Ina cikin bautar Shaiɗan,\nYesu ya ji tausayina,\nSai ya zo ya ba da ransa,\nYesu, ba mai kamarka.\n\nKorus\n\n3.\n Ina ɗaukaka sunansa,\nƘarfin mutuwa ya ci,\nHar ya sa in yi tarayya\nCikin nasara da shi.\n\nKorus\n\n4.\n Ko a can a gunsa zaune,\nKo a duniya saukakke,\nKauna ce ta haɗa ranmu,\nNi da Yesu ɗaya ne.\n\nKorus\n",
      title: "296-Ina Son Mai Ceto, Yesu",
      tune: "My Redeemer/I Will Sing of My Redeemer"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 297,
      lyric:
          "1.\n Ya ƙaunar Almasihu,\nBan san iyaka ba,\nDa zurfinta da tsawonta\nSun wuce faɗina.\nA gindin giciyen Almasihu\nNa zauna, hutun rai na yi.\nRijiyar ƙauna cikakkiya da rai,\nKai ka bayar a shayad da ni.\n\n2.\n Ya ƙaunar Almasihu\nWadda ta riƙe ni,\nTa bi ni, ina nesa,\nTa kawo ni wurinka.\nTa amshi dukan zuciyata,\nTa sa na zama bawanka.\nDuniya duk ta kasa jawo ni,\nDomin ikon ƙaunarka.\n\n3.\n Ya ƙaunar Ubangiji,\nYa zuciyar Allahnmu,\nGa zunubi a duniya,\nGa girman ƙaunarka.\nGa ƙofar rai a buɗe yau,\nƘauna ta buɗe ta.\nBa mu yin fahariyar kome,\nSai dai giciyen Almasihu.\n",
      title: "297-Ya Ƙaunar Almasihu,  Ban San Iyaka Ba",
      tune: "Beneath the Cross of Jesus/ St. Christopher"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 298,
      lyric:
          "1.\n Yesu ya sauko nan, Halleluya, Amin,\nDomin mu batattu, Halleluya, Amin.\nShi ne mai ƙaunarmu, abokin faɗaɗɗu,\nSarkin amintattu, Halleluya, Amin.\n\n2.\n Yesu ya nemo mu, Halleluya, Amin,\nYesu ya cece mu, Halleluya, Amin.\nShi ne Shugabanmu, shi ne zai bi da mu\nTsoro kuwa ba ma ji, Halleluya, Amin.\n\n3.\n Yesu ya koma can, Halleluya, Amin,\nYesu Mai Cetonmu, Halleluya, Amin. Masoyinmu ne shi, can Sama za mu yi\nWaƙa mai daɗin ji, Halleluya, Amin\n",
      title: "298-Yesu Ya Sauko Nan, Halleluya",
      tune: "Come, children (Christians), join / Madrid"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 299,
      lyric:
          "1.\n Yesu ne ya yiwo gafara\nDomin masu zunubi.\nYesu ne ya ba mu sabon rai,\nRai fa na har abada.\n\nKORUS\nAkwai murna fa da hutu\nCikin sunan Yesu Mai Ceto\nDomin kullum ya ke nan tare da mu.\nBa zai bar mu ba, ko kaɗan.\n\n2.\n Ga alkawaransa wurinmu,\nZa ya cika dukansu.\nBa zai tashi ko ya bar mu ba\nHar iyakar zamani.\n\nKorus\n\n3.\n Za ya biya duk bukatarmu\nDomin zaman duniya\nBisa ga wadatar Allahnmu\nCikin Sama, gidansa.\n\nKorus\n\n4.\n Kome dai da Za mu yi roƙo\nCikin sunan Ɗan Allah,\nAllah dai zai cika mana shi\nIn mun ba da gaskiya.\n\nKorus\n\n5.\n Sai mu riƙa ba da gaskiya,\nSai mu kau da shakka duk,\nGama Yesu mai aminci ne,\nFaɗarsa ta tabbata\n\nKorus\n",
      title: "299-Yesu Ne Ya Yiwo Gafara",
      tune: "There is sunshine in my soul today/ Sunshine"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 300,
      lyric:
          "1.\n Salama ta Allah kamar kogi ce.\nTana ikon kome cikin yalwarta.\nCikakkiya mai gudu, tana ƙaruwa,\nCikakkiya mai girma kamar zurfafa.\n\nKORUS\nDogara ga Allah, hanyar kwanciyar  rai\nGunsa za a sami hutu cikakke.\n\n2.\n Daga tafin hannun Ubangijinmu,\nBa abokin gaban da zai fizge mu.\nBabu tashin zuciya, babu damuwa,\nBabu kuwa dalilin tunani mai yawa.\n\nKorus\n",
      title: "300-Salama Ta Allah Kamar Kogi Ce",
      tune: "Like a river glorious"),
  Hymns(
      author: "Mrs. W. Magill",
      favorite: 0,
      id: 301,
      lyric:
          "1.\n Alherin Ubangijina abin mamaki ne.\nYesu ya ba da jininsa pansar mai zunubi,\nPansar mai zunubi.\n\n2.\n Tun ranar da na tuba fa, alherinsa 'na nan.\nAlheri kuwa zai kai ni can wurin Ubangiji,\nWurin Ubangiji.\n\n3.\n Ya raina, kar ka manta dai da duk alherinsa.\nAbu duk da ke cikina ya yabi sunansa, Ya yabi sunansa.\n\n4.\n Ubangiji da tausayi da jinkirin fushi ne.\nAlherinsa tun farko ne a kan mai tsoronsa,\nA kan mai tsoronsa.\n\n5.\n Me zan bayar, Ubangiji, domin alherinka?\nZan miƙa jiki hadaya tare da zuciyata,\nTare da zuciyata.\n\n6.\n Ruhun Alheri, zuga ni, tsabtad da gurina.\nIyad da ni don aiki na shelar bishararka,\nShelar bishararka.\n",
      title: "301-Alherin Ubangijina Abin Mamaki Ne",
      tune: "Amazing Grace"),
  Hymns(
      author: "",
      favorite: 0,
      id: 302,
      lyric:
          "1.\n Ƙauna daga Allah ce, wannan na sakankance,\nBatun nan na Yesu ne, Allah ƙauna ne.\n\n2.\n Ƙauna ba ta jin kishi, ba ta rashin hankali,\nTana kuwa da haƙuri, Allah ƙauna ne.\n\n3.\n Tana kuwa da nasiha, ƙauna ba ta kumbura,\nBa ta kuwa jin cakuna, Allah ƙauna ne.\n\n4.\n Ƙauna tana jurewa, ƙauna ba ta nukura,\nHaka cikin abu duka, Allah ƙauna ne.\n\n5.\n Allahna, ƙaunatacce, kyautar ƙauna taka ce,\nBa ta ƙarewa daɗai, Allah ƙauna ne.\n",
      title: "302-Ƙauna daga Allah Ce, Wannan Na Sakankance",
      tune: "Charity/Gracious Spirit"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 303,
      lyric:
          "1.\n Yesu yana ƙaunarmu, wannan na sakankance.\nGaskiyarsa ta tabbata, Allah ne ya shaida shi.\n\nKORUS\nI, yana sonmu, i, yana sonmu,\nI, yana sonmu, Yesu Mai Cetonmu.\n\n2.\n Yesu yana ƙaunarmu, mutuwarsa ta keƃe mu.\nShi ya shafe zunubai, shi ya buɗe ƙofar rai.\n\nKorus\n\n3.\n Yesu yana ƙaunarmu, za mu tafi wurinsa,\nZa mu gan shi jim kaɗan, can a Sama gun Uban.\n\nKorus\n\n4.\n Yesu yana ƙaunarmu, ko mā ƙi mu bi shi nan?\nKome yawan wahala, ba ma fasa ƙaunarsa.\nI, muna sonsa, i, muna sonsa,\nI, muna sonsa, Yesu Mai Cetonmu.\n",
      title: "303-Yesu Yana Ƙaunarmu, Wannan Na Sakankance",
      tune: "Jesus loves me"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 304,
      lyric:
          "1.\n Yesus ya zo daga Sama domin ya cece ni.\nYesu ya mutu domina, Mai Cetona ne shi.\n\nKORUS\nMai Ceto, Mai Ceto, babu Mai Ceto sai Yesu.\nMai Ceto, Mai Ceto, babu Mai Ceto sai shi.\n\n2.\n Ni ma nan gaba zan bi shi, zunubi sai in ƙi.\nYesu kuwa zai taimake ni, abokina ne shi.\n\nKorus\n\n3.\n Kome jaraba ta tashi, ba za ta ei ni ba,\nDon idan na roƙi Yesu, shi za ya fizge ni.\n\nKorus\n4.\n Kome yanzu ya dame ni, Mai Cetona 'na nan,\nShi kuma zai kiyaye ni a cikin duniyan nan.\n\nKorus\n\n",
      title: "304-Yesus Ya Zo Daga Sama Domin Ya Cece Ni",
      tune: "I'll be a sunbeam/ Jesus wants me for a sunbeam"),
  Hymns(
      author: "E. P. Miller",
      favorite: 0,
      id: 305,
      lyric:
          "1.\n Mu ƙanƙanana ne, Yesu ya cece mu.\nMun yi roƙo da sunansa, ya zo ya cece mu.\n\n2.\n Yesu ya zaƃe mu tun ba mu san shi ba,\nAmma yanzu dai mun yi wayo, mu zo mu zaƃe shi.\n\n3.\n Yesu ya neme mu tun ba mu kula ba,\nƘaunarsa ce ta jawo mu, mu zo mu yi godiya.\n\n4.\n Yesu ya kira mu, kowa da sunansa,\nKowa ya ba shi aikinsa, yana bukatarmu.\n\n",
      title: "305-Mu Ƙanƙanana Ne, Yesu Ya Cece Mu",
      tune: ""),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 306,
      lyric:
          "1.\n Sa'ad da uwaye sun kawo ƙanƙanana,\nAlmajirai sun kwaƃe su, sun hana su sosai,\nAmma da dukan tausayi, Yesu ya tsauta mar, ya ce,\n\"Bar ƙanƙanana su zo wurina.\"\n\n2.\n Ya taƃa su yara, su yara ƙanƙanana,\nDa hannu bisa kansu ya sa musu albarka.\nDa daɗin rai ya karƃe su, ya rungume su kuwa, ya ce,\n\"Kada ku hana su zo wurina.\"\n\n3.\n In ji Yesu Kristi, Mai Ceton duniya duka,\nIn ba ku ƙanƙantad da kanku kamar yara ba,\nBa za ku sami ceto ba, ba za ku shiga Sama ba, Sai ku karƃa yadda yara ke yi.\n\n4.\n Ga dubbai kan dubbai na yara ƙanƙanana,\nSu ba su taƃa jin labarin Yesu ba daɗai.\nKu tafi fa ku neme su, ku faɗa musu, dukansu,\n\"Bar ƙanƙanana su zo wurina.\"\n",
      title: "306-Sa'ad da Uwaye Sun Kawo Ƙanƙanana",
      tune: "Mothers of Salem"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 307,
      lyric:
          "1.\n Yara ƙanƙanana, ƙeta sai ku ƙi,\nDaina ƙarya duka, Yesu sai ku bi.\n\n2.\n Iblis mai zunubi, yara ya ke so.\nShi zai ƃata hali, yi tsayayya yau.\n\n3.\n Tsare idanunku duk da kunnuwa,\nTsabtad da hannuwa, kama harshenku.\n\n4.\n Yesu mai alheri yana ƙaunarku,\nYana jin tausayi, yana tsaronku.\n\n5.\n Yesu ne mai ƙarfi, iko nasa ne,\nShi zai taimake ku, ku ƴaƴansa ne.\n",
      title: "307-Yara Ƙanƙanana, Ƙeta Sai Ku Ƙi",
      tune: "No sinful action/ Glenfinlas"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 308,
      lyric:
          "1.\n Sunan wani yaro fa, Daniel ke nan,\nAn haife shi cikin Yahudiya wata ran.\nCikin zamaninsa, Allah ne ya sa\nMutanensa su horu a ƙasar magauta.\n\nKORUS\nTsoron Ubangiji farkon ilmi ne,\nSai mu tsaya kamar yadda Daniel ya yi.\n\n2.\n Cikin aikin sarki dai, ya yi aminci.\nAka gabatad da shi ya zama sananne.\nCikin wannan duka, shaida ya ke yi,\nBa ya neman girman kansa, sai na Allahnsa.\n\nKorus\n\n3.\n Zancen yin addu'arsa, ba ya fasawa,\nKunya ba ya taƃa ji a cikin wannan ba.\nCan fa wata ra na a ke ƙararsa,\nDuk da haka ya yi ta addu'a kamar da.\n\nKorus\n\n4.\n Cikin ramin zakuna aka jefa shi,\nBa su iya buɗe baki ba, balle su ci.\nDaniel ya kwana lafiya ƙalau,\nCan da safe ya ji  muryar sarki, cewa\t“Zo”\n\nKorus\n\n5.\n Ikon Ubangijinmu ba ya kasawa.\nHar yanzu akwai shi isasshe ne dominka\nKada ka yi shakka, ko ka ji tsoro\nWurin Ubangiji dukan kome ya yiwu.\n",
      title: "308-Sunan Wani Yaro Fa, Daniel Ke Nan",
      tune: "Daniel's band/ Standing by a purpose true"),
  Hymns(
      author: "M.E. Kittridge",
      favorite: 0,
      id: 309,
      lyric:
          "1.\n In ka karanta cikin Matta fa,\nZa ka ga. jawabi, sai mu haskaka\nMuddar muna nan a cikin duniya\nCetattu na Yesu, mu haskaka.\n\n2.\n Amma babu dama mu haskaka\nIn da wani laifi cikin zuciya.\nGudu wurin Yesu, roƙi gafara.\nCetattu na Yesu, mu haskaka.\n\n3.\n Mutanen da ke kewaye da mu\nSuna duban hali da auyukanmu,\nKada dai su gani rashin gaskiya.\nCetattu na Yesu, mu haskaka.\n\n4.\n Cikin makaranta mu shaida shi,\nKo a gida kuwa mu hana zunubi.\nCikin jinin Yesu akwai nasara.\nCetattu na Yesu, mu haskaka,\n\n5.\n Cikin ikon Yesu mu bi daidai,\nDukan aikin duhu sai mu ƙi sosai,\nMutane dayawa za su gaskata.\nCetattu na Yesu, mu haskaka.\n\n",
      title: "309-In Ka Karanta Cikin Matta Fa",
      tune: "Jesus bids us shine/ Excell"),
  Hymns(
      author: "",
      favorite: 0,
      id: 310,
      lyric:
          "1.\n Mu ƙanƙananan yara ne,\nBa ƙarfi fa, ba gwaninta.\nMe za mu yi domin Yesu,\nMaɗaukaki, mai girma?\n\n2.\n Mun sani masu tsarki\nSun ba da ransu dominsa.\nMasu aminci, tsarkaka,\nSun jure tsananin wuta.\n\n3.\n Kaddararmu da tasu ɗaya,\nMu kuwa muna yin wa'adi,\nZa mu bi su har mutuwa\nDon Yesu, haka za mu yi.\n\n4.\n Kowace rana Masu Bi\nWajibinmu ne za mu yi,\nMu kashe mugun tunani,\nMu hana aikin zunubi.\n\n5.\n Loton da mu ke yin fushi,\nKo mutane sun zage mu,\nKo waɗansu sun dame mu,\nKo alfarma ta cika mu,\n\n6.\n A loton nan mu tuna fa,\nMu amsa su da haƙuri,\nMaganarmu da ladabi\nDon yaƙin Ubangiji ne.\n\n7.\n Murmushi na salama kuwa\nYa haskaka fuskokinmu.\nMu yi kome domin Yesu,\nMu ƙaunaci jama'armu.\n\n8.\n Kome ƙanƙantar yara fa,\nSun iya ɗaukar giciyensu.\nAikinsu daidai ƙarfinsu,\nSu yi kome domin Yesu\n",
      title: "310-Mu Ƙanƙananan yara ne",
      tune: "Alstone/ O Grant us Light"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 311,
      lyric:
          "1.\n Duniyan nan ba gaskiya, duniya tana wucewa,\nMu, Sama mu ke so.\n\nKORUS\nCan za mu yi murna, murna, murna, murna.\nCan Sama da murna, murna, murna, har abada.\n\n2.\n Nan wahala mu ke sha, nan kuwa babu daɗewa,\nA can ba haka ba.\n\nKorus\n\n3.\n Halin duniyan nan mu ƙi. Mu, bin Yesu mu ke yi\nA duniyan nan yanzu.\n\nKorus\n\n4.\n Yabon Yesu mu ke yi, Ubangijinmu ne shi,\nCan za mu gan shi kuwa.\n\nKorus\n\n5.\n Can fa daɗi za mu ji, yabon Yesu za mu yi,\nYesu Mai Cetonmu.\n\nKorus\n",
      title: "311-Duniyan Nan Ba Gaskiya, Duniya Tana Wucewa",
      tune: "Here we suffer grief/ In Heaven we part no more/Joyful"),
  Hymns(
      author: "",
      favorite: 0,
      id: 312,
      lyric:
          "1.\n An kafa birni dai, ba nan ya ke ba,\nMulki madauwami, ba nan ya ke ba.\nAllah mai gininsa, masu zuwa, tsarkaka,\nBirni na Sama ne, ba nan ya ke ba.\n\n2.\n Mu kama baƙi ne, can sai mu je.\nBin Yesus mu ke yi, can sai mu je.\nSai mu saki duniya nan. Sai mu tashi daga nan,\nTashi zuwa ƙasar can, can sai mu je.\n\n3.\n Ba sauran kuka fa har abada.\nMutuwa ta ƙare can har abada.\nSai murna za mu yi, Almasihu za mu ji.\nBautarsa za mu yi har abada.\n\n4.\n Je zuwa birnin nan, zo, zo mu je.\nKada mu tsaya nan, zo zo mu je.\nYesu ke kiranmu, Yesu yana jiranmu,\nShi jagabanmu ne, zo zo mu je.\n",
      title: "312-An Kafa Birni Dai, Ba Nan Ya Ke Ba",
      tune: "There is a happy land"),
  Hymns(
      author: "E. F. George",
      favorite: 0,
      id: 313,
      lyric:
          "1.\n Babu sauran wahala in Yesu ya zo,\nBabu sauran wahala in Yesu ya zo,\nBabu sauran wahala in Yesu ya. zo,\nZa ya kai mu a gidansa.\n\nKORUS\nZa ya kai mu a gidansa,\nZa ya kai mu a gidansa,\nBabbu sauran wahala in Yesu ya zo,\nZa ya kai mu a gidansa.\n\n2.\n Babu ƃacin zuciya in Yesu ya zo,\nBabu ƃacin zuciya in Yesu ya zo,\nSai dai murna mai yawa in Yesu ya zo,\nZa mu taru a gidansa.\n\nKorus\n\n3.\n Babu sauran kuka in Yesu ya zo,\nBabu sauran kuka in Yesu ya zo,\nSai dai farinciki in Yesu ya zo,\nZa ya kai mu a gidansa.\n\nKorus\n\n4.\n Sai dai daɗin zama in Yesu ya zo,\nSai dai daɗin zama in Yesu ya zo,\nSai dai daɗin zama har abada\nCikin Sama tare da shi.\n\nKorus\n",
      title: "313-Babu Sauran Wahala In Yesu Ya Zo",
      tune: "They'll be no dark valley"),
  Hymns(
      author: "",
      favorite: 0,
      id: 314,
      lyric:
          "1.\n Akwai ƙasa mai haske a can\nShiryayyiya don duk Masu Bi.\nAlmasihu, Mai Ceto 'na nan,\nZa mu gan shi tare da Uban.\n\nKORUS\nCan akwai hutawa,\nDaɗin hutu gun Yesu mai rai.\nZa mu zauna tare\nCikin mulkinsa har abada.\n\n2.\n Can akwai murna har abada,\nWurin Yesu akwai kwanciyar rai.\nZa mu manta da wahalan nan,\nWurin Yesu sai daɗi kaɗai.\n\nKorus\n",
      title: "314-Akwai Ƙasa Mai Haske A Can",
      tune: "The sweet by and by/There's a land"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 315,
      lyric:
          "1.\n Zo, mu yabi ƙaunar Yesu,\nJinƙansa da alherinsa.\nYana shirya mana wuri\nCikin Sama gun Uban.\n\nKORUS\nCan a Sama, wurin Yesu,\nMasu bi za su taru wurinsa\nZa mu rera waƙa,\nMu yabi girman sunansa\n\n2.\n Lokacin da mu ke nan a duniya,\nƳar wahala mu ke sha,\nAmma ran da za mu Sama\nFarin ciki za mu yi.\n\nKorus\n\n3.\n Bi shi nan da dukan zuciya,\nYi aniya cikin aikinsa.\nZa mu manta da wahala\nIn mun shiga mulkinsa.\n\n4.\n Gaba dai, mu Masu Binsa,\nHar mu ga Mai Cetonmu.\nWata rana ƙofar Sama\nZa ta buɗe dominmu.\n\nKorus\n",
      title: "315-Zo, Mu Yabi Ƙaunar Yesu",
      tune: "When we all get to Heaven"),
  Hymns(
      author: "H. E. Smith",
      favorite: 0,
      id: 316,
      lyric:
          "1.\n Duba taron nan mai girma\nWanda ba mai ƙirgawa,\nSuna tsaye gaban Allah,\nSuna yabon sunansa.\nSuna rera sabuwar waƙa,\nSuna ta da murya,\nMulki, iko, girma, yabo,\nNaka ne har abada.\n\n2.\n Su waɗanda suka fito\nDaga cikin tsanani,\nSuka wanke tufafinsu\nCikin jinin Almasihu,\nSuka jure, babu tsoro,\nSuka raina mutuwa,\nSun ci nasara kan Shaiɗan\nCikin ƙarfin Ahmasihu.\n\n3.\n Domin wannan, gaban Allah,\nYafaffu da cetonsa,\nSuna yi masa sujada\nKullum, ba mai fasawa.\nYunwa, ba sa jinta kuma,\nYesu yana kiwonsu,\nShi ya shafe hawayensu\nDaga dukan idanu.\n\n4.\n Almasihu, muna roƙo,\nUbangijin tsarkaka,\nTaimake mu cikin duniya\nMu bi sawun shaidunka.\nHaka za mu ratsa mutuwa,\nZa mu shiga mulkinka,\nInda Masu Binka duka\nSu ke yabon ƙaunarka.\n",
      title: "316-Duba Taron Nan Mai Girma",
      tune:
          "Lord, Thy ransomed Church/Contemplation/ What a Friend / Converse"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 317,
      lyric:
          "1.\n Ga taro can mai girma kuwa, har ba mai ƙirgawa,\nAl'ummai, dangi, harshe duk, kowane iri kuwa,\nSuna tsaye gun Allahnsu, yafe da adalci,\nGa shaida kuwa ta nasara a cikin hannunsu.\n\n2.\n Sun ta da murya kuwa sun ce, ceto ga Allahnmu,\nYabo ya hau ga Allahnmu, duk da Mai Cetonmu.\nMala'iku da dattawa sun haɗa bakinsu,\nSun fāɗi bisa fuskarsu loton sujadarsu.\n\n3.\n Albarka, girma, godiya, ga Allah, suka ce,\nWadata, iko, ceto kuwa, har dukan zamanai.\nYafaffun nan, ka shaida su? Daga ina su ke?\nRigunan nan da suka sa, don me walƙiyarsu?\n\n4.\n Domin maganar shaidarsu, tun suna duniya,\nAn kashe su don suka ƙi su yi musun Yesu.\nI, domin shaida ga su nan, ba shakka, ba tsoro.\nHidimar Allah za su yi dare. da rana kuwa.\n\n5.\n Yunwa ba za su ƙara ji ko ƙishi ba daɗai.\nRana ba za ta buga su a gidan Allah ba.\nƊan Allah ne mai kiwonsu, shi fa zai bi da su.\nHawaye daga idanu, Allah zai share su.\n",
      title: "317-Ga Taro Can Mai Girma Kuwa, Har Ba Mai Ƙirgawa",
      tune: "How bright these glorious/St. Anne/ O God Our Help/ St. Asaph"),
  Hymns(
      author: "E. Doerksen",
      favorite: 0,
      id: 318,
      lyric:
          "1.\n Ku zo, mu tafi can\nGidan Ubanmu, Gidan Ubanmu, Gidan Ubanmu.\nKu zo, mu tafi can, Gidan Ubanmu,\nWurin Yesu Mai Ceto.\n\n2.\n Wahala ba ta can\n\n3.\n Ba wani ciwo can\n\n4.\n Mutuwa ba ta can\n\n5.\n Ai, babu yunwa can\n\n6.\n I, babu kuka can\n\n7.\n Sai murna za mu yi\n\n8.\n Sai daɗi za mu ji\n",
      title: "318-Ku Zo, Mu Tafi Can",
      tune: "Everything's alright/In My Father's House"),
  Hymns(
      author: "W. R. Miller",
      favorite: 0,
      id: 319,
      lyric:
          "1.\n Rayukan duk jama'a a gabanka su ke,\nMutanen dukan zamanu, kowace halitta. Harsunan dukan duniya, yamma da gabas kuwa,\nGare ka su ke rerawa, Maɗaukaki ne kai.\n\n2.\n Ga wanda mu ke ƙauna, Mai Cetonmu ne shi,\nSunansa yana goshinmu, suna mai tsarki.\nShi ne kaɗai da iko, mai kā da mutuwa,\nYesu na Nazarat a dā, Allah har abada.\n\n3.\n Mu ma a wannan duniya, a tsakiyar yaƙinmu,\nMun karƃi iko wurinka, Yesu Shugabanmu.\nMu dai mun ji kiranka, ba za mu fasa ba.\nƳan yaƙi nan, mu huta can, hutu madauwami.\n",
      title: "319-Rayukan Duk Jama'a A Gabanka Su Ke",
      tune: "Ten thousand times ten thousand/ Alford"),
  Hymns(
      author: "H. G. Farrant",
      favorite: 0,
      id: 320,
      lyric:
          "1.\n Sabuwar Urushalima amaryar Yesu ce,\nMai sheƙi kamar rana, ko haske kuwa gani.\nƘofofi na daraja, hanyar zinariya,\nA cikinta ga kogi da itace na rai.\n\n2.\n In kai ga wannan birni wurin da hawaye,\nLa'ana, bakinciki, duka sun shusshude.\nKo mutuwa da kanta an ci nasararta.\nDa Ɗan Rago da Uba ɗaukakar birni ne.\n\n3.\n In yi sujada tare da sauran tsarkaka.\nSa rera, Halleluya, in haɗa muryata. Kullum in yi mamaki yadda zunubaina\nTa wurin jinin Yesu, Allah ya gafarta.\n",
      title: "320-Sabuwar Urushalima Amaryar Yesu Ce",
      tune: "Jerusalem the golden/ Ewing"),
  Hymns(
      author: "H. M. Watkins",
      favorite: 0,
      id: 321,
      lyric:
          "1.\n Ran da aikinmu ya ƙare cikin wannan duniya,\nZa mu hau mu zauna gun Mai Cetonmu,\nZa mu huta daga ƙuncinmu, mu yi ta zamanmu\nWurin Yesu Kristi, Ubangijinmu.\n\nKORUS\nZa ya kira mu a Sama,\nZa mu shiga gaban Allah,\nZa mu wurin Mai Cetonmu,\nZuwa gidan da ya shirya dominmu.\n\n2.\n Can a gida mai darajan nan, a gaban Allahnmu,\nZa mu yi sujada gaban kursiyinsa,\nZa mu haƙa kai da Masu Bi na dukan zamanai,\nZa mu yi ta yabon Yesu, Mai Ceto.\n\nKorus\n\n3.\n Can mā gane duk dalilin ƙuncinmu a duniya,\nZa mu gane yawan ceton da ya yi.\nZa mu yi ta yin godiya domin dukan aikinsa,\nZa mu yabi sunan Yesu, Mai Ceto.\n\nKorus\n",
      title: "321-Ran da Aikinmu Ya Ƙare Cikin Wannan Duniya",
      tune: "When the trumpet of the Lord shall sound/ Roll Call"),
  Hymns(
      author: "",
      favorite: 0,
      id: 322,
      lyric:
          "1.\n Ya tsarkaka na Allahnmu,\nYanzu kun gama yaƙinku.\nKun kwance dukan ɗaurarru,\nKun ba da su ga Allahnku.\nYa tsarkaka na Allahnmu,\nGun Yesu za ku huta yau.\n\n2.\n Ya tsarkaka na Allahnmu,\nKun kai ga burinku yanzu.\nBa yunwa, babu ƙishiruwa,\nBa wuyar hanya, ba gajiya.\nYa tsarkaka na Allahnmu,\nYesu ya shirya gidanku.\n\n3.\n Ya tsarkaka na Allahnmu,\nBarci ya kwashe jikinku,\nA ƙarewa Ɗan Allah kuwa\nZai raya ku da nasara.\nYa tsarkaka na Allahnmu,\nGa hasken Yesu wurinku.\n\n4.\n Ya Allahnmu na tsarkaka,\nMuna roƙo a wurinka.\nAlbarka ga Ubangiji\nDa Ruhunsa Mai Tsarki.\nKa sada mu da tsarkaka,\nKa kai mu wurin zamanka.\n",
      title: "322-Ya Tsarkaka Na Allahnmu",
      tune: "Rest/The Saints of God/Beati"),
  Hymns(
      author: "",
      favorite: 0,
      id: 323,
      lyric:
          "1.\n A mulkinka, Ubangiji,\nZa a tara dangogi,\nHarsuna dabam dabam kuwa,\nSuna yabon Almasihu.\n\n2.\n Kewaye da Ubangiji,\nCerabim da Sarafim\nDuk sun cika haikalinsa,\nSuna rera yabonsa.\n\n3.\n Darajarka, Ubangiji,\nTa ƙawata duniyan nan.\nGirma, yabo, mulki, iko,\nNaka duk, Ubangiji.\n\n4.\n Mala'iku cikin Sama,\nTare da Ekklesiyarka,\nSuna rera waƙar yabo\nZuwa Ɗan Maɗaukaki.\n\n5.\n Ɗaukaka ga Allah Uba,\nMulki kuwa ga Allah Ɗa,\nIko zuwa Allah Ruhu,\nYabo zuwa Triniti.\n",
      title: "323-A Mulkinka, Ubangiji",
      tune: "Laus Deo/ At Your Feet"),
  Hymns(
      author: "",
      favorite: 0,
      id: 324,
      lyric:
          "1.\n Sahihiyar ƙauna dai ta fi kwatanci,\nMun durƙusa a gaban kursiyin,\nDon waɗanda ka haɗa su su sami\nƘauna mafificiya a zuciyarsu.\n\n2.\n Rai mai jamali, kau da shakka duka,\nTabbatar da ƙauna da bangaskiya,\nDa jurewa da bege da natsuwa,\nIrin da ba ya saurin fushi kuwa.\n\n3.\n Ba su wadatacciyar murna taka,\nDa kuma kwanciyar rai da kamewa,\nIyakar kwanakinsu nan a duniya,\nHar ran da za su shiga Sama can.\n",
      title: "324-Sahihiyar Ƙauna Dai Ta Fi Kwatanci",
      tune: "O perfect love"),
  Hymns(
      author: "R.M. Jacobson",
      favorite: 0,
      id: 325,
      lyric:
          "1.\n Ya Allah, mai ƙauna,\nZo, ka kusance mu,\nKa duba amarya da angonta.\nSun zo su yi wa juna alkawari.\nYa Allah, sa albarka,\nKa cika su da murna,\nKa haɗa su da ƙauna mafificiya.\n\n2.\n Alkawarin aure\nAbu ne mai tsarki,\nKada su tsinke shi tun suna da rai\nKo cikin daɗi ko a cikin ƙunci\nKa sa su yi aminci,\nKa riƙe su da ƙarfi,\nKa ɗaura musu aure mai lafiya.\n\n3.\n Ya Yesu, mai ƙauna,\nAngo na Ekklesiya,\nKai ne masoyin dukan tsarkaka.\nZauna tare da mijin da matarsa,\nKa bi da su, ya Yesu,\nKa zama Shugabansu,\nKa mai da su, ya Yesu, masoyanka.\n",
      title: "325-Ya Allah, Mai Ƙauna",
      tune: "O come, all ye faithful /Adeste Fideles"),
  Hymns(
      author: "",
      favorite: 0,
      id: 326,
      lyric:
          "Ya Ubangiji Allahnmu,\nMun miƙa maka yaron nan.\nKa ɗibiya masa hannunka\nKa sa masa albarkarka. Amin.\n",
      title: "326-Ya Ubangiji Allahnmu",
      tune: "All people that on earth do dwell/ Old 100th"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 327,
      lyric:
          "1.\n Mun kawo ƴaƴanmu, Yesu,\nKai wanda ka ke ƙaunarsu.\nKa ɗibiya musu hannunka,\nKa sa musu albarkarka.\n\n2.\n Ka tsare ƴaƴanmu, Yesu,\nKa rungume su, dukansu,\nKewaye su da ƙaunarka,\nKa riƙe su da ikonka.\n\n3.\n Kiyaye ƴaƴanmu, Yesu,\nKa yafe musu laifinsu,\nKa koya musu halinka,\nKa cika su da Ruhunka.\n",
      title: "327-Mun Kawo Ƴaƴanmu, Yesu",
      tune: "All praise to Thee, my God/ Tallis' Canon"),
  Hymns(
      author: "E. P. Miller",
      favorite: 0,
      id: 328,
      lyric:
          "1.\n Tafiyarmu a duniya ta kusa ƙarewa.\nI, kome nisan hanya, lalle ta kai gida.\nKo duhu muka ratsa, gari zai waye can.\nBabu sauran dare kuma gun Immanuel.\n\n2.\n Da jinƙai duk da ilmi, ya shirya hanyata,\nHar ko a cikin duhu na iske haskensa.\nZan yi yabon Mai Sani, zan yi yabon Mai Yi.\nFarko ne shi da ƙarshen, shi Immanuel.\n\n3.\n A zuciyar Almasihu, ƙauna ta yalwata,\nTa fi ta duniva daɗi, kome ne daɗinta.\nCan Sama dai zan gane alamun ƙaunarsa.\nBisa goshina sunansa, Yesu Immanuel.\n\n4.\n Amarya, idanunta a wajen ango ne,\nAi, ba ta duban wani, sai fuskarsa kaɗai.\nNi haka, fuskar Yesu da jiki sokakke,\nƊan Rago ne zan duba, shi Immanuel.\n",
      title: "328-Tafiyarmu A Duniya Ta Kusa Ƙarewa",
      tune: "The sands of time are sinking/ Rutherford"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 329,
      lyric:
          "1.\n Ya Yesu, rijiyar kwanciyar rai,\nSunanka ta'aziyya ne.\nKome wahalar duniya,\nKome kuwa fushin magauta,\nZuciyata ba ta ƃaci ba,\nNa ƃuya cikin sunanka.\n\n2.\n Sunanka gwanin daɗi ne,\nFaranta zuciya ya ke yi\nKo raina duk ya duhunta,\nHar ya fi dare duhu ma,\nDuhuna sai shi warwatse,\nSunanka tashin rana ne.\n\n3.\n Kome na rasa, ga shi nan,\nMaganin kome Yesu ne.\nBan damu da talauci ba,\nBan mai da tsiya kome ba.\nTun da ban rasa Yesu ba,\nRaina ya kwanta lafiya.\n\n4.\n Abin da ya same ni duk,\nRaini ko wulakanci kuwa,\nƘanƙanci, kunya, damuwa,\nZalunci, ɗauri, kisa ma,\nBa zan ji tsananinsu ba,\nYesu zai tsare zuciyata.\n\n5.\n Gafarar dukan laifina,\nIkon rinjayar halina,\nSakankancewar ƙaunarka,\nSalama ba ta duniya ba,\nAn kintsa dukan cetona,\nYa Yesu, cikin sunanka.\n",
      title: "329-Ya Yesu, Rijiyar Kwanciyar Rai",
      tune: "Thou hidden source of calm repose/Stella"),
  Hymns(
      author: "D. Forbes",
      favorite: 0,
      id: 330,
      lyric:
          "1.\n Ku ta da zuciyarku, kada ta ƃaci kuwa,\nƳanuwan ba su mutu ba, su barci su ke yi.\nAn shirya zamansu a gidan Sama can, Allahnmu ne ya kira su su fita duniyan nan.\n\n2.\n Ba sauran zunubi, jaraba ba ta can,\nWahala duk da ƃacin rai ba za su shiga ba.\nSu, Yesu su ke bi da muryar nasara,\nSunansa yana goshinsu, sun duba fuskarsa.\n\n3.\n Mun ajiye jikinsu can cikin kabari\nHar ran da za a ta da su marasa ruƃewa.\nShi Yesu Fansarmu, shi ne mai ba da rai,\nA cikin rashin ruƃa dai, shi za ya ta da su.\n\n4.\n Mun gode, Allahnmu, domin bangaskiyarsu,\nDon shaidarsu a wurinmu, kwatancin halinka.\nYa Ubangijinmu, ka ƙarfafa mu yau\nDomin mu bi sawunsu har mu gama aikinmu.\n",
      title: "330-Ku Ta da Zuciyarku, Kada Ta Ɓaci Kuwa",
      tune: "Forever with the Lord"),
  Hymns(
      author: "",
      favorite: 0,
      id: 331,
      lyric:
          "1.\n Ka haƙura, ya raina, haƙura.\nUbangiji kuwa yana wajenka,\nKa haƙura, kome dai ya same ka,\nAzaba, sakewa, ko damuwa.\nGa Allahnka zai shirya mafakatka,\nA ƙarƙashin fukafukansa kuwa.\n\n2.\n Ka haƙura, ya rai na, haƙura.\nSa'ad da taimako ya katse ma,\nLoton da abokai suka yashe ka,\nBabu dalili na yin fargaba.\nKa dogara ga Allahnka kaɗai,\nZai ƙarfafa zuciyarka sosai.\n\n3.\n Ka haƙura, ya raina, haƙura.\nMasifa, mutuwa, ba ƙarshenmu ba.\nKa tuna, ƴanuwanka duka fa,\nA hannun Yesu mai nasara ne.\nDa mu da su ma fita duhun nan,\nMa shiga hasken Allahnmu a can.\n\n4.\n Ka haƙura, ya raina, haƙura.\nHaƙuri maganin duniya ne.\nTalauci ne ko rashin lafiya,\nKo damuwa ko kuwa hargitsi ne,\nA cikin Ruhun Allah ga murna,\nA cikin ƙaunar Yesu, ta'aziyya.\n",
      title: "331-Ka Haƙura, Ya Raina, Haƙura",
      tune: "Be still, my soul/Finlandia"),
  Hymns(
      author: "C.F. Beitzel",
      favorite: 0,
      id: 332,
      lyric:
          "1.\n Akwai gidan zamana cikin birnin Allah.\nBa zai rushe ba daɗai, babu dare ma can.\n\nKORUS\nZa ya shafe hawaye, babu sauran mutuwa,\nBa lissafin shekaru, babu dare ma can.\n\n2.\n Ƙofofi Iu'u-Iu'ai ne a birnin Allah\nHanya duk zinariya, babu dare ma can.\n\nKorus\n\n3.\n Itace mai ƴa ƴa kuwa yana birnin Allah.\nZa mu duba kogin rai, babu dare ma can.\n\nKorus\n\n4.\n Ba bukatar rana can cikin birnin Allah.\nYesu shi ne Haskenmu, babu dare ma can.\n\nKorus\n\n",
      title: "332-Akwai Gidan Zamana Cikin Birnin Allah",
      tune: "No night there/ In the Land of Fadeless Day"),
  Hymns(
      author: "J. L. Maxwell",
      favorite: 0,
      id: 333,
      lyric:
          "1.\n Ubangijinmu ya raka ka,\nIkon Allah ya ƃoye ka,\nHannunsa ya taimake ka,\nHar ya sake tara mu da kai.\n\nKORUS\nHar ya tara mu, ko a duniyan nan,\nKo a cikin Sama ne,\nHar ya tara mu, har ya tara mu,\nUbangijinmu ya raka ka.\n\n2.\n Ubangijinmu ya raka ka.\nKo jaraba ta dame ka,\nUbangiji ya cece ka,\nHar ya sake tara mu da kai.\n\nKorus\n\n3.\n Ubangijinmu ya raka ka.\nKo wahala ta same ka,\nUbangiji ya fisshe ka,\nHar ya sake tara mu da kai.\n\nKorus\n\n4.\n Ubangijinmu ya raka ka.\nIkonsa ya agaje ka,\nƘaunarsa ta kewaye ka,\nHar ya sake tara mu da kai.\n\nKorus\n",
      title: "333-Ubangijinmu Ya Raka Ka",
      tune: "God be with you, till we meet again"),
  Hymns(
      author: "A. M. Locke",
      favorite: 0,
      id: 334,
      lyric:
          "1.\n Ya Allah, muka shuka iri a gonarmu,\nAmma, ya Ubangiji, ka ba da amfani.\nGa hatsi, ga dankali, wake da shinkafa.\nSu muka yi ta noma, sun kuma nuna yau.\nKai Mahaliccinmu, ka ba mu kyautarsu,\nMu yi godiya, mu yi godiya, domin amfaninsu.\n\n2.\n A gona mu ke aiki, amma, ya Allahnmu,\nIn ba ka sa albarka ba, ina amfaninsu?\nKa ba da hasken rana, da ruwa mai yawa,\nKai ne ka shirya ƙasa da daɗin iska kuwa.\nKai Mahaliccinmu, ka ba mu kyautarsu,\nMu yi godiya, mu yi godiya domin amfaninsu.\n\n3.\n Amma, ya Ubangiji, dubi zukatanmu,\nYanzu ta wurin Ruhunka, maishe su gonarmu.\nMaganarka ce iri, ka ba mu ikonka\nDomin ta daɗa girma, ta shaida zamanka.\nYa Mahaliccinmu, ka sa albarkarka,\nHar raina duk ya lura da irin Maganarka.\n\n4.\n Ni, zan tafi wurinka sa'ad da na rasu,\nZan kai amfanin gona, gona ta zuciyata.\nGa ƴaƴan raina kuma, ƴaƴan Maganarka,\nGare ka duk zan kawo do min albarkarka.\nYa Mahaliccinmu, ka sa albarkarka,\nHar raina duk ya lura da irin Maganarka.\n\n",
      title: "334-Ya Allah, Muka Shuka Iri A Gonarmu",
      tune: "We plough the fields"),
  Hymns(
      author: "J. S. Hall",
      favorite: 0,
      id: 335,
      lyric:
          "1.\n Damuna ta faɗi, ana ta yin ruwa\nDaidai shukar iri, ƙasa ta yi kyau.\nSai mu yi wa Yesu shukarsa a gona,\nKada shi ya ga mai fasa aiki yau.\n\nKORUS\nFarar zuciya, farar zuciya,\nLalle za mu samu in kaka ta yi,\nManyan dammuna, manyan dammuna,\nLalle za mu samu in kaka ta yi.\n\n2.\n Ko da rashin ruwa, ko da wani abu\nWanda ya yiwu ya ƃata mana rai,\nSai mu dinga noma, muna roƙon Allah,\nKwana tashi, sai hatsi ya fid da kai\n\nKorus\n\n3.\n \"Sai ku yi addu'a,\" in ji Almasihu,\n\"Sai ku roƙi wanda girbi nasa ne,\nMasu iya aikin girbi dai ya aiko\nZuwa gonar hatsi, domin ya nuna!\"\n\nKorus\n",
      title: "335-Damuna Ta Faɗi, Ana Ta Yin Ruwa",
      tune: "Bringing in the Sheaves/Sowing in the Morning"),
  Hymns(
      author: "",
      favorite: 0,
      id: 336,
      lyric:
          "1.\n Zo, mu yabi Allahnmu\nDon amfanin gonarmu.\n\nKORUS\nGirma, jinƙai, ɗaukaka,\nNasa ne har abada.\n\n2.\n Shi ya shirya ƙasa kuwa,\nMun sami amfaninta.\n\nKorus\n\n3.\n Rana kuwa ya halitta\nDon mu sami zafinta,\n\nKorus\n\n4.\n Ya aiko da ruwa ma,\nHar yabanya la yi ƙyau.\n\nKorus\n\n5.\n Don jamalin duniya,\nƘwaya da mabunƙusa.\n\nKorus\n\n6.\n Da godiya mu ke kawo yau\nAmfanin gonakinmu.\n\nWurinka, Maɗaukaki,\nUbanmu, Mahalicci.\n",
      title: "336-Zo, Mu Yabi Allahnmu",
      tune: "Let us with a gladsome mind/ Monkland"),
  Hymns(
      author: "",
      favorite: 0,
      id: 337,
      lyric:
          "1.\n Mutanen dā sun kawo amfanin gonarsu,\nSun sa shi cikin haikali, shaidar godiyarsu.\n\n2.\n Yau fa, ga namu kuwa, mun kawo a gidanka,\nDomin ka sa aIbarkarka, mu yabi sunanka.\n\n3.\n Mun miƙa sadaka domin ka karƃe ta,\nKa taƃa ta da hannunka ta zama cikakkiya.\n\n4.\n Miƙa zukatanku !   Mu mutanensa ne,\nGama rayukanmu a yau sun zama nasa ne.\n\n5.\n Uba Mahalicci, aike mu girbinka,\nMu jawo mutane wurinka, su ba da gaskiya.\n",
      title: "337-Mutanen Dā Sun Kawo Amfanin Gonarsu",
      tune: "Holyrood"),
  Hymns(
      author: "",
      favorite: 0,
      id: 338,
      lyric:
          "1.\n Mu bubbuɗe zukatanmu\nGa Ubangiji Allah,\nMu miƙa mar hadayarmu,\nMu yi masa sujada\nDomin yalwar wadatarsa\nDa duk amfanin gona.\nMun gode wa Ubangiji\nDomin kyautansa duka.\n\n2.\n Mun girbe dukan gonaki,\nGa dawa cikin rumbu.\nMun tara dukan amfani\nNa aikin hannuwanmu.\nWannan ne fa abincinmu\nNa rai a wannan duniya.\nKullum fa ka ciyad da mu\nDa abinci na ruhu.\n\n3.\n Mun yi wahalar damuna,\nMun sha gajiya ainun,\nAmma a ƙarshen yini fa\nKa ba mu damar hutu.\nKa sa mu zama zaƃaƃƃu\nNa ƴaƴan fari naka,\nMu cika aikinka a nan,\nMu shiga hutu naka.\n\n4.\n Ƙasar can mai albarka ce,\nƘasa ta mulkin Allah.\nCan dai akwai itacen rai,\nDa kuma kogin Allah.\nDuk tsarkaka sun taru can,\nMu kuma za mu bi su,\nMu yi ta yabon Allah can,\nDon ya albarkace mu.\n",
      title: "338-Mu Bubbuɗe Zukatanmu",
      tune: "Golden sheaves"),
  Hymns(
      author: "",
      favorite: 0,
      id: 339,
      lyric:
          "1.\n Uba na Sama, Allahnmu, ka dubi ƙasarmu,\nKa koya mana, ƴaƴanka, mu taya danginmu.\n\n2.\n Ka sa mu bi tafarkinka, mu jawo kabilan nan,\nSu riƙa ba da gaskiya, su karƃi mulkinka.\n\n3.\n Ya Allah, ba mu ikonka, mu tsare gaskiya,\nMu kafa. shari'a daidai, mu hana rikici.\n\n4.\n Ka koya mana dokoki, mu cika wa'adi,\nMu zauna lafiya da duk jama'a ta ƙasarmu.\n\n5.\n Nan gaba za mu yabonka domin ka cece mu.\nKullum mu cika nufinka, mu yi ta aikinka.\n",
      title: "339-Uba Na Sama, Allahnmu, Ka Dubi Ƙasarmu",
      tune: "lrish/Dublin"),
  Hymns(
      author: "",
      favorite: 0,
      id: 340,
      lyric:
          "1.\n Ya Ubangiji, Allahnmu, ka sa albarkarka\nYanzu a bisa shugabanni da dukan iyalansu.\n\n2.\n Ka ƙara musu aminci, alheri da soyayya.\nSalama duk da lafiya su daɗu a mulkinsu.\n\n3.\n Ka ba su ruhun hikima da ruhun ganewa.\nKa kafa dukan maganarsu bisa ga shari'arka.\n\n4.\n Domin a cikin mulkinsu, kome da za su yi\nShi daidaita da nufinka, nufi mai tsarki.\n\n5.\n Hakanan mu jama'arsu, mu riƙa yin godiya\nGare ka kullum, har da su, a cikin duniya duk.\n\n6.\n Ya Allah Uba, Allah Ɗa, Allah Ruhu kuma,\nMu ba ka dukan daraja, ya Allah Triniti.\n",
      title: "340-Ya Ubangiji, Allahnmu, Ka Sa Albarkarka",
      tune: "Sawley"),
  Hymns(
      author: "",
      favorite: 0,
      id: 341,
      lyric:
          "1.\n Ya Ubangijinmu, dube mu duk yanzu\nA gabanka.\nSarkin sarakuna, mai iko duka kuwa,\nKarƃi sujadarmu, Ubangiji.\n\n2.\n Roƙonka mu ke yi don masu mulkinmu,\nKa cece su.\nTsawanta ransu kuwa, su ma a zuciyarsu\nSu nemi fuskarka, Ubangiji.\n\n3.\n Daidaita hanyarsu cikin sarauta fa,\nKa riƙe su.\nBa su albarkarka, girma da lafiya,\nIko da nasara, Ubangiji.\n\n4.\n Tuna da ƙasarmu, ka san bukatarmu\nA duniyan nan.\nKai ne Mai Cetonmu, kai ne shugabanmu,\nBishe mu duk yanzu, Ubangiji.\n\n",
      title: "341-Ya Ubangijinmu, Dube Mu Duk Yanzu",
      tune: "God, save the Queen/British National Anthem"),
  Hymns(
      author: "",
      favorite: 0,
      id: 342,
      lyric:
          "1.\n Muna roƙon Ubangiji Allah\nDomin salamar Yahudawa yau.\n\n2.\n Al'umma ce wadda ka zaƃa fa\nDomin su zama mutanenka dai.\n\n3.\n Amma sun ƙi su karƃe ka a dā.\nSun juya maka baya, sun ƙi ka.\n\n4.\n Ka hore su, ka warwatsad da su\nA fuskar duniya duka ko'ina.\n\n5.\n Yanzu kuma ga lokaci ya yi\nDa za su koma Urushalima.\n\n6.\n Yanzu ga su a cikin zafin rai\nHar lalle ba su san abin yi ba.\n\n7.\n Mun sani fa kai kana ƙaunarsu,\nKa taimake su, mutanenka yau.\n",
      title: "342-Muna Roƙon Ubangiji Allah",
      tune: "Peace, perfect peace/ Pax Tecum"),
  Hymns(
      author: "Benedict E. Odiase and others",
      favorite: 0,
      id: 343,
      lyric:
          "1.\n Arise, o compatriots! Nigeria's call obey\nTo serve our fatherland\nWith love and strength and faith!\nThe labour of our heroes past\nShall never be in vain\nTo serve with heart and might\nOne nation bound in freedom, peace, and unity.\n\n2.\n O, God of creation, direct our noble cause!\nGuide our leaders aright.\nHelp our youth the truth to know,\nIn love and honesty to grow,\nAnd, living just and true,\nGreat lofty heights attain\nTo build a nation where peace and justice shall reign.\n",
      title: "343-Arise, O Compatriots! Nigeria's Call Obey",
      tune: "Nigerian National Anthem"),
  Hymns(
      author: "",
      favorite: 0,
      id: 344,
      lyric:
          "1.\n Sai ku tashi, duk ƴan'uwa, ji kiran Nijeriya!\nDa aminci, ƙwazo, ƙauna, yi wa tasar hidima,\nƘoƙarin jarumai na dā ba banza ya ke ba!\nDa dukan ƙarfinku,\nTsare salama da ƴanci, da ɗayantuwarku !\n\n2.\n Ya Mahaliccin duniya, ka bi da manyanmu\nHar su ciccika nufinka. Taimaki duk ƴaƴanmu\nSu girma cikin gaskiya, ƙauna, da adalci.\nKa mai da Nijeriya\nWurin da kowa zai zauna da kwanciyar hankali!\n",
      title: "344-Sai Ku Tashi, Duk Ƴan'uwa",
      tune: "Nigerian National Anthem"),
  Hymns(
      author: "Maurice Albert Thiriet",
      favorite: 0,
      id: 345,
      lyric:
          "Auprès du grand Niger puissant\nQui rend la nature plus belle,\nSoyons fiers et reconnaissants\nDe notre liberté nouvelle!\nÉvitons les vaines querelles\nAfin d'épargner notre sang,\nEt que les glorieux accents\nDe notre race sans tutelle !\nS'élèvent dans un même élan\nJusqu'à ce ciel éblouissant,\nOù veille son âme éternelle\nQui fera le pays plus grand !\n\nDebout ! Niger ! Debout !\nQue notre œuvre féconde\nRajeunisse le cœur de ce vieux continent !\nEt que ce chant s'entende\nAux quatre coins du monde\nComme le cri d'un peuple équitable et vaillant.\n\nDebout ! Niger ! Debout !\nSur le sol et sur l'onde,\nAu son des tam-tams\nDans leur rythme grandissant,\nRestons unis toujours,\nEt que chacun réponde\nÀ ce noble avenir\nQui nous dit : - En avant.\n",
      title: "345-L'Hymne Nationale du Niger",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 346,
      lyric:
          "1.\n A cikin farko Allah ya\nHalitta sama da ƙasa.\nTa wurin ikon maganarsa\nDuniya da kome sun zama.\n\nKORUS\nMai iko, Mai iko\nAllah ne Mai ikon kome,\nMai iko, Mai iko\nAllah ne, Mai ikon dukan kome.\n\n2.\n Ҡasa fa duka wofi ce\nDuhu ya rufe ruwaye.\nRana ta fari Allah ya ce\nBari haske shi kasance.\n\nKorus\n\n3.\n Rana ta biyu Allah ya ce\nBari sarari ya kasance,\nKuma ya raba ruwaye\nHaka ya zama gaba dai.\n\nKorus\n\n4.\n Rana ta uku tekuna\nSun tattaru wari ɗaya.\nCiyawa da itatuwa\nKowane masu bada ƙwaya.\n\nKorus\n\n5.\n Rana ta huɗu an gani\nCan cikin sama haskoki\nBisa duniya su yi mulki\nRana da wata da tamrari.\n\nKorus\n\n6.\n Rana ta biyar Allah ya ce\nKifi su cika ruwaye,\nTsuntsayen sama su yalwaita,\nSu haifu har duniya ta cika.\n\nKorus\n\n7.\n Rana ta shidda bisashe\nYa yi su, masu-rarrafe\nMutum da mananinsa ne\nHaka ya gam aikin ne.\n\nKorus\n\n8.\n Rana ta bakwai Allah fa\nYa huta daga aikinsa\nHaka mu kuma ƴayansa\nMu huta rana guda kuwa.\n\nKorus\n\n\n\n\n",
      title: "346-A Cikin Farko Allah Ya Halitta Sama da Ƙasa",
      tune: "Bring Them In /Hark ‘tis the Shepherd’s Voice I Hear"),
  Hymns(
      author: "",
      favorite: 0,
      id: 347,
      lyric:
          "1.\n A cikin farko Allahnmu\nYa hallici dukan abu\nCikin sama da akan duniya\nDukan abin da kyau.\n\n2.\n Ya hallici su mutane\nSu Adamu, da Hawa’u\nYa sa su cikin gona ta Aidin\nSu aikace ta kuwa.\n\n3.\n Ya dokace su Adamu\nSu Hawa’u kada su ci\nDaga icce na tsakar gona\nKo mutuwa za su yi.\n\n4.\n Shaiɗan ya shiga gonar nan\nYa jarabci Hawa’u dai\nYa sa ta shakkar maganar Allah\nTa bi maganarsa.\n\n5.\n Ta ɗiba ɗiyan iccen nan.\nAshe, ta ci, ta ba miji\nSun ɓoye daga murya ta Allah\nSabo da tsoronsa.\n\n6.\n Allah ya yi masu horo\nGa maciji, la’ananne ne shi\nMace ta haifa da baƙinciki\nWahala tata ce.\n\n7.\n Da zufa bisa fuskarka\nYa Adamu, ka ci abincinka\nҠasa ta haifi ƙayayuwa kuma\nZan kore ku da nan.\n\n8.\n Allah ya kashe ɗan rago\nDa fatarsa ya rufe wofinsu\nYa faɗa masu akwai Mai Zuwa\nMai Ɗauken laifofi.\n\n9.\n Mun gaji halin Adamu\nDuk mutane na duniya\nAmma ya aiko Yesu Mai Ceto\nKama da ɗan rago.\n\n10.\n An kashe Yesu Ɗan Allah\nDa jininsa ya kwashe laifina\nYanzu na zama ta Allah kuma\nTa wurin bangaskiya.\n\n11.\n Na gode maka ya Allah\nDon ƙamnarka, don gafara\nKa taimake ni, in bi ka kullum.\nDa zuciya ɗaya fa, Allahna.\n\n\n\n",
      title: "347-A Cikin Farko Allahnmu",
      tune: "First Love/King’s Langley/Lonesome Valley"),
  Hymns(
      author: "",
      favorite: 0,
      id: 348,
      lyric:
          "1.\n A cikin Filibbiyawa\nSura ta uku kuwa,\nMu duba aya ta goma\nMu yi ta koyasuwa\n\nKORUS\nDon in sa Shi, Yesu Kristi,\nDa ikon tashinsa\nDa tarayyar raɗaɗinsa,\nA cikin rain yau.\n\n2.\n Ga ni, ana kamantad da ni,\nBisa ga mutuwarsa\nDomin da ikonsa in kai\nGa tashin matattu.\n\nKorus\n\n3.\n Ban ce na rigaya na samu,\nKo kuwa na cika ba,\nAmma in nace binsa\nDon in sami rawani.\n\nKorus\n\n4.\n Ƴanuwa, ni ban maida kaina\nNa zama cikakke,\nAbubuwa na da na manta da su\nDon in yi ta kutsawa.\n\nKorus\n\n5.\n Ina nan, ina nace binsa,\nHar zuwa mutuwa\nIn kai ga ladan nasara,\nTa kiran Allahna.\n\n",
      title: "348-A Cikin Filibbiyawa",
      tune: "Come Every Soul by Sin Oppressed/Stockton"),
  Hymns(
      author: "",
      favorite: 0,
      id: 349,
      lyric:
          "1.\n A cikin mugunta an yi cikina\nA ciki kuwa uwata ta haife ni.\nҠamnar Yesu ta zo ta neme ni\nHar ta bayyana mani dukan laifina.\n\nKORUS\nMusulmi da arna duk\nKu tuba tun yanzu\nGama ba daman tuba ranar shari’a.\n\n2.\n Gama Yesu shi ba ya zaɓe ba\nBaƙi, fari, ko kuwa rawaya ne\nYa mai da mu duka abokansa\nGama shi ba ya mai da kansa ya fi kowa.\n\nKorus\n\n3.\n Ekklisiya , mu ɗauki bishara,\nMu shiga cikin dukan ƙauyekan\nGa yamma suna ta mutuwa\nBari mu bar gida mu je, mu bishe su.\n\nKorus\n\n4.\n Ҡamnar Yesu ba za ta ƙare ba\nHar wa yau ma tana a duniyan nan.\nDomin ta ba mu Ruhu Mai Tsarki\nHar shi taimake mu a cikin aikinsa.\n\nKorus\n\n5.\n Ku masu bi, mu yabi Mai Ceto\nMu shaida sunansa ga mutane\nMu yi ta ce, “Ga hanya zuwa rai\nGama ba wata hanyar ceto sai Yesu”.\n\nKorus\n\n\n",
      title: "349-A Cikin Mugunta An Yi Cikina",
      tune: "Old Black Joe/Gone From My Heart"),
  Hymns(
      author: "",
      favorite: 0,
      id: 350,
      lyric:
          "A yaye ƴan'uwa sai mu nuna ƙauna (2x)\nMu rungume juna, mu nuna ƙauna\n\nMu sha hannu da juna,\nMun nuna ƙauna a yiye....eh\n",
      title: "350-A Yaye Ƴan'uwa",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 351,
      lyric:
          "Abu ɗaya ne na sani\nNi makaho ne dā\nYau yanzu ma ina gani\nAlheri ya sa.\n\n",
      title: "351-Abu Ɗaya Ne Na Sani",
      tune: "Revive Us Again (chorus)"),
  Hymns(
      author: "",
      favorite: 0,
      id: 352,
      lyric:
          "1.\n Yesun mu kafin ya tafi sama\nYa yi mana umurni cewa\nKu yi addu’a ba fasawa\nDomin mu sami nufinsa\n\nKORUS\nKu yi addu’a ba fasawa\nDomin kada ku faɗa jaraba\nRuhu ya yarda jiki rarauna\nKu yi magana da Allah.\n\n2.\n Akwai wahala cikin duniya\nWadda babu misalinta\nKu yi addu’a babu fasawa\nDomin nassara da duniya.\n\nKorus\n\n3.\nAkwai jaraba cikin duniya\nWadda babu misalinta\nKu yi addu’a babu fasawa\nKada ku faɗa jaraba.\n\nKorus\n\n4.\nYa Yesu Almasihu\nLokacin da nike addu’a\nKa ji ka amsa addu’ata\nDomin in aika nufinka.\n\nKorus\n",
      title: "352-Addu’a Babu Fasawa",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 353,
      lyric:
          "KORUS\nAike da abincinka, a bisa ruwaye,\nGama za ka same shi, bayan ƴan kwanaki.\n(2x)\n\n1.\n Ga wasu bayi uku, aka yi kiransu,\nUbangijinsu ya damƙa, masu dukiyarsa.\nGa wani talent biyar, ga wani talent biyu,\nGa wani talent ɗaya, gwalgwadon kowa.\n\n(Solo: “Ɗan’uwa.”)\n\nKorus\n\n2.\n Bawa mai talent biyar, da mai talent biyu,\nSuka fidda tsoro, suka yi bangaskiya.\nSuka jujjuya kuɗin, suka sami riɓa,\nUbangijinsu ya sa, masu albarka.\n\n(Solo: “Ƴar’uwa”)\n\nKorus\n\n3.\n Bawa mai talent ɗaya, shi kuwa ya ji tsoro,\nYa yi haƙi a ƙasa, ya ɓoye talent nan.\nUbangijinsa ya ce, kai mugun bawa,\nKu jefa cikin, baƙin duhu.\n\n(Solo: “Duka”)\n\nKorus\n4.\n Ƴan’uwa mu yi koyi, da mai talent biyar,\nMu fidda tsoro, mu yi bangaskiya.\nMu aike da abincinmu, a bisa ruwaye,\nGama za mu same shi, bayan kwanaki.\n\nKorus\n\n\n",
      title: "353-Aike da Abincinka",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 354,
      lyric:
          "Akwai iko cikin jininsa\nJininsa Mai Tsarki\nAkwai iko cikin jininsa\nJininsa mai tamani.\n\n\n",
      title: "354-Akwai Iko Cikin Jininsa",
      tune: "There is Power in the Blood (chorus)"),
  Hymns(
      author: "",
      favorite: 0,
      id: 355,
      lyric:
          "1.\n Akwai aiki domin mataye,\nWurin mutane kusa da mu\nSai mu yi da aminci sosai\nKada dowa ya rasa ceto.\n\nKORUS\nAminci.....aminci,\nCikin aikinmu domin Uba,\nAminci.....aminci,\nHar mu kai gidan Allah a can.\n\n2.\n Akwai kira domin mataye\nDaga ƴanuwarnmu da nisa,\nSai mu aiki da taimakonmu\nDa aminci da addu’a kuwa.\n\nKorus\n\n3.\n Akwai iko domin mataye,\nCikin Yesu Ubangijinmu\nIn mu kawasda zunubi duk\nZa ya kira mu amintattu !\n\nKorus\n\n\n",
      title: "355-Akwai Aiki Domin Mataye",
      tune: "The sweet by and by/There’s a land"),
  Hymns(
      author: "",
      favorite: 0,
      id: 356,
      lyric:
          "1.\n Aikin kowa shi zai kada shi (2x)\nHymns(Uba ba zai dau laifin da ba,\nDa ba zai dau laifin uba ba, ) \t(2x)\nAikin kwa shi zai kada shi\n(Magajina, Kanena, Ɗan uwana)\nAikin kowa shi zai kadashi \t(2x)\n\n2.\n Wanda ya yi zunubi shi za ya mutu (2x)\nHymns(Uba ba zai dau laifin da ba\nDa ba zai dau Iaifin uba ba ) \t(2x)\nAikin kowa shi zai kada shi\n( Hausawa, Zabarmawa, Fulani, Beriberi )\nAikin kwa shi zai kada shi \t(2x)\n\n3.\n Da mudun da kake sunawa\nDa shi Yesu za ya auna ma ) \t(2x)\nAikin kowa shi zai kada shi\n( Turawa, Bugaje, Larabawa )\nAikin kowa shi zai kada shi \t(2x)\n\n4.\n In hairin kake aikatawa ,\nHairin shi zai zama ladanka ) (2x)\nIn shairin kake aikatawa ,\nShairin shi zai zama ladanka\nAikin kowa shi zai kada shi \t(2x)\n\n",
      title: "356-Aikin Kowa Shi Zai Kada Shi",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 357,
      lyric:
          "1.\n Akwai littafi a sama\nWanda Allah ya yi\nInda an sa sunayen duk masu bi.\nIn babu sunanka\nA littafin nan\nBa za a karɓe ka wurin Mai Tsarki can.\n\nKORUS\nAn sa sunana can\nCikin Littafin Rai\nTun da na karɓi Yesu\nAn sa sunana can.\n\n2.\n Da na zamna a duhu\nBan san haryarsa ba\nSai an ba ni labarin Yesu Mai Cetona\nSai na tuba, na bi shi\nNa bar duk laifina\nShi kuwa ya sa sunana a Littafinsa can.\n\n",
      title: "357-Akwai Littafi A Sama",
      tune: "Is My Name Written There"),
  Hymns(
      author: "",
      favorite: 0,
      id: 358,
      lyric:
          "Akwai littafi guda ne\nKe shaida kamnar Allah\nAkwai hanya guda kaɗai\nGa Ubangijinmu.\n[ Littafi Mai Tsarki,\nShi ne maganar Allah.\nYesus shi kaɗai ne\nHanya ga sama. ] 2x\n\n",
      title: "358-Akwai Littafi Guda Ne",
      tune: "The Old Time Power"),
  Hymns(
      author: "Thomas da Aichatou Johnson",
      favorite: 0,
      id: 359,
      lyric:
          "KORUS\nAkwai mai cikin Giliyad\nZai gyara ciwonmu\nAkwai mai cikin Giliyad\nZai warke dukanmu\n\nBa ni ba da lafiya\nSaboda zunubi\nAmma Ruhun Mai Tsarki\nYa ƙarfaffe mini\n\nKorus\n\nIna sha wuya sosai\nSaboda laifofi\nAmma Yesu Mai Ceto\nYa sabunta mini\n\nKorus\n\nNa yi cikin ƃattace\nBabbu da aboki\nNa roƙe Ubangiji\nYa ba ni murnashi\n\nKorus\n\nIn ba ka da lafiya\nKa sha baƙin ciki\nYesu shi ne Likita\nYana da magani.\n\nKorus\n\n",
      title: "359-Akwai Mai Cikin Giliyad",
      tune: "There is a Balm in Gilead"),
  Hymns(
      author: "",
      favorite: 0,
      id: 360,
      lyric:
          "Akwai murna cikin sama wadda ba mu gane ba\nTun da ni dai, yau na tuba\nNi na amshi cetona.\nGa sunana can a sama\nBa mai-iya gogewa\nNi na zama nashi, nashi\nDaga yau har abada.\n\nKORUS\nYesu, Yesu Mai Tsarki yana nan\nNa buɗe mai zuciyata, ya shigo wurina.\nYa ce ba za ya bar ni ba,\nKullum fa yana nan.\nTare, tare, tare, tare\nTafiyarmu ke nan.\n\n",
      title: "360-Akwai Murna Cikin Sama Wadda Ba Mu Gane Ba",
      tune:
          "Holy, Holy, Is What the Angels Sing / There is singing up in heaven"),
  Hymns(
      author: "",
      favorite: 0,
      id: 361,
      lyric:
          "1.\n Akwai taruwa can a sama\nKuka ya ƙare duk hawaye\nJiki ya safe mu zam kamar shi\nSama za ta buɗe, Yesu zai zo.\n\nKORUS\nWata rana Yesu zai zo\nWata rana ko zai zo yau\nDa kira mai ƙarfi\nDa sarkin mala’iku\nYesu yana zuwa don ni da ku.\n\n2.\n Sai dai da murna, mu gamu da shi\nMu bar wannan duniya da ɓakin ciki\nMurna ta cika a sa’annan\nDa shi za mu zama har abarda.\n\nKorus\n\nTune-\n\nCategory : Sama\n\n",
      title: "361-Akwai Taruwa Can A Sama",
      tune: "Some Golden Daybreak/His Matchless Love"),
  Hymns(
      author: "",
      favorite: 0,
      id: 362,
      lyric:
          "1.\n Akwai wuta, akwai wuta\nHalakaswa, halakaswa\nGudu, gudu, gudu, gudu\nWurin Yesu, wurin Yesu.\n\n2.\n Akwai ceto, akwai ceto\nMurna, murna, murna, murna\nGudu, gudu, gudu, gudu\nWurin Yesu, wurin Yesu.\n\n\n",
      title: "362-Akwai Wuta",
      tune: "London’s Burning (round)"),
  Hymns(
      author: "",
      favorite: 0,
      id: 363,
      lyric:
          "KORUS\nAlbishirin ku mutane\nSalama yau ga duniya\nGama an haifa mana Mai Ceto\nEmmanuel Allah, tare da mu.\n\n1.\n Malaiku da suka gani\nSuka rera halleluya\nSai suka shaida ma makiyaya\nHaifuwar Yesu Ubangiji.\n\nKorus\n\n2.\n Makiyaya da suka ji labari\nSuka bar dabbobinsu\nSuka je domin su ga mai ceto\nYesu makiyayi mai kyau.\n\nKorus\n\n3.\n Shehuna da gabas sun gani\nTauraro Ubangiji\nSuka tafo bisa rakumansu\nDon su gaida sarkin sarauta.\n\nKorus\n\n4.\n Tun da kun ji labari\nNa haifuwar Ubangiji\nTo sai ku shaida ma mutane\nHaifuwar mai ceton duniya.\n\nKorus\n\n",
      title: "363-Albishirin Ku Mutane",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 364,
      lyric:
          "1.\n Alhajai na Almasihu\nHanyar ɗaya mu ke bi\nKome wuya, kome ƙunci\nZa mu ƙasar alkawali.\n\n2.\n Hasken Yesu Ubangiji\nYesu walƙiya wajenmu\nYana koran duhun hanya\nYana cika zuciyarmu.\n\n3.\n Ɗaya ne Ubangijinmu\nƊaya ce bangaskiyarmu\nƊaya ne kuwa begenmu duka\nƊaya kuma yancinmu.\n\n4.\n Waƙar masu bi ce ɗaya\nKome dubban bakinmu\nƊaya ce zumuntar hanya\nƊaya ce jawabinmu.\n\n5.\n Ɗaya ce sujadar taron\nCikin ƙasar sama can\nInda Alahnmu Mai Ҡamna\nYana mulki abadan.\n\n",
      title: "364-Alhajai na Almasihu",
      tune: "What a Friend We Have in Jesus/"),
  Hymns(
      author: "",
      favorite: 0,
      id: 365,
      lyric:
          "Allah mun gode….Halleluya\nDomin ƙaunar ka zuwa gare mu ….Halleluya\nƘaunar Allah a gare mu\nMun gode Halleluya\nMun gode Halleluya\nMun gode Halleluya\n\n",
      title: "365-Allah Mun Gode….Halleluya",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 366,
      lyric:
          "1.\n Allah muna yabon sunanka \t(2x)\nDomin kai ne Allah mafi ɗaukaka \t(2x)\nDomin kai ne Allah mahaliccin duniya (2x)\nMuna yabon sunanka da daraja \t(2x)\nYabo, yabo, yabo, yabo, gareka. \t(2x)\n\n2.\n Na zo ka aike ni, na zo. \t(2x)\nIna so in yi zamana a wurinka. (2x)\nYesu Kiristi ka karƃe ni gidanka. (2x)\nMasu rai do matattu za su yabe ka (2x)\nYabo, yabo, yabo, yabo, gareka. (2x)\n\n3.\n Bayas da zuciyar, ku bayas. \t(2x)\nAikin Allah yana za ku yi bayaswa, \t(2x)\nBada zakka, bada baiko ga Allah. \t(2x)\nIrin wannan shi ne akwai albarka. \t(2x)\nBayas da dukun zuciya gareshi. \t(2x)\n\n",
      title: "366-Allah Muna Yabon Sunanka",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 367,
      lyric:
          "1.\n Allah ya kira shugaba\nNa duk mala’ikun sama\n\nYa ce “Zan aike ka a duniya”\nYa ce “Na yarda Ubangiji”\n“Ga ni, ka aike ni ko yanzu.”\n\n2.\n “Ka sabka, ka je duniya”\nZa ka iske budurwa,\nSunnanta Maryamu ne.”\n\nMala’ika ya bar gaban Allah,\nMala’ika ya bar gaban Allah,\nYa zo, ya iske Maryamu.\n\n3.\nYa ce, “Allah ya aiko ni\nDa saƙonsa mafi tsarki\nShi ne Yesu Ruhunlahi,\n\nShi za ya shiga mahaifarki,\nShi za ya shiga mahaifarki\nShi ne ‘Allah tare da mu”.\n\n4.\n Buduruwa ta razana\nTa ce, “Ni buduruwa ce\nBan taɓa shafe namiji ba”.\n\nMala’ika ya ce, “Gaskiyarki,”\nMala’ika ya ce, “Gaskiyarki,”\n“Ba ki taɓa shafi miji ba”.\n\n5.\n “Ai, wannan ikon Allah ne,\nNi ma, na ji tsoro ƙwarai.\nDa ni da ke, duka ɗaya ne.\n\nMu bar wannan ga Ubangiji,\nMu bar wannan ga Ubangiji,”\nIn ji Mal’ika Jibra’ilu.\n\n6.\n Buduruwa ta ɗauki ciki\nTa wurin Ruhun Mai Tsarki\nTa haifi Macecin ƴan Adam,\n\nShi ne Yesu Almasihu,\nShi ne Yesu Almasihu,\nShi za ya shirya duniyan nan.\n\n\n",
      title: "367-Allah Ya Kira Shugaba",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 368,
      lyric:
          "1.\n Allah ya ƙamnace mu, duk ƴan duniya\nYa aiko mana Yesu, ɗansa, tilonsa\nYesu ya bada ransa har ga mutuwa\nDon ya ba mu gafara.\n\n2.\n Yesu ya kwana uku cikin kabari\nYa tashi don ya ba mu rai madawami.\nYa sake hawa sama gun Maɗaukaki,\nZa ya zo ya karɓe ni.\n\n\n",
      title: "368-Allah Ya Ƙamnace Mu, Duk Ƴan Duniya",
      tune: "For God So Loved the World"),
  Hymns(
      author: "",
      favorite: 0,
      id: 369,
      lyric:
          "1.\n Allah ya yi ƙamnar mu, har ya aiko tilonsa\nDon ya shirya hanya zuwa gun Uba,\nSai ku bad gaskiya, sai ku juyo wurinsa\nShi zai ba mu sabon Rai, sai ku ji.\n\nKORUS\nYesunmu yana da rai,\nHalleluya Mai Cetonmu na da Rai,\nShi zai sake dawowa\nDon Shi kai mu sama can\nPansassu da Cetattu nasa ne.\n\n2.\n Ku iyayen mu, kun ji, sai ku koya mana yau.\nLabarin Mai Ceton koyaushe\nKada mu bar tafarkinsa har mu zama batattu,\nZa mu shaida sunanka, sarkinmu.\n\nKorus\n\n3.\n Sai in ji, in dinga ji labarin Mai Ceton nan\nWanda Allah ya aiko domina.\nShi ya sha wahalata, don ya ba ni wannan rai\nYesu ni ke bi yanzu, shi kaɗai.\n\nKorus\n\n4.\n Masu rai da mattatu, za su ganka Sarkinmu,\nFarin ciki za mu yi dominka.\nKai ne Ɗan Maɗaukaki, begenmu ne zuwanka.\nZa mu raira waƙarmu.  Zo yanzu.\n\nKorus\n\n5.\n Duk annabcin da an yi,\nYanzu suna cikawa.\nMuna jiran zuwanka, Sarkinmu.\nAikinmu da dukiyarmu, dukan wannan banza ne.\nZo, ka ba shi zuciyarka tun yanzu.\n\nKorus\n\n",
      title: "369-Allah Ya Yi Ҡamnar Mu",
      tune: "On the Happy Golden Shore/Life at Best is Very Brief"),
  Hymns(
      author: "",
      favorite: 0,
      id: 370,
      lyric:
          "1.\n Allah yana gaba, muna bi bayansa,\nAllah yana gaba, muna bi bayansa,\nAllah yana gaba, muna bi bayansa,\nAllah Mahalicci.\n\n2.\n Yesu yana gaba, muna bi bayansa,\nYesu yana gaba. muna bi bayansa,\nYesu yana gaba. muna bi bayansa,\nAIlah tare da mu.\n\n3.\n Ruhu yana gaba, muna bi bayansa,\nRuhu yana gaba, muna bi bayansa.\nRuhu yana gaba, muna bi bayansa,\nAllah Ruhulahi.\n\n4.\n Sarki yana gaba, muna bi bayansa,\nSarki yana gaba, muna bi bayansa,\nSarki yana gaba, muna bi bayansa,\nSarkin Sarakuna.\n\n5.\n Halleluya, halleluya, halleluya,\nHalleluya, halleluya, halleluya,\nHalleluya, halleluya, halleluya\nIn ji mala'iku.\n\n",
      title: "370-Allah Yana Gaba, Muna Bi Bayansa",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 371,
      lyric:
          "Allah zai sa mà wani albarka yau (4x)\n\n[Mai yiyuwa ni ne, Mai yiyuwa kai ne,\nMai yiyuwa wani kusa da ni ne] (2x)\n",
      title: "371-Allah Zai Sa Mà Wani Albarka Yau",
      tune: ""),
  Hymns(
      author: "Aichatou Johnson",
      favorite: 0,
      id: 372,
      lyric:
          "1.\n Allahnmu garu mai ƙarfi\nMakami mai nasara\nKo'ina shi ne cetonmu\nKariyarmu ta kirki\nMaƙiyi mugun ne\nIn ya ƙara ƙarfi\nDuka banzane\nMai magabci ya iya\nAllah ya fi ƙarfinshi\n\n2.\nMu kaɗai ba za mu iya\nƘarfinmu ba ya isa\nAkwai jarumi yin yaƙi\nDominmu yana ta yi\nWanene shi kariyar\nKai ne mai cetonmu\nAllah mai Runduna\nKabilu kassassu\nSun sani da mai ceto\n\n3.\nKo Shaiɗan ya yi ta tarko\nDon ya cuci Ekklisiya\nƳar Sion ta wuce Hades\nBisan dutsi ta zauna\nTa riƙe famarta\nBa zancen mutuwa\nDa Shaiɗan zai kawo\nDon rushe gininta\nMaganar Allah ta isa\n\n4.\nFaɗi maganar nasara\nCikin dukan tsanani\nSauko mana daga sama\nAlbarkunka ya Allah\nKo an mana ƙwace\nKo ma an kashe mu\nMine muka rasa\nAlherinka ya fi\nMulkinka na mutanenka.\n",
      title: "372-Allahnmu Garu Mai Ƙarfi",
      tune:
          "A Mighty Fortress Is Our God / C'est Un Rempart Que Notre Dieu/ Ein Feste Burg"),
  Hymns(
      author: "",
      favorite: 0,
      id: 373,
      lyric:
          "1.\n Almajiran Yesu a cikin teku.\nIska ta buga jirgi ya motsa.\nSun ji tsoro sun yi rawar jiki.\nYesu ya ce ina bangaskiyarku.\n\nKORUS\nKada ku ji tsoro, kada ku yi fargaba.\nKu mutane na ina tare da ku.\nBar addu’o’inku su sanu ga Allah.\nSalamar Almasihu ta kasance tare da ku.\n\n2.\n Lokacin da ka nemi, aiki ka rasa.\nIskan rashi ne ya buge ka.\nKa kan ji tsoro ku yi rawar jiki.\nYesu ya ce, “Ina bangaskiyarka.”\n\nKorus\n\n3.\n Lokacin da ka faɗa cikin jaraba.\nKa faɗa cikin tsananni.\nKa kan ji tsoro ka yi rawar jiki.\nYesu ya ce, “Ina bangaskiyarka.”\n\nKorus\n\n4.\n Babu wata jaraba, babu wanni tsananni.\nDa suke iya su same mu.\nWanda Yesu ba shi iya shi gyara.\nDomin haka ne ya faɗa mana cewa.\n\nKorus\n\n\n",
      title: "373-Almajiran Yesu a Cikin Teku",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 374,
      lyric:
          "An zamadda Yesu ne\nKomenmu, komenmu.\nShi kaɗai ne gurinmu\nYesu kome ne.\n\nKORUS\nHikima da adalci,\nTsarki, iko, namu ne,\nPansarmu cikakkiya\nYesu kome ne.\n\n",
      title: "374-An Zamadda Yesu Ne",
      tune: "Jesus Christ is made to me all I need"),
  Hymns(
      author: "",
      favorite: 0,
      id: 375,
      lyric:
          "Ashe eh, samaniya-ah\nAshe muna tunanin samaniya.\n\nSamaniya-ah guidan Allah-ah\nAshe muna tunanin samaniya\n(Maimaita da yawa)\n",
      title: "375-Ashe Muna Tunanin Samaniya",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 376,
      lyric:
          "KORUS\nAure na da daɗi,  Aure na da daɗi.  Aure na da daɗi.\nIdan mun bi nufin Allah,   Idan mun bi nufin Allah.\n(2x)\n\n1.\n Kuskure a zaɓan aure, ya kan kawo asara.\nZaɓe mai wuya ainun aure, ya kan kawo asara.\nƘauna ita ce aure, haƙuri shi ne aure.\nBiyayya ita ce aure, zumunci shi ne aure.\n\nKorus\n\n2.\n Ku gafarta wa juna, ku gode wa juna.\nRoƙi gafara ga juna, ku ga ƙoƙarin juna.\nCin abincinku tare, yi shawarar ku tare .\nYi kwanciyar ku tare, ku yi dukan abu tare.\n\nKorus\n\n3.\n Banda ɓoye – ɓoye, banda cin amana.\nKu lura ku kula da juna, banda yawan cakuna,\nYin dangantaka na ƙwarai, da ƴan dangi da abokai.\nA sha’ani kuɗi da sutura, domin azanci shi ne aure.\n\nKorus\n\n",
      title: "376-Aure Na da Daɗi",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 377,
      lyric:
          "KORUS\n(Solo; “Aure.”)\nAure, aure, aure yana da daɗi.\n(2x)\n\n(Solo: “Aure yana da daɗi, Baba aure yana da daɗi .\nAure yana da daɗi, Mama aure yana da daɗi.”)\n(Solo : “Aure.”)\nAure, aure, aure yana da daɗi.\n(2x)\n\n1.\n Solo:\n“Baba ne ya haɗa ku, dole ne aure ya rabu.\nMama ce ta haɗa ku, dole ne aure ya rabu.\nKo Pasto ne ya haɗa ku, dole ne aure ya rabu.\nIdan Allah ne ya haɗa ku, gaskiya ba mai rabawa.”\n(2x)\n\nKorus\n\n2.\n Solo:\n“Shi Allah ne ya faɗa.\nUbangiji karan kansa ne ya faɗa.\nYa ce, “Ku yi aure, ku so juna kamar yadda shi ya so ku.”\nYara ku yi biyayya, manyan ku nuna ƙamna.\nEkklesiya ta sa bege, bege da bangaskiya.”\n(2x)\n\nKorus\n\n3.\n Solo:\nMai gida ya so abinci.\n“Amariya sai ki ɗoko.”\nMai gida ya so ruwan wanka.\nNan da nan fa sai ki ɗauko.\n(2x)\n\nKorus\n\n\n\n",
      title: "377-Aure, Aure",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 378,
      lyric:
          "1.\n Aure na masu bi aure ne mai tsarki, ku ƙaunace juna har abada\nUbangiji Allah shi ne ya kafa aure ya ce mu yi aure a duniya\n\nKORUS\nKu zama ɗaya cikin zamanku, Amarya yi bayayya\nAngo ka ƙaunaceta gidan ku zai zama da Albarka\n\n2.\n Ango na murmurshi, Amarya na murmurshi, dono yau suna cikin alkawali\nMu masubi duka muna tayaku murna mune shaidun wannan aure a yau.\n\nKorus\n\n3.\n Ku ba juna shawara juna yin addu’a, ku zuba ido ga Yesu Kristi,\nKo cikin wahala ko cikin jin daɗi ku kasance da ƙaunan junan ku.\n\nKorus\n\n4.\n Macen kirki takan faranta ran mijinta mara kirki takan zama ciwo\nAmarya ki zama mai faranta ran mijinki, mijinki zai kasance da murna.\n\nKorus\n\n5.\n Samari da ƴan mata sai ku yi addu’a don ku yi nasara da magabci.\nMu masu bi duka muna yin addu’a Ubangiji y baku nasara.\n\nKorus\n\n",
      title: "378-Aure Na Masu Bi, Aure Ne Mai Tsarki",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 379,
      lyric:
          "Kira: Auren da Allah ya bada ya ce babu rabuwa (2x)\n\nAmsa: Ya ce mu manne ma juna\n\nKORUS:\nƳan uwa rashin biyayya shi yasa muke rabuwa (2x)\n\n1.\n  Da Allah ya ɗaura auren nan sai ya ce kada a wargaje shi (2x)\n\nKorus\n\n2.\n Allah ya hallici Adamu ya ba shi Hawa’u (2x)\n\nKorus\n\n\n",
      title: "379-Auren da Allah Ya Bada Ya Ce Babu Rabuwa",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 380,
      lyric:
          "“Bi ni,” in ji Almasihu\nSo ni ke yi in bi Almasihu\nKo’ina ya je, ni ma sai in je,\nKada in karkace.\n\n",
      title: "380-“Bi Ni,” In Ji Almasihu",
      tune: "I’m on the Rock"),
  Hymns(
      author: "",
      favorite: 0,
      id: 381,
      lyric:
          "1.\n Sojoji kun gaji ne?\nBa gajiya!\nSojoji kun gaji ne?\nBa gajiya!\n\nKORUS\nTo, gaya wa duniya\nYesu na zuwa gaya wa duniya\nYesu na zuwa gaya wa duniya\nSojojin Yesu ba za mu taƃa gaji ba (Soja! ko Halleluya! )\nSojojin Yesu ba za mu taƃa gaji ba (Soja! ko Halleluya !)\n\n2.\n Yara kun gaji ne?\nBa gajiya!\nYara kun gaji ne?\nBa gajiya!\n\nKorus\n\nMu sojojin Yesu ne\nMu sojojin Yesu ne.\n\nKorus\n\n\n",
      title: "381-Ba Gajiya",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 382,
      lyric:
          "1.\n Ba mai iya bauta ma Allah biyu.\nBa mai ikon bauta ma Allah biyu.\nKo shi ki ɗaya, ya ƙaunaci ɗaya .\nKo shi lizimci ɗaya, ya raina ɗaya.\n\n2.\n Ba mai iya bauta ma Allah da mammon.\nBa mai ikon bauta ma Allah da mammon.\nKo shi ki ɗaya, ya ƙaunaci ɗaya.\nKo shi lizimci ɗaya, ya raina ɗaya.\n\n3.\n Ba mai iya bauta ma Yesu da duniya.\nBa mai ikon bauta ma Yesu da duniya.\nKo shi ki ɗaya, ya ƙaunaci ɗaya .\nKo shi lizimci ɗaya, ya raina ɗaya.\n\n4.\n Ba mai iya bauta ma Allah da Shaiɗan.\nBa mai ikon bauta ma Allah da Shaiɗan.\nKo shi ki ɗaya, ya ƙaunaci ɗaya.\nKo shi lizimci ɗaya, ya raina ɗaya.\n\n\n\n",
      title: "382-Ba Mai Iya Bauta Ma Allah Biyu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 383,
      lyric:
          "1.\n Ba wuri domin Yesu can Baitalhami\nSai wurin dabobbi\nBa wuri a duniya domin Ɗan Allah\nBa wurin kwantawa.\n\nKORUS\nSai giciye an ba Maɗaukaki\nSai kumya, kabari\nYau yana ƙwanƙwasa a zuciyarka.\nBari ka ce masa, “Shigo”\n\n2.\n Ya jira, ya kira ƙofar zuciyata\nNa kyale ƙamnarsa,\nAmma Mai Cetona ya ji tausayina\nYa jawo ni wurinsa.\n\nKorus\n\n3.\nYa Almasihu, ina yarda da kai\nNa faɗi aibina\nKa wanke ni, gafarta duk laifina\nKa zama Mai mulkina.\n\nKorus\n\n",
      title: "383-Ba Wuri Domin Yesu Can Baitalhami",
      tune: "No Room for Jesus"),
  Hymns(
      author: "",
      favorite: 0,
      id: 384,
      lyric:
          "1.\n Ba za ka yi sujada sai ga Allah.\nM'm, ko kaɗan, mu ne muna bin Yesu.\n\n2.\n Ba za ka yi kowane tsafi ba.\nM'm, ko kaɗan, mu ne muna bin Yesu.\n\n3.\n Ba za kama sunan Allah banza ba.\nM'm, ko kaɗan, mu ne muna bin Yesu.\n\n4.\n Ba za ka yi aikin ran lahadi ba.\nM'm, ko kaɗan, mu ne muna bin Yesu.\n\n5.\n Ba za ka rena iyayenka ba.\nM'm, ko kaɗan, mu ne muna bin Yesu.\n\n6.\n Ba za ka yi kisa, in ji Allah ba.\nM'm, ko kaɗan, mu ne muna bin Yesu.\n\n7.\n Ba za ka yi zina, in ji Allah ka.\nM'm, ko kaɗan, mu ne muna bin Yesu.\n\n8.\n Ba za ka yi sata, in ji Allah ba\nM'm, ko kaɗan, mu ne muna bin Yesu.\n\n9.\n Ba za ka yi shaidar zur kan kowa ba.\nM'm, ko kaɗan, mu ne muna bin Yesu.\n\n10.\n Ba za ka yi kyashin samun wani ba,\nM'rn, ko kaɗan, mu ne muna bin Yesu.\n\n11.\n Ko kaɗan mu ne mun bi Yesu.\nM'm, ko kaɗan, mu ne muna bin Yesu.\n\n\n",
      title: "384-Ba Za Ka Yi Sujada Sai Ga Allah",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 385,
      lyric:
          "1.\n Babu hawaye a can (2x)\nGama wuri ne mai ban mamaki.\nBabu hawaye a can.\n\nKORUS\nO ƴan'uwa me zai hana ku shiga can?\nO ɗan'uwa me zai hana ka shiga can?\nO ƴar'uwa me zai hana ki shiga can?\nA sama gidan AlIah mai ban mamaki.\nKada mu rasa shiga. \t(2x)\n\n2.\n Babu mutuwa can (2x)\nGama wuri ne mai ban mamaki\nBabu mutuwa can.\n\nKorus\n\n3.\n Babu yaƙoki a can \t(2x)\nGama wuri ne mai ban mamaki.\nBabu yaƙoki a can.\n\nKorus\n\n4.\n Babu kabilu a can (2x)\nGama wuri ne mai ban mamaki.\nBabu kabilu a can.\n\nKorus\n\n5.\n Babu kwaɗayi a can (2x)\nGama wuri ne mai ban mamaki.\nBabu kwaɗayi a can.\n\n6.\n Babu ciwo a can (2x)\nGama wuri ne mai ban mamaki.\nBabu ciwo a can.\n\n7.\n Ku dangogi. me zai hana ku shiga can?\nKu dattibai, me zai hana ku shiga can?\nKu mazaje, me zai hana ku shiga can?\nKu mataye. me zai hana ku shiga can?\nO dukanku. me zai hana ku shiga can?\nA sama gidan Allah mai ban mamaki\n[Kada mu rasa shiga]. (2x)\n\n",
      title: "385-Babu Hawaye A Can",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 386,
      lyric:
          "1.\n Ban gane yadda zunubai na Adam sun rayu\nA cikin dukan mutane babba ko ƙarami.\n\nKORUS\nAmma ga shi, nan, Magana ce ta Allah\nTa Ubangiji, na gaskanta shi.\nNa karanta shi nan, na gaskanta shi\nYa ishe ni, ya isa.\n\n2.\n Ban gane yadda Allahmu ya sabko duniya nan\nYa ɗauki jikin ƴan Adam ya bar sama a can.\n\nKorus\n\n3.\n Ban gane yadda Allah fa ya aza nawa laifi\nA bisa Ɗansa a giciye, nasarata ya ci.\n\nKorus\n\n4.\n Ban gane yadda Allah fa ya buɗe kabari\nYesu ya biya pansata, rai na har abada.\n\nKorus\n\n5.\n Ban gane yadda jininsa ya wanke zunubi\nYa ba ni tashi daraja, yanzu ɗansa ni ke.\n\nKorus.\n\n6.\n Ban gane yadda wata rana Yesu zai fyauce ni\nShi kai ni can wurin Uban da sauran masu bi.\n\nKorus\n\n",
      title: "386-Ban Gane Yadda Zunubai na Adam Sun Rayu",
      tune: "I Believe It (C.A. Tindley)"),
  Hymns(
      author: "",
      favorite: 0,
      id: 387,
      lyric:
          "Bari mu yi aminci\nKo murya ta duniya tana kiranmu,\nAi, Shi ya mutu don mu\nYa isa ranmu da dukan zuciyarmu.\nZa mu yawo tare da Shi\nSa’anda mu ke a sama can.\nBari mu yi ta jawo mutane zuwa Macecinmu a nan\nBari mu yi aminci, za mu sami albarka har abada.\n\n",
      title: "387-Bari Mu Yi Aminci",
      tune: "Let’s Be True to Jesus"),
  Hymns(
      author: "",
      favorite: 0,
      id: 388,
      lyric:
          "Soprano : Amma ke baita….lami, Yahuda, amma Baitalahmi, E……phra-tha, daga cikinki….Sarki……zai zo\n\nSop: Alto: Wa zai zama sarkin Isra’ila,\nSop: Alto: Tenor: Wa zai zama sarkin Isra’ila\n\nDuka: Shi zai zama sarkin Isra’ila, babba sarki, babba na duk ƙasar Isra’……….ila.\n\nTenor: Solo:  Sarki zai zo, zai zo daga cikin…Kine ga mutane\n\nBass: Solo: Shi zai zama….mai mulki, na duk…ƙa..sar Yahuda\n\nAlto: Solo: Shi zai zama….mai mulki, na duk ƙa..sar Ya-huda da duka Isra’ila.\n\nDuka:Gama yake, Baitala mi yake, Baitalahmi yake, Baitalahmi Ephratha\nBaitalahmi Ephratha, Baitalahmi Ephratha, Baitalahmi Yahuda,\nKaramar ƙasa Yahuda, ƙanƙanuwa ce Yahuda.\n\n",
      title: "388-Bethlehem Ephratha",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 389,
      lyric:
          "1.\n Yesu ya kira almajiransa sha biyu.\nLokacin da yake komawa sama\nYa ce, “Su tafi su yi bishara\nHar duniya duka ta sami ceto.”\nKORUS\nBishara Yesu\nZa mu yi, za mu yi\nBabu tsoro fargaba ba za mu yi ba.\n\n2.\n Sai ku fara a cikin Urushalima,\nHar in aiko maku da mai taimako.\nRuhu mai tsarkina za ya bida ku,\nGa shi ina tare da ku a kulluyaumi.\n\nKorus\n\n3.\n Sai ku fara daga Urushalima,\nSamariya har da Galili.\nDukan ƙauyuka suna bukatar ceto.\nSa’an nan har iyakar duniya.\n\nKorus\n\n4.\n Ku ɗauki giciyen Yesu domin bishara,\nGama duniya tana mutuwa.\nIdan mu kyale su za su hallaka,\nAlhakinsu yana rataye a wuyanmu.\n\nKorus\n\n5.\n Wanda ya nace cikin aikin bishara.\nZa ya sami ladan aikinsa.\nZa ya sami rawani na rai,\nZa mu yi mulki tare da shi har abada.\n\nKorus\n\n\n",
      title: "389-Bisharar Yesu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 390,
      lyric:
          "1.\n Can cikin Baitalahmi, Yesu ya zo\nKamar ɗan jariri Allah ya iso.\nDarajar ta sama ya bar domin mu\nYa yarda shi zama mutum talaka.\n\n2.\n Ba gidan mai arziki ko sarauta\nBa darajar duniya Yesu ya zaɓa\nBa wurin mafaka domin Ɗan Allah\nWanda ya yi sama da duk duniya.\n\n3.\n Ya Yesu Mai Ceto, gareka mun zo,\nMun kawo yabonmu, Kai ne mu ke so\nƘamnar muke ba ka, da godiyarmu,\nKarɓi zukatanmu, ka yi mulkinmu.\n\n",
      title: "390-Can Cikin Baitalahmi, Yesu Ya Zo",
      tune: "Away in a Manger/ Cradle Song/ Mueller"),
  Hymns(
      author: "",
      favorite: 0,
      id: 391,
      lyric:
          "Ceto baiwa ce ta Allah\nCeto baiwa ce ta Allah\nCeto baiwa ce ta Allah\nMai Ceto Yesu ne.\n\n\n",
      title: "391-Ceto Baiwa Ce Ta Allah",
      tune:
          "Our God is marching on/ Battle Hymn of the Republic (chorus only)"),
  Hymns(
      author: "",
      favorite: 0,
      id: 392,
      lyric:
          "1.\n Lokacin da na faɗa cikin jaraba\nA cikin hannun magabci Shaiɗan\nNi kan daga hannuwana a sama\nInda cetona zai fito.\n\nKORUS\nCeto gun Yesu, jinƙai ga Allahnmu\nNassara, salama, suna cikin hanyar Yesu\n\n2.\nDon mine ne kake tagumi ya raina\nDon mine ne kake alhini a cikina\nKa kafa bege ga Allahna\nInda cetona zai fito.\n\nKorus\n\n3.\n Lokacin da na yi kuka ga Allahna\nLokacin da na yi ƙara ga kunnensa\nLokacin da na kawo damuwata\nAllah ya ji ya ceci ni.\n\nKorus\n\n4.\n Albarka ta tabbata ga Ubangiji\nZan yabe shi dare da rana\nMutane ku zo mu tarbi Ubangiji\nInda cetonmu zai fito.\n\nKorus\n\n\n",
      title: "392-Ceto Gun Yesu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 393,
      lyric:
          "1.\n Lokacin da sa’a ta yi kusa\nDa Yesu zai koma gun Uba.\nYa tara fa, Almajiransa\nSai ya ce zai koma, gun Uba.\n\nKORUS\nCika mu da Ruhunka Allah\nRuhun Rai, Ruhu Mai Tsarki.\nCika mu da Ruhun Iko\nRuhun ƙamna, da hikima.\n\n2.\n Kada zuciyarku ta ɓace\nBa zan barku ba fa marayu.\nAmma zai aiko, Mai Taimako\nYa bishe ku, cikin gaskiya.\n\nKorus\n\n3.\n Ruhun da Allahnmu ya ba mu\nBa Ruhu ne na tsoro ba fa.\nAmma Ruhun Iko da ƙamna\nCike da kuma fa hikima.\n\nKorus\n\n4.\n Ƴan’uwa mu yafa ƴaƴan Ruhu\nFarin ciki, ƙamna, salama\nNasiha, tawali’u, nagarta\nJimrewa, aminci, kamewa.\n\nKorus\n\nCategory:  Sama\n\n",
      title: "393-Cika Mu da Ruhunka Allah /Mai Taimako",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 394,
      lyric:
          "Cikin gidan Uban, cikin gidan Uba\nIna da ɗakina shiryayye\nWurin da zan zamna har abada\nCikin gidan Uba, cikin gidan Uba.\nDa an gama da yaƙi, an ci nasara\nCikin gidan Uba.\n\n\n",
      title: "394-Cikin Gidan Uban",
      tune: "The sweet by and by/There’s a land"),
  Hymns(
      author: "",
      favorite: 0,
      id: 395,
      lyric:
          "1.\n Cikin wata na shidda (3x)\nAn aiko Jibra'ilu. \t(3x)\nCikin wata na shidda\nAn aiko Jibra'ilu.\n\n2.\n Zuwa wani birni \t(3x)\nSunansa Nazaret. \t(3x)\nZuwa wani birni\nSunansa Nazaret.\n\n3.\n Zuwa ga budurwa \t(3x)\nSunanta Maryamu. \t(3x)\nZuwa ga budurwa\nSunanta Maryamu.\n\n4.\n Ya ce, za ki yi ciki, (3x)\nCikin kuwa ruhu ne \t (3x)\nYa ce, za ki yi ciki.\nCikin kwa ruhu ne.\n\n5.\n Maryamu ta ce masa   (3x)\nGa ni kwa baiwa ce \t(3x)\nMaryamu ta ce masa\nGa ni kwa baiwa ce.\n\n6.\n Maryamu ta haifi ɗa  (3x)\nSunansa Yesu ne \t(3x)\nMaryamu ta haifi ɗa\nSunansa Yesu ne.\n\n7.\n Maryamu ta haifi ɗa  (3x)\nKamar ɗan talaka. \t(3x)\nMaryamu ta haifi ɗa\nKamar ɗan talaka.\n\n\n8.\n Ashe ɗan sarki ne. \t(3x)\nYa zo ya cece mu. \t(3x)\nAshe ɗan sarki ne.\nYa zo ya cece mu.\n\n9.\n Mu kuwa muna murna,  (3x)\nDomin ya cece mu. \t(3x)\nMu kwa muna murna,\nDomin ya cece mu.\n\n",
      title: "395-Cikin Wata Na Shidda",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 396,
      lyric:
          "1.\n Da hannuna biyu zan yi aikinka\nBaki zai yi ta yabonka.\nDa kunnena biyu zan ji maganar\nMurya ta riƙa rairawa.\n\nKORUS\nYa Allah, ni na zo, amshi dukan rai na yau\nYa Allah, ni na zo, kada in ƙara zunubi.\n\n2.\n Da ƙafa biyu na ka hanya\nZuwa gidanka can sama\nDa ido zan karanta labarin\nYesu da dukan ƙamnarka.\n\nKorus\n\n3.\n Riƙe dukan zuciyata, ya Ruhu\nMuryarka ina saurara,\nDuk kwanakina zuwa mutuwa,\nIna so in yi shaida.\n\nKorus\n\n\n",
      title: "396-Da Hannuna Biyu Zan Yi Aikinka",
      tune: "Two Little Hands to Work for Jesus"),
  Hymns(
      author: "",
      favorite: 0,
      id: 397,
      lyric:
          "1.\n Da Yesu za mu kwana, da shi za mu tashi,\nZa mu yi yabonsa don shi ne makiyayi.\nIdan za ka tsira, sai dai ka bi shi.\nMaida saura baya. Yesu ya fi su girma.\n\n2.\n A can sama da daɗi, can za mu huta.\nZa mu ga Ubanmu, mu yi masa sujada.\nShaiɗan da saura za su sha azaba.\nZa su yi ta kuka. Yesu ba zai kula ba.\n\n",
      title: "397-Da Yesu Za Mu Kwana",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 398,
      lyric:
          "1.\nDaga ina ne cetona zai zo\nDaga Ubangiji sarki mai daraja\nDaga Ubangiji babban marayu\nCetona zai zo.\n\n2.\n Daga El-shaddai wato Allah mai iko duka\nJehovah Rapha Allah mai warkasuwa\nJehovah Jire Allah mai tanadawa\nCetona zai zo.\n\n3.\n Daga El-Elyon wato Allah Maɗaukaki\nJehovah Nisi Allah ne tutata\nJehovah Ra’ah Allah Makiyayi\nCetona zai zo.\n\n4.\nDaga Adonai wato Allah Ubangiji\nJehovah Shalom Allah ne salamata\nJehovah Saba’oh Allah mai runduna\nCetona zai zo\n\n5.\nDaga El-Hai wato Allah ne rayayye\nJehovah Mekoddishkem Allah Mai Tsarkakewa\nJehovah Shammah Allah yana nan\nCetona zai zo.\n\n\n\n",
      title: "398-Daga Ina Ne Cetona Zai Zo",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 399,
      lyric:
          "1.\n Dan ina bin hanyar zunubi\nShaiɗan ya ɗaure ni da sarƙoki\nHar ma ba san inda ni ke ba\nSai Yesu ya sake ni.\n\nKORUS\nYesu ya sake ni,\nYesu ya sake ni,\nDa ina zamna cikin bauta\nSai Yesu ya sake ni.\n\n2.\n Dā ba na iya yin magana ba\nShaiɗan ya ɗamre mani bakina\nBa ni da dama in yi shaida\nSai Yesu ya sake ni.\n\nKorus\n\n3.\n Ba na kan je wurin wa’azi ba,\nTsoro ya kama mini zuciya\nNa cika kumya da ƙiwuya\nSai Yesu ya sake ni.\n\nKorus\n\n4.\n Yanzu ‘na nan cikin haskensa\nIna da murna cikin zuciya.\nBa ni da tsoro, ko ƙiwuya\nTun Yesu ya sake ni.\n\nKORUS\nYesu ya sake ni,\nYesu ya sake ni,\nKada ka zamna cikin bauta\nBar Yesu ya sake ka.\n\n\n",
      title: "399-Dan Ina Bin Hanyar Zunubi",
      tune: "Down At the Cross"),
  Hymns(
      author: "",
      favorite: 0,
      id: 400,
      lyric:
          "Daraja ga Allah\nYabo ga Ɗan da Ruhu Mai Tsarki\nKamar an yi cikin farko,\nDa yanzu da na gaba\nHar abada, Amin, Amin.\n\n\n",
      title: "400-Daraja Ga Allah",
      tune: "Glory Be to the Father/ Greatorex"),
  Hymns(
      author: "",
      favorite: 0,
      id: 401,
      lyric:
          "1.\n Dare ya yi, Baitalahmi, mutane sai barci,\nSai makiyaya can daji, suna lura da tumaki\nSai mala’ika ya zo, sai mala’ika ya zo.\n\n2.\n Kada ku ji tsoro, ga shi, na kawo labari\nGama yau cikin Baitalahmi an haifa maku Maceci,\nƊan jariri ne shi, ɗan jariri ne shi.\n\n3.\n Nan da nan, daga can, runduna na sama\nSuna yabon Maɗaukaki, suna murna da farin ciki\nYau Mai Ceto ya zo, ya Mai Ceto ya zo.\n\n",
      title: "401-Dare Ya Yi, Baitalahmi",
      tune: "(Silent Night/ Douce Nuit /Stille Nacht"),
  Hymns(
      author: "",
      favorite: 0,
      id: 402,
      lyric:
          "KORUS\nA cikin doguwar tafiyarmu\nZuwa cikin kasa ta alkawali\nIn ba tare da kai ba ya Ubangiji\nZa mu kasa cikin jeji.\n\n1.\n Akwai macizai da yawa\nAkwai miyagu sosai\nIn ba tare da kai ba ya Ubangiji\nZa mu kasa cikin jeji.\n\nKorus\n\n2.\n Akwai abokan gaba\nAbin tsoro da yawa\nIn ba tare da kai ba ya Ubangiji\nZa mu kasa cikin jeji.\n\nKorus\n\n3.\nGa jan teku\nAkwai duwatsu sosai\nIn ba tare da kai ba ya Ubangiji\nZa mu kasa cikin jeji.\n\nKorus\n\n4.\nAkwai zafi da yawa\nAkwai ƙishirwa sosai\nIn ba tare da kai ba ya Ubangiji\nZa mu kasa cikin jeji.\n\nKorus\n\n",
      title: "402-Doguwar Tafiyarmu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 403,
      lyric:
          "Domin Ka kawo mu a wannan rana yau (2x)\nMun gode Allah,\nMun gode Allah,\nMun gode Allah,\nMun gode Allah,\nMun gode....\n",
      title: "403-Domin Ka Kawo mu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 404,
      lyric:
          "Don Kai Mahalicinmu ne\nKarɓi yabo da ɗaukaka\nMuna girmama sunanka\nUbangiji Maɗaukaki.\nAmin !  Amin!\n\n\n",
      title: "404-Don Kai Mahalicinmu Ne",
      tune: "Doxology/Old 100th"),
  Hymns(
      author: "",
      favorite: 0,
      id: 405,
      lyric:
          "Duba, duba, a ƙofar zuciya,\nYesu ‘na nan, ji!\nYana ƙwanƙwassawa.\nIn ka ji muryarsa,\nKa buɗe kofa kuwa,\nZai shiga dai, ya ba ka rai,\nKu zamna tare, har abada.\n\n\n",
      title: "405-Duba, Duba, A Ҡofar Zuciya,",
      tune: "Behold, Behold/ Behold, behold the Lamb of God"),
  Hymns(
      author: "",
      favorite: 0,
      id: 406,
      lyric:
          "Duba Yesu a bakin ƙofa.\nҠofar zuciya mai zunubi\nYana jira, buɗe masa\nҠarɓe shi, ka sami rai.\n\n",
      title: "406-Duba Yesu A Bakin Ҡofa",
      tune: "Jesus calls us o'er the tumult / Galilee"),
  Hymns(
      author: "",
      favorite: 0,
      id: 407,
      lyric:
          "Dukan aiki mu ke yi\nCikin gida ko waje\nShara, noma, itace\nDaka, tuwo ko zare\nMu yi shi duk don Yesu\nYesu Mai Cetonmu.\n\n\n",
      title: "407-Dukan Aiki Mu Ke Yi",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 408,
      lyric:
          "1.\n Ga alkawari na Allah cikin Littafi Mai Tsarki\nYesu ya yi mani shi\nIn kun roƙi kome ne. A cikin sunana dai-dai\nShi zai ji addu’arka.\n\nKORUS\nYesu yana jiranmu mu zo gareshi\nKome ya ke damunka\nTashi dai ka yi addu’a\nWanda ya zo gunsa, za a taimake shi,\nLalle yana jin addu’a.\n\n2.\n Dukan inda biyu ko uku suna nan a tattare\nNan ya ke a tsakiya\nDukan wanda ya yi roƙo tare da bangiskiya\nZa a ji addu’arsa.\n\nKorus\n\n3.\n In na kiyaye mugunta a cikin zuciyata\nAllah ba zai ji ni ba,\nAddu’ar mai ƙin shari’a abin ƙyama ne ya ce,\nAllah ba zai ji ta ba.\n\nKorus\n\n4.\n Bari dai mu yi addu’a kullum ba da fasawa\nDomin duka tsarkaka,\nMu yi tsaro fa a ciki, mu yi tare da godiya\nAllah yana jin addu’a.\n\nKorus\n\n",
      title: "408-Ga Alkawari na Allah Cikin Littafi Mai Tsarki",
      tune: "Bring Your Vessels, Not a Few"),
  Hymns(
      author: "",
      favorite: 0,
      id: 409,
      lyric:
          "1.\n Ga Allah kaɗai, Mahiliccinmu,\nDaidai mu yi waƙar yabonsa yanzu.\n\nKORUS\nMu yi waƙar yabon Allah\nAddu’ar za mu yi.\nMu yi waƙar yabon Allah,\nMu girmama shi.\n\n2.\n Mu girmama shi, addu’ar za mu yi.\nMai kyauta ba gori duk baiwa sai shi.\n\nKorus\n\n3.\n Mai raya mutum kyautar, Allah sosai\nBan da Allah, ina za mu sami jinƙai?\n\nKorus\n\n4.\n Jinƙai ne ya sa ya yi mana baiwa\nDa ya aiko Mai Ceto tun zamani dā.\n\nKorus\n\n5.\n Mai Ceto ne shi wanda Allah ya ce\nShi Ɗansa ne, ransa ya so shi sarai.\n\nKorus\n\n6.\n Labarin Mai Ceto da daɗi ya ke\nMutuwassa da tashinsa duk namu ne.\n\nKorus\n\n7.\n Duk wanda ya ce Almasihu zai bi,\nTsattsarken numfashi zai ƙarfafa shi.\n\nKorus\n\n\n\n\n",
      title: "409-Ga Allah Kaɗai, Mahiliccinmu",
      tune: "Revive Us again / We Praise Thee O God"),
  Hymns(
      author: "",
      favorite: 0,
      id: 410,
      lyric:
          "1.\n Ga jariri, ga jariri.\nAn haife shi a Birnin Dauda.\nShi ne Yesu, Shi ne Yesu,\nAlmasihu, mai ceton duniya.\n\n2.\n Mu ɗaukaka shi, mu girmama shi,\nAlmasihu, mai ceton duniya.\nGa shehuna daga gabas.\nSun kawo kayan zinariya.\n\n3.\n Mun yi murna, mun yi murna\nTare da mala'ikansa,\nMun karƃe shi da farinciki\nDon ya zama Madogararmu.\n\n4.\n Allah Ya yi Ƙaunar duniya\nHar Ya bada mai ceto, Yesu.\nHalleluya, halleluya,\nHalleluya, ga Almasihu.\n\n",
      title: "410-Ga Jariri, Ga Jariri",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 411,
      lyric:
          "1.\n Ga mai shibka cikin gona\nYana watse irinsa\nWasu su ka faɗi akan hanya\nTsuntsaye suna cinyewa.\n\nKaka Mugun ya fige daga zuciya\nMaganar Allah da akan shibka.\n\n2.\n Cikin marmara wasu sun faɗi\nInda ba su da ƙasa ba\nAmma rana ta ƙone su\nTun ba su da sayu ba.\n\nHaka tsanani ko da ƙunci\nShi kan sa mutum shi tun tuɓe.\n\n3.\nWasu cikin ƙaya sun faɗi\nҠaya su kan shake su\nHaka ruɗin dukiya  ta duniya\nTa kan maida shi mara amfani.\n\nWanda shi kan ji, shi maida hankali\nIrin shibka da a ke yi.\n\n4.\n Bisa ƙasa mai kyau wasu sun faɗi\nSu kan bada amfani\nHaka wanda ya saurara ya gane\nHar ya karɓi da zuciya ɗaya.\n\nRiɓi talatin, wasu sittin\nHar wasu sun kai ga ɗari.\n\n",
      title: "411-Ga Mai Shibka Cikin Gona",
      tune: "Guide me, O Thou great Jehovah"),
  Hymns(
      author: "",
      favorite: 0,
      id: 412,
      lyric:
          "1.\n Ga mu nan shehuna gabas\nMun kawo maka sujada,\nDaga nesa mun yi murna\nDa ganin tamraruwa.\n\nKORUS\nGa tarmamuwa, can sama,\nTarmamuwa haskaka\nCikin zukatanmu duka\nHar mu cika nufinsa.\n\n2.\n Mun kawo maka dukiya,\nGa zinariya-zumuntarmu\nKai ne sarki, yi ta mulkinka\nCikin zukatanmu.\n\n3.\n Ku mutane yau kun taru,\nKuna murna tare da mu.\nKo kun san wanda an haifa,\nKo shi ne naka ceto.\n\n",
      title: "412-Ga Mu Nan Shehuna Gabas",
      tune: "We Three Kings of Orient Are"),
  Hymns(
      author: "",
      favorite: 0,
      id: 413,
      lyric:
          "1.\n Ga mutum mai ƙazamin Ruhu\nYa gamu da Yesu dai\nKullum kuwa ko dare da rana\nYana kururuwa dai.\nYa tsatsage jikinsa kuwa\nCan kabari da duwatsu.\n\n2.\n Ba wanda na da iko shi damre\nMai ƙazamin Ruhun nan\nSau da yawa ya tsutsunke\nHar sarƙoƙi ya karye su.\n\n3.\n Sai ya iske Yesu na zuwa\nDaga nesa ya iske shi\nYa sheƙo a guje domin\nYa yi masa sujada fa.\n\n4.\n Ya ce “ina ruwana da kai,\nYesu kai Ɗan Allah ne ?”\nYa ce “Ka fito daga cikin\nMai ƙazamin Ruhun nan.”\n\n5.\n Ҡazamin ruhohin nan\nSun shiga cikin gursunnai\nSu sun faɗi cikin teku\nSun nutse dai, sun shaƙe kuwa.\n\n6.\n Ta wurin ikon Maɗaukaki\nYesu Ɗan Allah kaɗai\nMai ƙazamin ruhun ya zama\nMai hankali, mai shaida kuwa.\n\n7.\n Sai mu bi Yesu don ya iya\nCece mu daga Shaiɗan.\nMu gaskanta shi Ɗan Allah ne\nMai Cetonmu, Mai Kamnarmu.\n\n\n",
      title: "413-Ga Mutum Mai Ƙazamin Ruhu",
      tune: "In Winter I Get Up At Night/Bed in Summer"),
  Hymns(
      author: "",
      favorite: 0,
      id: 414,
      lyric:
          "Gaskanta Shi, gaskanta Shi\nKome yana yiwuwa, gaskanta Shi.\nGaskanta Shi, gaskanta Shi\nKome yana yiwuwa, gaskanta Shi.\n\n\n",
      title: "414-Gaskanta Shi, Gaskanta Shi",
      tune: "Only Believe"),
  Hymns(
      author: "",
      favorite: 0,
      id: 415,
      lyric:
          "KORUS\nGodiya iye,\nMun gode, godiya iye—eh\nGodiya iye,\nMun gode, godiya ga Allah.\n\n1.\n Na duba halittar duniya\ntsuntsaye, kifi da ke ruwa\nDomin wannan zan girmama sunanka\nDomin wannan ka isa yabo\n\nKorus\n\n2.\n Na gode Yesu na gode, ƙwarai ƙwarai\nNa gode Isa na gode, ƙwarai ƙwarai\nNa gode Ubangiji na gode, ƙwarai ƙwarai\nNa gode Isa na gode, ƙwarai ƙwarai.\n\nKorus\n\n",
      title: "415-Godiya Iye",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 416,
      lyric:
          "Godiya...ah, godiya ga Allah\nMu kawo godiyarmu\nA ga ba ya Allah.\n",
      title: "416-Godiya...ah, Godiya Ga Allah",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 417,
      lyric:
          "Haifuwar Yesu ta Sa Na Sami\n\n1.\n  Haifuwar Yesu ta sa na sami kwanciyar rai\n\nMata : (Na---sami ceto na, ta wurin Yesu (2x)\n\nZabaya :  (I—na da murna ya, domin na zama ta Yesu\n(Na---sami ceto na, ta wurin Yesu (2x)\n\nZabayo :  (To sai ki kama bakinki,domin ki sadu da Yesu\n\n2.\n Haifuwar Yesu ta sa na sami bege yau\n\n3.\n  Haifuwar Yesu ta sa na sami salama\n\n4.\n  Haifuwar Yesu ta sa na sami gafara\n\n",
      title: "417-Haifuwar Yesu ta Sa Na Sami",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 418,
      lyric:
          "1.\n Halleluya mu raira ma Ubangiji sabuwar waƙa.\nMu raira Yabonsa cikin taron jama’arsa.\nBari Isra’ila ya yi murna cikin wanda ya yi shi.\nƳan Sihiyona su yi murna cikin tsarkinsa.\n\nKORUS\nMu yabi sunansa sa rawa.\nMu yabi sunansa da murna.\nRaira yabai gareshi\nDa tambarin duma da giraya.\n\n2.\n Gama Ubangiji ya kan ji daɗin mutanensa.\nZa ya sa masu tawali’u jamali da ceto.\nBari tsarkakansa su yi kirari cikin ɗaukaka.\nSu yi rairawa don farin ciki bisa shimfiɗarsu.\n\nKorus\n\n3.\n Maɗaukakin yabai na Allah kasance baƙinmu.\nTakobi kuma mai kaifi biyu cikin hannuwanmu.\nDomin a hukunta sakaya bisa al’umai.\nHoro kuma mai tsanani a bisa mutane.\n\nKorus\n\n4.\n An ɗaure sarakunansu da manyan sarkoki.\nAn ɗaure hakimansu da maruruwa na ƙarfe.\nAn hukunta masu shari’a wadda aka hukunta.\nWannan daraja ta dukan tsarkakansa ce.\n\nKorus\n\n",
      title: "418-Halleluya Mu Raira",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 419,
      lyric:
          "KORUS\nHalleluya Yesunmu yana da rai (3x)\nZan yabe shi dan yana don rai\n\n1.\n Shi ne gaskiya shi ne hanya shi ne rai\nBa mai zuwa gun Uba sai ta wurin sa (2x)\n\nKorus\n\n2.\n Wasu alloli sun mutu ba su tashi ba\nAmma ga Yesunmu yau yana da rai (2x)\n\nKorus\n\n3.\n Yana da rai Yesun mu yana da rai (2x)\nZan yabe shi don yana da rai.\n\nKorus\n\n",
      title: "419-Halleluya Yesunmu Yana da Rai",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 420,
      lyric:
          "Idan Ka tambaye ni dalilin murnata,\nAlhamdulilahi.\nYesu ya bada ransa domin ya fanshe ni.\nAlhamdulilahi.\n\nAn shafe zunubi duk da jininYesu ne.\nYa tsarkake ni, ina girmama.\nZan bi shi dukan raina hidimarsa zan yi,\nAlhamdulilahi.\n\n",
      title: "420-Idan Ka Tambaye Ni Dalilin Murnata",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 421,
      lyric:
          "1.\n In ji Mai Cetona\nKai ba ka iya ba\nNi kaɗai Mai Cetonka\nZan biya laifinka.\n\nKORUS\nShi ya biya duk\nNi mai bashi ne\nShi ya zubda jininsa\nYa wanke zuciyata.\n\n2.\n Jinin Ubangijina\nJininsa ne kaɗai\nYa wanke zuciyata\nYa biya bashina.\n\nKorus\n\n3.\n Ikon Yesu shi kaɗai\nZai sake halina\nNi ban iya kome ba\nShi kaɗai Mai bada rai.\n\nKorus\n\n4.\n Ran da sai dawo dai\nZan tsaya gabansa\nBa zan ji tsoro ba\nDon ya biya laifina.\n\nKorus\n\n\n",
      title: "421-In Ji Mai Cetona",
      tune: "Jesus Paid it all/ I Hear the Saviour Say"),
  Hymns(
      author: "",
      favorite: 0,
      id: 422,
      lyric:
          "1.\n In na sami dukan kome na duniya\nWannan da amfani ne, in ba ni da ceto?\nA cikin zuciya in ba salama\nMe za a yi da kayan duniya?\nKo na sami duniya, amma ba ceto\nGwamma ba a haife ni da na shiga Jahanama.\n\nKORUS\nBa ni Yesu, O ba ni Yesu\nKullum, har abada, O ba ni Shi.\n\n2.\nKo na sami dukiya cikakkiya\nDa suna sannanu ga dukan mutane\nAmma babu bege ko wurin sabka\nIna amfaninsu a sa’annan?\nBa shakka Allah ba zai yi wargi ba.\nYanzu ka taimake ni in yi tunani.\n\nKorus\n\n3.\nDuk walaha ce in ba tare da Yesu\nƁatace ne ni cikin zunubaina\nIn har abada ba ganin haske\nDufu kaɗai da zafin kuka\nKo na zama nan ba bukatar Yesu\nRan da na mutu fa, ina dabarata?\n\nKorus\n\n4.\n Murna ba misalinta wurinsa\nMaganin baƙin ciki, ɓa’a azaba\nBa zunubi da ya ƙi yin wanke\nKo wahala da ba za ya ji.\nIn na zama ni kaɗai da Yesu\nBa kome ba ne, shi ne bukatata.\n\nKorus\n\n",
      title: "422-In Na Sami Dukan Kome na Duniya",
      tune: "If I Gained the World, but Lost the Saviour"),
  Hymns(
      author: "",
      favorite: 0,
      id: 423,
      lyric:
          "1.\n In na yi tunani sosai\nKan zuwan Ubangijina\nDa yadda ni zan tsaya dai\nKo murna ko kuwa hawaye.\n\nKORUS\nYesuna, Yesuna,\nKa tsarkake ni tun yanzu,\nKada ka rage kome nan\nYa zama kaya na Shaiɗan\nYesuna, Yesuna\nKa tsarkake ni tun yanzu.\n\n2.\n Kada a ranar zuwansa\nYa iske ni da zunubi\nLalle in ɓoye fuska ta,\nIn ce, “Ya Allah, me zan yi?”\n\nKorus\n\n3.\n Ran da ka kira ni in zo,\nDomin ka gwada aikina,\nIdan wuta ta cinye duk\nIna misalin kukata ?\n\nKorus\n\n4.\n Ya Yesu, ji addu’ata\nKa ba ni  ƙargin zuciya\nIn kama aikinka sosai\nIn tarbe ka da daɗin rai.\n\nKorus\n\n\n\n",
      title: "423-In Na Yi Tunani Sosai",
      tune:
          "O happy day that fixed my choice/ O happy day that fixed my choice/ Rimbault"),
  Hymns(
      author: "",
      favorite: 0,
      id: 424,
      lyric:
          "KORUS\nIna farin ciki tare da waɗanda suka ce mani\nKu zo mu je gidan Ubangiji. (3x)\nƘafafun mu suna tsaye\nCikin ƙofofinki Urushalima.\n\n1.\n Kursiyai ma, nan suke\nKursiyai na shari’a\nKursiyai na gidan sarki\nDauda suma nan suke.\n\nKorus\n\n2.\n Kabilu duka nan suke\nKabilu na Ubangiji\nDomin su ɗaukaka sunansa\nMai tsarki bisa ga dokokinsa.\n\nKorus\n\n3.\n Ku yi addu’a\nDomin salamar Urushalima\nWaɗanda suke ƙaunarki\nUrushalima su yi addu’a.\n\nKorus\n\n\n",
      title: "424-Ina Farin Ciki",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 425,
      lyric:
          "KORUS\nIna so, ina so; in san Yesu, in san Yesu\nIna so, ina so; in san Yesu, da ikon tashinsa\n(Solo : “Ikon Yesu”)\nYa fi na kowa. (6x)\nA cikin duniyan nan\n\n1.\n Akwai sunan nan mai daɗi, wanda ba mai kamarsa\nWato sunan Ubangiji, begen dukan masu bi\nSunan nan ya buɗe ƙofa, zuwa Allah Ubansa\nBanda sunan Ubangiji, Allah ba ya jin addu’a\n(Solo : Sunan Yesu)\nYa fi na kowa (6x)\nA cikin duniya nan.\n\nKorus\n\n2.\n Tunda na ji sunan Yesu, murna na ke ji sosai\nCikinsa a ke sujada, cikinsa a ke addu’a\nCikin sunan nan mai girma, a ke samin ceto fa\nCikinsa a ke sujada, cikinsa a ke addu’a\n(Solo : Sunan Yesu)\nYa fi na kowa (6x)\nA cikin duniyan nan\n\nKorus\n\nCategory:  Sunayen Yesu\n; in san Yesu, in san Yesu\nIna so, ina so; in san Yesu, da ikon tashinsa\n(Solo : “Ikon Yesu”)\nYa fi na kowa. (6x)\nA cikin duniyan nan\n\n1.\n Akwai sunan nan mai daɗi, wanda ba mai kamarsa\nWato sunan Ubangiji, begen dukan masu bi\nSunan nan ya buɗe ƙofa, zuwa Allah Ubansa\nBanda sunan Ubangiji, Allah ba ya jin addu’a\n(Solo : Sunan Yesu)\nYa fi na kowa (6x)\nA cikin duniya nan.\n\nKorus\n\n2.\n Tunda na ji sunan Yesu, murna na ke ji sosai\nCikinsa a ke sujada, cikinsa a ke addu’a\nCikin sunan nan mai girma, a ke samin ceto fa\nCikinsa a ke sujada, cikinsa a ke addu’a\n(Solo : Sunan Yesu)\nYa fi na kowa (6x)\nA cikin duniyan nan\n\nKorus\n\n\n",
      title: "425-Ina So, Ina So",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 426,
      lyric:
          "1.\n Ina tafiya da Ubangiji\nShina bishe ni ga duk hanyoyi\nZama da shi ba kamar na mutum\nMurna, salama da kwanciyar rai.\n\nKORUS\nNa fa son wannan zama da irin na duniya\nDa zaman nan na banza da yabon mutane\nMarmarina in gamshe shi kowane lokaci\nMuna tafiya bisa, bisa zuwa gidanmu.\n\n2.\n Ga shi nan kusa, Mai taimakona\nShina riƙe da hannuna dama\nKullum fa shina ta ƙarfafata\nLokacin murna ko na wahala.\n\nKorus\n\n3.\n Har ya ɗauke ni, ya kai ni sama\nIna tafiya da Ubangiji\nMurna ta cika, za ga fuskarsa\nDa duk annabawa da duk masu bi.\n\nKorus\n\n\n\n",
      title: "426-Ina Tafiyar da Ubangiji",
      tune: "Walking with Jesus"),
  Hymns(
      author: "",
      favorite: 0,
      id: 427,
      lyric:
          "1.\n Isowar Yesu a duniyan nan\nAl'ummai za su ji tsoro.\nZa su ce ma duwatsu da fannu,\nƁoye mu daga fuskarsa\n\nKORUS\nWannan ƙarshen ranar Allah ce.\nWanene za ya tsaya a ranan nan, m’m,\nKo kun tuba da toka a ranan nan, m’m,\nZa a ce babu dama .\n\n2.\n Za ya  ce, “Na aiko Yesu Kiristi”.\nKu kun ƙi ku karƃe shi.\nKun giciye shi a bisa itace,\nDomin ba ku ƙaunarsa.\n\nKorus\n\n3.\n Ni ma ranar ramawata ta zo.\nZan saka ma kowa.\nBisa gwalgwadon aikin da ya yi\nDa kuma ladansa.\n\nKorus\n\n4.\n Ranan nan ba cewa, “Ya Allahmu,\nKai ka zalunce mu”,\nShi kuma za ya ce,  “A'a mutane,\nNi ban zalunce ku ba ”.\n\nKorus\n\n5.\n Za ku ce “Mun tubu, ya Allahmu”\nShi za ya ce, “ba dama”.\nZa ku ce, “ka yafe mu, ya Allah”.\nZa ya ce, “babu dama”.\n\nKorus\n\n6.\n Za ye ce “Jinin Yesu na ba da shi,\nDomin zunubanku.”\nWannan ya isa domin fansarku\nKu kun ƙi bangaskiya. »\n\nKorus\n\n7.\n Na gama, na gama, kun shiga wuta nan.\nDa na shirya ma Shaiɗan.\nWayyo ! Allah mun shiga azaba.\nKu kun shiga ba tausayi.\n\nKorus\n",
      title: "427-Isowar Yesu A Duniyan Nan",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 428,
      lyric:
          "Jaraba ta Shaiɗan, ƙi yarda da shi\nKowace nasara za ta ƙarfafa ka.\nYi yaƙi ba fashi, ƙi tsohon mutum\nKa zan duba ga Yesu, Shi zai kai ka gaba.\n\nKORUS\nRoƙi taimakon Yesu\nҠarfin hali, nasara\nShi zai riƙe hannunka\nShi zai kai ka gaba.\n\n\n",
      title: "428-Jaraba Ta Shaiɗan, Ƙi Yarda da Shi",
      tune: "Yield Not to Temptation"),
  Hymns(
      author: "Thomas da Aichatou Johnson",
      favorite: 0,
      id: 429,
      lyric:
          "KORUS\nJe shaida bisa tudu,\nCikin duniya da ko’ina.\nJe shaida bisa tudu,\nAn haifi mai ceto\n\n1.\n Makiyaya na tsaro\nGarken su da dare.\nSun dubi cikin sama\nSun ga haske ƙwarai.\n\nKorus\n\n2.\n Makiyaya sun razana\nA wurin da suke.\nMala’iku suna rera\nShelar  ‘Bishara ne’.\n\nKorus\n\n3.\n “ A cikin garin Dawuda\nAn haifi jaririri.\nShi ne mai ceton duniya\nƘaunar Ubangiji“.\n\nKorus\n\n",
      title: "429-Je Gaya Bisa Tudu",
      tune: "Go Tell it on the Mountain"),
  Hymns(
      author: "",
      favorite: 0,
      id: 430,
      lyric:
          "Je gaya masu, je gaya masu\nYesu ya mutu domina (2x duka)\n\nJe gaya masu, je gaya masu\nZa ya sake dawowa.\n",
      title: "430-Je Gaya Masu",
      tune: ""),
  Hymns(
      author: "Thomas da Aichatou Johnson",
      favorite: 0,
      id: 431,
      lyric:
          "1.\n Jiya, ya mutuwa\nYesu, Yesu.\nJiya ya mutuwa, ya mutuwa\nWannan ba shakka.\n\n\n2.\n Yau, yana raiyuwa\nYesu, Yesu.\nYau, yana raiyuwa, yana raiyuwa\nYa yi nassara\n\n3.\n Gobe, zai zo ga mu\nYesu, Yesu.\nGobe, zai zo ga mu, zai zo ga mu\nMun sa zuciya\n\n\n4.\n Aboki, ka san shi?\nYesu, Yesu.\nAboki, ka san shi?, ka san shi?\nYesu cetona\nYesu cetona\nYesu cetona\n\n",
      title: "431-Jiya, Yau, Gobe",
      tune: "Yesterday, Today and Tomorrow"),
  Hymns(
      author: "",
      favorite: 0,
      id: 432,
      lyric:
          "KORUS\nKa lura ɗan’uwa ka lura\nBiyayya ta fi haɗaya\nJin magana kuma ya fi kitsen raguna\nKa lura.\n\n1.\n Ko Ubangiji na murna da yawan haɗayu\nKo Ubangiji na murna da yawan sacrifice\nBiyayya ta fi haɗaya\nJin magana kuma ya fi kitsen raguna, ka lura.\n\nKorus\n\n2.\n Ko Ubangiji na murna da yawan zakka\nKo Ubangiji na murna da yawan zuwa Ekklesiya\nBiyayya ta fi haɗaya\nJin magana kuma ya fi kitsen raguna, ka lura.\nKorus\n\n3.\n Tayaswa na kama da zunubi maita\nTaurin kai kamar tsafi da serafin (ko talakai)\nBiyayya ta fi haɗaya\nJin magana kuma ya fi kitsen raguna, ka lura.\n\nKorus\n\n\n",
      title: "432-Ka Lura",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 433,
      lyric:
          "Ka ɗaure shan wuya tare da ni\nKa ɗaure shan wuya tare da ni\nKamar mayakin kirki na Yesu\nKa ɗaure shan wuya tare\nKristi da ni.\n\n\n",
      title: "433-Ka Ɗaure Shan Wuya Tare Da Ni",
      tune: "The Lord Will Make a Way"),
  Hymns(
      author: "",
      favorite: 0,
      id: 434,
      lyric:
          "Kada ku ɓata\nBa a yi ma Allah ba’a ba\nGama iyakar abin da mutum ya shibka\nZa a girbe shi.  Amin.\n\n\n",
      title: "434-Kada ku Ɓata",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 435,
      lyric:
          "1.\n Kada zuciyarku ta ɓaci\nIn ji Yesu Kristi.\n\n2.\n Gama za shi sama\nZa ya shirya wuri can.\n\n3.\n Za ya sake zuwa\nDomin ya karɓe mu.\n\n4.\n Mu shirya zukatanmu\nDomin ranar zuwansa.\n\n5.\n Kai, mai bi a karkace\nSai ka gyara zamanka.\n\n6.\n Kau da duka tsafinka\nIdan kai mai bi ne.\n\n7.\n Idan yau da tsafin nan\nAllah yana kishinsa.\n\n8.\n Idan kana da laya\nAllah yana kishinsa.\n\n9.\n Rabu da waɗannan duka\nKo dogara ga Allah.\n\n10.\n Sai ka fara bidan\nMulkin Allah yanzu.\n\n11.\n Domin ka sami rai\nCikin Yesu Mai Ceto.\n\n12.\n Za mu zamna can a sama\nCikin gidan Allah.\n\n13.\n Daɗin, daɗi za mu ji\nCan tsare da Yesu.\n\n14.\n Murna, murna za mu yi\nCan a gidan Allah.\n",
      title: "435-Kada Zuciyarku Ta Ɓaci",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 436,
      lyric:
          "KIRA:                   AMSA:\n1.\n Kafin ya hau sama....ya koya masa abubuwa\nWadada zasu faru....a kwanakin karshe\nIllimi zata karu....son kuɗi zata karu\nYaya zasu zama da taurin kai....ga iyayensu\nKa’a yi yakoki....a karshen duniya\nAmma mu masubi....muyi zaman tsaro (2x)\n\nKORUS\nWai yo….tuna fa…zamanin nan ta karshe ce\nDawowa\t(Bass) Yesunmu….Hakika yayi kusa\nWai yo…ah..ha….Ƴan’uwa sai muyi lura\n\n\n2.\n Jin dadin duniya nan....ya dauki hankalinmu\nWasu sun malake ta....sun manta da mutuwa\nSai shagalin duniya....nan kasar kwanakin Nuhu\nWasu suna takama....suna iko da duniya\nRanda kwana ta kare....ai ya abin tausayi (2x)\n\nKorus\n\n3.\n Kome da muke aikata.....a wannan duniya\nAdalci ko mugunta....akwai ranata karshe\nWata rana farat ɗaya....Mallam sai labari\nAllah mahalicinmu....ba’a yi masa ba’a\nAbin da mun shuka....lallai zamu girba (2x)\n\nKorus\n\n4.\n Ƴan’uwan masubi....muyi zaman tsaro\nBamu san rana ko sa’a....randa Yesu zaya zo\nMike bagaskiyanmu....banda sakaci ba\nKada wannan rana....fata hume mu\nKarshen abu duk....inji Sarkin Suleyman\nMu ji tsoron Allah....mu aika ta nufinsa (2x)\n\nKorus\n\n",
      title: "436-Kafin Ya Hau Sama",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 437,
      lyric:
          "KORUS\nKai ne mai zuwa nan\nKo mu jira wani\nKo kai ne shafaffen nan na Allah\nKai ne Almasihu ko mu jira wani.\n\n1.\n Ku je ku shaida, ku je ku faɗi\nAbin da kuka gani da abin da kuka ji\nGa makafi na gani, kurame na ji\nAlbarka ga wanda bai samu sanadin tuntuɓe wurina.\nKorus\n\n2.\n Ku je ku shaida, ku je ku faɗi\nAbin da kuka gani da abin da kuka ji\nGa guragu na tafiya, kutare na tsarkaka\nAlbarka ga wanda bai samu sanadin tuntuɓe wurina.\nKorus\n\n3.\n Ku je ku shaida, ku je ku faɗi\nAbin da kuka gani da abin da kuka ji\nGa matattu na tashi, bishara ga talakawa\nAlbarka ga wanda bai samu sanadin tuntuɓe wurina.\n\nKorus\n\n\n\n",
      title: "437-Kai Ne Mai Zuwa Nan",
      tune: ""),
  Hymns(
      author: "Thomas da Aichatou Johnson",
      favorite: 0,
      id: 438,
      lyric:
          "Kana can inda sun giciye Yesu?\nKana can inda sun giciye Yesu?\nOh-oh-oh-oh\nWani loto, ina yi ƃari, ƃari, ƃari\nKana can inda sun giciye Yesu?\n\nKana can, inda sun kafa jikinsa?\nKana can, inda sun kafa jinkinsa?\nOh-oh-oh-oh\nWani loto, ina yi ƃari, ƃari, ƃari\nKana can, inda sun kafa jinkinsa?\n\nKana can, inda sun sa shi a itace?\nKana can, inda sun sa shi a itace?\nOh-oh-oh-oh\nWani loto, ina yi ƃari, ƃari, ƃari\nKana can, inda sun sa shi a itace?\n\nKana can inda sun soke gefensa?\nKana can inda sun soke gefensa?\nOh-oh-oh-oh\nWani loto, ina yi ƃari, ƃari, ƃari\nKana can inda sun soke gefenshi?\n\nKana can, inda ya shiga kushewa?\nKana can, inda ya shiga kushewa?\nOh-oh-oh-oh\nWani loto, ina yi ƃari, ƃari, ƃari?\nKana can, inda ya shiga kushewa\n\nKana can, inda ya hita kabari?\nKana can, inda ya hita kabari?\nOh-oh-oh-oh\nWani loto, ina yi ƃari, ƃari, ƃari?\nKana can, inda ya hita kabari?\n\n\n",
      title: "438-Kana Can ? (bitar Kana Nan)",
      tune: "Were You There ?"),
  Hymns(
      author: "",
      favorite: 0,
      id: 439,
      lyric:
          "1.\n In kana da kuɗi, sai girman kai\nKana dubin fa ka fi kowa\nWanda ba shi da kana dubin ka fi shi\nTuna fa ƙarshen mu guda ne.\n\nKORUS\nMine ne ka samu oh ya ɗan Adam\nWanda Allahnmu bai baka ba\nDomin haka kawas da girman kai\nKa miƙa kanka ga Allah.\n\n2.\n In kana da illimi sai girman kai\nKana dubin kowa jahili\nWanda ba shi da illimi ka raina shi\nTuna fa ƙarshen mu guda ne.\n\nKorus\n\n3.\n In kana da baiwa sai girman kai\nKana doro kana takama\nWanda ba shi da kana dubin ka fi shi\nTuna Ubangijinmu guda ne.\n\nKorus\n\n4.\n Allah ya bada baiwa ga kowane ɗayanmu\nDomin aikinsa ya ci gaba\nAbin da Allah ya baka ka yi aikinsa da shi\nGama Ubangijinmu guda ne.\n\nKorus\n\n",
      title: "439-Kana da Kuɗi",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 440,
      lyric:
          "1.\n Kana nan da aka giciye Yesu?\nKana nan da aka giciye Yesu?\nO O O O\nWani loto yakan sa in ji tsoro, tsoro, tsoro,\nKana nan da aka giciye Yesu?\n\n2.\n Kana nan da aka kafa shi a itace?\nKana nan da aka kafa shi a itace?\nO O O O\nWani loto yakan sa in ji tsoro, tsoro, tsoro,\nKana nan da aka kafa shi a itace?\n\n3.\n Kana nan da aka soke shi a gefensa?\nKana nan da aka soke shi a gefensa?\nO O O O\nWani loto yakan sa in ji tsoro, tsoro, tsoro,\nKana nan da aka soke shi a gefensa?\n\n4.\n Kana nan da aka sa shi a kabari?\nKana nan da aka sa shi a kabari?\nO O O O\nWani loto yakan sa in ji tsoro, tsoro, tsoro,\nKana nan da aka sa shi a kabari?\n\n5.\n Kana nan da ya tashi daga matattu?\nKana nan da ya tashi daga matattu?\nO O O O\nWani loto zan tā da muryar yabo, yabo, yabo,\nKana nan da ya tashi daga matattu?\n\n",
      title: "440-Kana Nan ?",
      tune: "Were You There (when they crucified my Lord)?"),
  Hymns(
      author: "",
      favorite: 0,
      id: 441,
      lyric:
          "KORUS\nKasa kunne ga gargaɗin Allah yana gargaɗin masu bi\nKada ku yi tarayya fa tare da marasa bangaskiya\nKu fito daga cikinsu ku ware fa in ji Yesu\n(Mutum 1 : “Kada ku”) taɓa kowane abu marar tsarki in karɓe ku\n(Mutum 1 : “Ku zo ku”)\n\n1.\n Zama yaya maza da mata gareni\nIn ji Ubangiji shi mai iko duka\nIna gamin haikalin Allah da gumaka\nIna rabon mai bada gaskiya kuma ?\nWurin mara bada gaskiya in ji Yesu Mai Ceton duniya\n(Solo : “Idan fa”) mutum yana cikin Almasihu Yesu\nTsofoffin ayyuka duka sun shuɗe fa\nSun zama sabobbi cikin Yesu.\n\nKorus\n\n2.\n Ayyukanmu a bayyane a wurin Allah mai iko duka\nFasakanci da kazamata Allah ba ya jin daɗin irinsu\nTsatsaguwa, kishi kishi, magabtaka da husuma\n(Solo: “Irin su”)\nBa za su shiga mulkin Allah Ubangijinmu ba\n(Solo: “Don haka”)\n\nKorus\n\n3.\n Ekklesiyar Almasihu mu bar aikata zunubi fa\nDomin Allah Ubangiji sarkin saka ba ya kusantuwa\nShi wanda zakin idonsa ba ya kallon shirinka\n(Solo: “Abinda”) Allah ba ya so shi ne zunuban da mu ke yi\n(Solo : “Lallai ne”)\n\nKorus\n\n",
      title: "441-Kasa Kunne Ga Gargaɗin Allah",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 442,
      lyric:
          "1.\n Kasa kunne ga labarinmu\nDa cikin bauta mu ke,\nYesu ya zo daga can sama,\nYa cece mu, dukanmu.\n\nKORUS\nWa ya wanke zunubai ?\nYesu ne akan giciye\nMe ya yi mana? Ya mutu,\nIna ya ke ?\nYana sama, yana roƙo.\n\n2.\n Ba mala’iku da za ya fi mu,\nKome daraja tasa,\nAn giciye shi, an rena shi,\nƊaya ne cikin uku.\n\nKorus\n\n3.\n Za ka bada ranka gare shi\nKa durƙusa gabansa\nKai, kuma za ka ƙamnace shi\nShi kuma zai cece ka.\n\nKorus\n\n",
      title: "442-Kasa Kunne Ga Labarinmu",
      tune: "O, Listen to the Wondrous Story"),
  Hymns(
      author: "",
      favorite: 0,
      id: 443,
      lyric:
          "1.\n Kilga kwana mu ke yi,\nKullum kwanan duniya\nBakwai bakwai bi da bi\nLahadi in ce babba.\nGa mu nan, mun taru yau.\nSai mu tuna ta da kyau\nGa mu nan, mun taru yau\nSai mu tuna ta da kyau.\n\n2.\n Murnar masu bi su san\nWanda aka kashe shi\nUnangiji yana nan\nNasara ran na ya yi,\n[Ba ya cikin matattu\nRayayye ne shi yanzu.]2x\n\n3.\n Yau albarka mu ke so\nWadda Allah ya kan sa\nIrin ta Mai Taimako\nҠamna ce a zuciya.\n[Ko’ina a duniya\nIkonsa ya bayyana.]2x\n\n\n",
      title: "443-Kilga Kwana Mu Ke Yi",
      tune: "Safely Through Another Week"),
  Hymns(
      author: "",
      favorite: 0,
      id: 444,
      lyric:
          "Ko ba ku sani ba, ku masu bi,\nKo ba ku sani ba\nJikinku haikali ne, (jikinku haikali ne)\nNa Ruhu Mai Tsarki.\n\nKORUS\nWanda ya ke cikin ku,\nWanda kun karɓa daga wurin Ubanku\nKu kuwa ba na kanku ba, (ku kuwa ba na kanku ba)\nGama aka saye ku da tamani fa.\nKu ɗaukaka Allah fa cikin jikinku.\n\n\n",
      title: "444-Ko Ba Ku Sani Ba, Ku Masu Bi",
      tune: "Bring Your Vessels, Not a Few ?/Are You Looking For the Fullness"),
  Hymns(
      author: "",
      favorite: 0,
      id: 445,
      lyric:
          "1.\n Ko kun san dalilin da ya sa mu ke murna a yaya\nHaifuwar Yesu ce ta sa mu ke yin murna sosai.\n\nKORUS\nYau ne ranar haifuwar Mai Ceto\nDuk mutanen duniyar na murna.\nHalleluya ga maɗaukaki domin cetonmu ya bayyana.\n\n2.\n An haifi mana Mai Ceto a cikin sakarkari,\nYa zo cikin duniya nan misalin ɗan talaka.\n\nKorus\n",
      title: "445-Ko Kun San Dalilin",
      tune: "Behold What Manner of Love the Father"),
  Hymns(
      author: "",
      favorite: 0,
      id: 446,
      lyric:
          "Ko ni ba zan tafiya da ƙafafu\nHawa da dawaki\nHarba da bindiga\nKo ni ba zan hau jirgin sama ba\nNi sojin Allah ne.\n\nKORUS\nNi sojin Allah ne,\nNi sojin Allah ne.\nNi ba zan hau jirgin sama ba\nNi sojin Allah ne.\n\n",
      title: "446-Ko Ni Ba Zan Tafiya da Ƙafafu",
      tune: "I’m in the Lord’s Army/Old Grey Mare"),
  Hymns(
      author: "",
      favorite: 0,
      id: 447,
      lyric:
          "1.\n Kowace rana akwai jaraba\nzuwa ga dukan masu binsa\nDuk da hakanan muna aniya,\nba za mu ba Shaiɗan dama ba.\n\nKORUS\nAn jima za mu riƙa nasara.\nBabu jaraba da za ta zo.\nMu tada muryar, mu yi waƙarmu.\nBa za mu ba Shaiɗan dama ba.\n\n2.\n Lokacin da mutuwa ta sabko\nta ɗauki ƴaƴan tumakinmu,\nKada wannan ya sa mu ji tsoro.\nBa za mu ba Shaiɗan dama ba.\n\nKorus\n\n3.\n Bari mu mutu cikin hannunsa,\nmu riƙe bangaskiyarsa sosai,\ndomin mu gaji mulki na sama\nwanda Yesu yake shiryawa.\n\nKorus\n\n4.\n Mu tuna da ranar zuwan Yesu.\nDuk masu bi za su yi murna,\nkowace gwiwa za ta rusuna,\nmarasa bi za su yi kuka.\n\nKorus\n",
      title: "447-Kowace Rana Akwai Jaraba",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 448,
      lyric:
          "Koya mani addu’a, ya Ubangiji\nWannan marmarina, cika mani shi.\nIna son nufinka kowace rana\nKoya mani addu’a, ya Ubangiji.\n\nRayuwa cikina, ni matace,\nKullum har abada, ya Ubangiji.\nCika nufinka ta wurina\nHar ran da za ka yi kirana.\n\n\n",
      title: "448-Koya mani addu’a, ya Ubangiji",
      tune: "Teach Me to Pray Lord"),
  Hymns(
      author: "",
      favorite: 0,
      id: 449,
      lyric:
          "1.\n Idan mutanena waɗanda ake kira da sunana\nSun bar miyagun ayyukansu sun zo gareni\nNi zan ji in warkarda su\nNi zan ji in albarkace su.\n\nKORUS\n(Solo: “Ku dawo”)\nKu dawo (2x)\nDon mi fa za ku mutu.\n(bis)\n\n2.\n Hannuwan Ubangiji ba su gajarta ba da basu ceto\nKunnuwansa ba su yi nauyi\nBa da ba su jin addu’a\nZunubanmu sun hana Allah ya ji mu.\n\nKorus\n\n3.\nAbokin gaban mu yana so ya hallaka mu\nMu dawo wurin Ubangiji Allah mu roƙi gafara\nShi zai ji ya yi mana gafara\nShi zai ji ya bamu nassara\n\nKorus\n\n\n\n",
      title: "449-Ku Dawo",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 450,
      lyric:
          "Ku kore su, ku tone su\nZomo huɗu cikin masara\nSata, kishi, ƙeta, son kai\nKore duka daga zuciyarka.\n\n",
      title: "450-Ku Kore Su, Ku Tone Su",
      tune: "Rabbits in the Cornfield/Root Them Out"),
  Hymns(
      author: "",
      favorite: 0,
      id: 451,
      lyric:
          "1.\n Ku zo ku kama hanya zuwa gidan Allahnmu\nKu shiga jirgin Yesu, ba za ku ɓace ba\nKu zo ku kama hanya, ku bar zunubanku!\nTa wurin jinin Yesu, ku sami cetonku.\n\n2.\n Shi ne babban matuki, Shi ne Mai Cetonmu\nYa bada ransa duka don dukan ɓatattu.\nZai kai ku gidan Allah, ba za ku ɓace ba!\nZai cika ku da murna, rai na har abada.\n\n",
      title: "451-Ku Shiga Jirgin Yesu",
      tune: "Happy-Day Express/We’re Going to a Mansion"),
  Hymns(
      author: "",
      favorite: 0,
      id: 452,
      lyric:
          "1.\n Ku tashi dai mutane\nKu bi Ubangiji\nKu tada tutar nasa\nTuta na shaidarsa\nZai ba mu nasara kuwa\nBisa magabcin mu\nHar dukan mutanenmu\nSu san Mai Cetonmu.\n\n2.\n Ku tashi dai mutane\nKu yi biyayya kuwa\nKu shiga yaƙin Kristi\nKu bi Maganarsa\nKada ku koma baya\nAmma ku ƙarfaffa\nDon duniya za ta shuɗe\nDuk da kwaɗayinta.\n\n3.\n Ku tashi dai mutane\nKu shaida Bishara\nTa wurin ikon Yesu\nKu nuna ƙamnarsa\nKu yafa sulken kirki\nKu yi addu’a kuwa.\nHar ran da Yesu Kristi\nZai ka mu gidansa.\n\n\n",
      title: "452-Ku Tashi Dai Mutane, Ku Bi Ubangiji",
      tune: "Stand up, Stand up for Jesus/ Morning Light"),
  Hymns(
      author: "",
      favorite: 0,
      id: 453,
      lyric:
          "1.\n Ku tashi mu falka mu bar barci (2x)\nMasu bi ku tashi mu falka mu bar barci\nKu tashi mu falka mu masu bi yau\nKu tashi mu falka mu bar barci ) (2x)\n\n2.\n Sun bar aikin Allah suna barci (2x)\nMasu bi mun bar aikin Allah muna barci\nMun bar aikin Allah masu bi fa yau\nMun bar aikin Allah muna barci.\n\n3.\n Mun bar aikin Allah muna barci (2x)\nMasu bi mun bar aikin Allah muna barci\nMun bar aikin Allah masu bi fa yau\nMun bar aikin Allah muna barci.\n\n4.\n Sun bar bishara suna barci \t(2x)\nPastoci sun bar bishara suna barci\nSun bar bisharar Allah mai iko\nSun bar bishara suna barci.\n\n5.\n Sun bar zumunta suna barci (2x)\nMataye sun bar zumunta suna barci\nSun barzumunta matayen mu yau\nSun bar zumunta suna barci.\n\n6.\n Mu tashi ga aiki mu bar barci (2x)\nMasu bi mu tashi ga aiki mu bar barci\nMu tashi ga aiki, aikin bishara\nMu tashi ga aiki mu bar barci.\n\n",
      title: "453-Ku Tashi Mu Falka Mu Bar Barci",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 454,
      lyric:
          "KORUS\nKu yi sowa farin ciki, duniya duka\nGa Ubangiji gama nagari ne shi.\n\n1.\n Ku yi masa bauta da farin zuciya\nKu zo gabansa da rerawa\nKu sani Ubangiji shi ne Allah.\nShi ne yayi mu.\n\nKorus\n\n2.\n Ku sani Ubangiji ne ya yi mu\nBa mu ne muka yi kanmu ba\nMu ne mutanensa\nTumakin makiyaya tasa.\n\nKorus\n\n3.\n Ku shigo ƙofofinsa da godiya\nCikin harabunsa da rerawa\nKu yi masa godiya\nKu albarkaci sunansa\n\nKorus\n\n4.\n Gama Ubangiji nagari ne shi\nJinkansa madawami ne\nAmincinsa ya tabbata\nDaga tsara zuwa tsararaki.\n\nKorus\n\n\n",
      title: "454-Ku Yi Sowa Farin Ciki",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 455,
      lyric:
          "1.\n Ubangijinmu mai ceto ne\nKu yi sowa ta murna. (2x)\n\nKORUS\nKu bauta Ubangiji da farin zuciya,\nKu zo gabansa da rairawa.\n\n2.\n Mu mutanensa tumakinsa,\nKu yi sowa ta murna. (2x)\n\nKorus\n\n3.\n Gama Ubangiji nagari ne\nKu yi sowa ta mura. \t(2x)\n\nKorus\n\n4.\n Yi masa godiya, albarkaci sunansa,\nKu yi sowa ta murna. (2x)\n\nKorus\n\n5.\n Ku mutane duka mu yabe shi,\nKu yi sowa ta murna. (2x)\n\nKorus\n",
      title: "455-Ku Yi Sowa Ta Murna",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 456,
      lyric:
          "Ku zo mu bi Mai Ceto\nKo da shi ke duniya na kiranku,\nShi ne ya bada ransa\nDon ya cece mu ya ba mu sabon rai\nWata rana za mu je\nKu zamna wurinsa\nYa kamata dai mu yi aniya cikin aikinsa\nKu zo mu bi Mai Ceto\nSa’anan mu yi murna har abada.\n\n\n\n",
      title: "456-Ku Zo Mu Bi Mai Ceto",
      tune:
          "Let’s Be True to Jesus (Country & Western Gospel Hymnal, Volume 5.\n"),
  Hymns(
      author: "",
      favorite: 0,
      id: 457,
      lyric:
          "(Kira da amsa)\n(Duka)Ku zo mu tafi wurinsa, Yesu ne Ɗan Allah\nShi ne ya panshe mu da jininsa\nYesu Ruhullahi, Shi ne Ruhun Allah\nWanda ya panshe mu da jininsa.\n\nK:  Musulmi da arna duk, ku zo mu tafi wurinsa.\nA: Yesu ne Ɗan Allah, Shi ne ya panshe mu da jininsa.\n\nK:  Turawa da Larabawa, ku zu mu tafi wurinsa\nA: Yesu ne Ɗan Allah, Shi ne ya panshe mu da jininsa.\n\nK:  Yesu Almasihu shi ya bada ransa, dalilinmu.\nA: Yesu ne Ɗan Allah, Shi ne ya panshe mu da jininsa.\n\nK:  Mu mutanen Yesu sai mu bada ranmu, dalilinsa.\nA: Yesu ne Ɗan Allah, Shi ne ya panshe mu da jininsa.\n\nK:  Kai fa ɗanuwanmu sai ka bada ranka, dalilinsa.\nA: Yesu ne Ɗan Allah, Shi ne ya panshe mu da jininsa.\n\nK:  Ke fa, ƴaruwanmu sai ki bada ranki, dalilinsa.\nA: Yesu ne Ɗan Allah, Shi ne ya panshe mu da jininsa.\n\nK:  Za mu raira waƙa, raira halleluya, dalilinsa.\nA: Yesu ne Ɗan Allah, Shi ne ya panshe mu da jininsa.\n\nK:  Sai mu tada murya, sai mu tada murya, dalilinsa.\nA: Yesu ne Ɗan Allah, Shi ne ya panshe mu da jininsa.\n\nK:  Za mu ga Ubanmu, za mu ga Ubanmu, dalilinsa.\nA: Yesu ne Ɗan Allah, Shi ne ya panshe mu da jininsa.\n\nK:  Za ya ba mu tuta, za ya ba mu tuta, dalilinsa.\nA: Yesu ne Ɗan Allah, Shi ne ya panshe mu da jininsa.\n\nK:  Za ya ba mu mulki, za ya ba mu mulki, dalilinsa.\nA: Yesu ne Ɗan Allah, Shi ne ya panshe mu da jininsa.\n\nK:  Sai mu ɗebe shakka, sai mu ɗebe shakka, dalilinsa.\nA: Yesu ne Ɗan Allah, Shi ne ya panshe mu da jininsa.\n\nK:  Sai mu yi da himma, sai mu yi da himma, dalilinsa.\nA: Yesu ne Ɗan Allah, Shi ne ya panshe mu da jininsa.\n\nK:   Tabbata hakika, tabbata hakika, za ya ba mu mulki dalilinsa.\nA: Yesu ne Ɗan Allah, Shi ne ya panshe mu da jininsa.\n\n",
      title: "457-Ku Zo Mu Tafi Wurinsa, Yesu Ne Ɗan Allah",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 458,
      lyric:
          "1.\n Ku zo mutane duk\nKu furta laifofinku yau\nA gaban Yesu Mai Ceto,\nShi zai yi gafara .\n\n2.\n Idan da zafin kishi yau\nCikin masu bin Yesu.\nBa za su yi albarka ba\nIdan da kishin nan.\n\n3.\n Ƴanuwa, ku bar kishi\nKu bar ƙeta, ku bar ƙarya\nKu bar zina, ku bar gulma\nKu bi Mai Cetonmu.\n\n4.\n Idan da waɗannan abu\nA cikin zukatanmu yau\nMe za mu ce ma Yesu\nRan da mun kai sama?\n\n5.\n Shi zai ce ku tashi nan\nKu tashi nan, ku tashi nan\nShi zai ce ku tashi nan\nNi dai ban san ku ba.\n\n6.\n A ranan nan sai kumya\nKumya mar-iyaka\nSai kuka mai zafi kuwa\nDa cizon haƙora.\n\n7.\n Masu bi, mu yi anniya\nDomin ranar zuwansa\nZai ce da mu bayin kirki\nKu shiga murnarku.\n\n8.\n Taimake mu, ya Yesu\nKa bi da mu da Ruhunka\nDomin mu aika nufinka\nHar ran da za ka zo.\n\n9.\n Halleluya ga Yesu\nGa Yesu Mai Cetonmu.\nHalleluya ga Yesu, halleluya Amin\nGa Yesu Mai Ceto.\n\n",
      title: "458-Ku Zo Mutane Duk",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 459,
      lyric:
          "1.\n Ku zo, mu tafi yaƙin nan.\nYaƙin nan na Yesu ne.\nKada mu koma baya fa,\nAllah yana wajenmu.\n\n2.\n Idan mun yi musunsa,\nAl'ummai ma zo su yi.\nKu zare takobanku fa,\nO gaba za mu yi.\n\n3.\n Mu yi ma Allah godiya,\nMu ce Alhamdulilahi.\nMu dogara ga Yesu fa.\nShi ne tutar cetonmu.\n\n4.\n Wanda ya ƙi dogara ga Yesu\nHallaka zai yi,\nIdan ka tuba tun yanzu\nAkwai daman gafara.\n\n5.\n Idan ka yi shuru fa,\nRana tana wucewa.\nNa tuba dai, zan bi Yesu,\nYesu ne mai cetona.\n\n6.\nAllah shi kai mu lafiya,\nAllah shi kai mu lafiya,\nMu ce \"Amin\", mu ce \"Amin\".\nMu ce \"Amin\", mu ce \"Amin\".\n",
      title: "459-Ku Zo, Mu Tafi Yaƙin Nan",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 460,
      lyric:
          "1.\n Kyautar Allah, ceto ne fa\nCeto ne fa, ceto ne fa.\nKyautar Allah, ceto ne fa\nZuwa mutane (duka 2x)\n\nZuwa mutane, zuwa mutane (Halleluya)\nKyautar Allah, ceto ne fa\nZuwa mutane\n\n2.\n Ya aike mu manzaninsa\nManzaninsa, manzaninsa\nYa aike mu manzaninsa\nWurin mutane. (duka 2x)\n\nWurin mutane,wurin mutane (Halleluya)\nYa aike mu manzaninsa\nWurin mutane.\n\n\n",
      title: "460-Kyautar Allah, Ceto Ne Fa",
      tune: "I will make you fishers of men"),
  Hymns(
      author: "",
      favorite: 0,
      id: 461,
      lyric:
          "Maganar Allah kamar\nMai pashen dutse ne\nDa takobi mai ƙaifi biyu\nDa madubin fuskarmu.\nFitila domin hanya\nMai nuna adalci\nI, shi Maganar Allah ne\nLittafi Mai Tsarki.\n\n\n\n",
      title: "461-Maganar Allah Kamar Mai Pashen Dutse Ne",
      tune: "The Books of Books"),
  Hymns(
      author: "",
      favorite: 0,
      id: 462,
      lyric:
          "Mai ceto na\nMai ceto na\nMai ceto naaaa ba ya bar ni baya ba\n\n",
      title: "462-Mai Ceto Na",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 463,
      lyric:
          "Mai Ceto, Mai Taimako ne.\nMai Ceto, Mai Taimako ne.\nIn ka kira, Shi zai ji.\nTaimakonka kuwa zai yi,\nMai Ceto, Mai Taimako ne.\n\n",
      title: "463-Mai Ceto, Mai Taimako Ne",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 464,
      lyric:
          "KORUS\nMai tsarki, mai tsarki, Allah mai tsarki\nUbangiji karɓi sujadarmu\nAllah mai tsarki.\n\n1.\nMala’iku na sama suna rairawa\nSuna cewa kai ne mai tsarki\nAllah mai tsarki.\n\nKorus\n\n2.\nƳaƴenka sun taru domin sujada\nMuna roƙo ka tsarkake mu\nDon kai ne mai tsarki.\n\nKorus\n\n3.\n Mutanenka mun taru domin raira yabo\nMuna cewa kai ne mai tsarki\nAllah mai tsarki.\n\nKorus\n\n4.\n Dukan halittu na duniya masu lumfashi\nMu ɗaukaka Allah mai tsarki\nUbangijinmu.\n\nKorus\n\n\n",
      title: "464-Mai Tsarki",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 465,
      lyric:
          "1.\n Mai yin ƙarya, ka bar yin ƙaryarka.\nKa zo, ka tuba, ki zo, mu tuba\nDomin mu bi Mai ceto\nMai yin tsafi, ka bar yin tsafinka,\nka zo, ka tuba. ki zo, mu tuba\ndomin mu bi Mai-ceto.\n\nKORUS\nƳan’uwana, turbaya ne muka zo.\nTurƃaya ne za mu, tuƃaya ne za mu koma\nMun zo cin kasuwa, turƃaya ne muka zo,\nTurƃaya ne za mu, turƃaya ne za mu koma.\n\n2.\n Mai shan giya, ka bar shan giyanka\nka zo, ka tuba. ki zo, ki tuba\ndomin mu bi Mai ceto\nMai shan taba ka bar shan tabanka.\nka zo, ka tube, ki zo, ki tuba\ndomin mu bi Mai ceto.\n\nKorus\n\n3.\n Mai aure biyu, ka bar yin aure biyu,\nka zo, ka tuba, ki zo, ki tuba\ndomin mu bi Mai ceto\nDuniya nan akwai cuta cikinta.\nAkwai wahala, akwai azaba,\nduniya za ta shuɗe fa.\n\nKorus\n\n4.\n Kana da mata, mai cin amanarka,\nKada ka damu, akwai shari’a\nA ranar zuwan Yesu.\nKina da miji, mai cin amanarki.\nKada ki damu, akwai shari’a,\na ranar zuwan Yesu.\n\nKorus\n",
      title: "465-Mai Yin Ƙarya, Ka Bar Yin Ƙaryarka",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 466,
      lyric:
          "1.\n Masoyina yana sama,\nshi ne Yesu Ɗan Allahnmu.\nYana sama, yana shirya\nwurin zama can dominmu,\nsaboda ni, ba ni da kowa,\nko aboki a duniyan nan.\nRuhunsa ne ya biɗa duk\nya koya mana aikinsa.\n\nKORUS\nMasu-bi ku zo, mu bi Yesu\nYesu shi ne makiyayi. (2x)\n\nKaratu: Ubanmu wanda ke cikin sama ----\t(Addu'ar Ubangiji)\n\n2.\n Ku ƴan ƙwaya ku shaida fa,\nAlmasihu yana zuwa.\nKu mutane, ku shaida\nfa Almasihu yana zuwa.\nKu Pastoci, ku yi aniya,\nku yi aiki da aminci.\nKu je ku yi shaidar bishara,\nku je ku kawo ƃatattu.\n\nKorus\n\nKaratu: Masoyina, masoyina yana sama.\nShi ne Ɗan Allah wanda ya rnutu.\nSabili da zunubanmu. Ƴanuwa\nKu duba irin ƙauna da Yesu ya yi\ndomin mu zama masu ƙaunar juna\n\n3.\n Ku matasa, ku shaida fa\nAlmasihu yana zuwa.\nKu yara ma, ku shaida fa\nAlmasmu yana zuwa.\nZumuntar mata, ku yi aniya,\nKu yi aiki da aminci,\nKu je ku shaida bishara,\nKu je ku kawo ƃatattu.\n\nKorus\n\nKaratu: Kamar yadda Yesu ya koya mana,\nku ƴan ƙwaya, da masu shaidar bishara.\nda Pastoci, da su referan, da zumuntar mata,\nku mutane duka, ku tashi tsaye,\nku yi aikin Ubangiji fa, gama lokaci ya kusa,\nYesu yana zuwa. Babu shakka zai ba kowa ladan\naikinsa.\nAllah ya taimakemu. Amin.\n\n\n",
      title: "466-Masoyina Yana Sama",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 467,
      lyric:
          "1.\n Mutane duka sun taurara da jin maganar Uba\nDon duniyan nan ta kwace su; suna jin, amma ba aikata.\n(2x )\n\nKORUS\nDUK: Masu shelar bishara ko’ina da Littafi Mai Tsarki.\nAna shela mana bishara; muna ji, amma ba aikata.\nMaza: Ga Pastoci, ga dattiɓai, ga malamai ko’ina,\nGa su Reverend suna faɗa mana; muna ji, amma ba a.\n\n2.\n Karanta wasiƙar Yakubu sura ta ɗaya aya goma\nSha tara zuwa aya, aya ashirin da bakwai.\n(2x)\n\nKorus\n\n3.\n Karmu zama masu ji kaɗai, amma ba aikatawa.\nIn ba aikatawa ƴan’uwa, ranar ƙarshe za mu hallaka.\n(2x)\n\nKorus\n\n4.\n Duniyan nan tana ruɗinmu, jin daɗi za ya ƙare.\nA ran da Uba zai tattara dukan hallita na duniya.\n(2x)\n\nKorus\n\n\n\n",
      title: "467-Masu Shelar Bishara",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 468,
      lyric:
          "1.\n Mataye ku yi ƙauna, amsa za mu yi.\nKu yi ƙauna, ga mazaje, amsa za mu yi.\n\nKORUS\nRanar ta zuwansa akwai shari'a.\nAmsa za mu yi\nRanar tashinsa akwai shari'a.\nAmsa za mu yi.\n\n2.\n Mazaje ku yi ƙauna, amsa za mu yi\nKu yi ga matanku, amsa za mu yi.\n\nKorus\n\n3.\n Mataye ku yi ƙauna, amsa za mu yi.\nKu yi ƙauna ga ƴaƴanku, amsa za mu yi.\n\nKorus\n\n4.\n Pasto ma ya yi ƙauna, amsa za mu yi.\nYa yi ƙauna ga mutane, amsa za mu yi.\n\nKorus\n\n5.\n Ekkilisiya ta yi ƙauna, amsa za mu yi.\nTa yi ƙauna ga marayu, amsa za mu yi.\n\nKorus\n\n6.\n Gulme, gulme sun yi yawa, amsa za mu yi.\nSace, sace sun yi yawa, amsa za mu yi.\n\nKorus\n\n7.\n Gunaguni sun yi yawa, amsa za mu yi.\nKishe, kishe sun yi yawa, amsa za mu yi.\n\nKorus\n\n8.\n Shaye, shaye, sun yi yawa, amsa za mu yi.\nZage, zage, sun yi yawa, amsa za mu yi.\n\nKorus\n\n9.\n Zina yanzu ta yi yawa, amsa za mu yi.\nƘarya yanzu ta yi yawa, amsa za mu yi.\n\nKorus\n",
      title: "468-Mataye Ku Yi Ƙauna, Amsa Za Mu Yi",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 469,
      lyric:
          "Matuƙar murna, matuƙar murna\nSabo da Yesu ya cece ni,\nMatuƙar murna, matuƙar murna\nHalleluya, ya cece ni.\n\n\n\n\n",
      title: "469-Matuƙar Murna, Matuƙar Murna",
      tune: "Heavenly sunshine"),
  Hymns(
      author: "",
      favorite: 0,
      id: 470,
      lyric:
          "KORUS\nKu mazajen Galili, ku tsarkaka\nDon mi ku ke kallo a sama?\nYadda ku ka tafiyar Yesu a sama\nHaka ne zai sake dawowa.\n\n1.\n Idan mutane sun ce, “Ga Kristi can !\nGa Kristi nan, kada mu gaskanta!” (2x)\nMaƙaryatan annabawa za su zo.\nSu ruɗi mutane da yawa, kada ku gaskanta,\n\n(Karatu: Mat 24: 4-5, 23-28.\n\n\nKorus\n\n2.\n Idan mutane sun ce, “Ga Kristi can !\nGa Kristi nan, kada mu gaskanta.” (2x)\nMaƙaryatan annabawa za su zo\nSu yi abubuwan al’ajabi, kada ku gaskanta\n\nKorus\n\n3.\n Idan mutane sun ce, “Ga Kristi can!\nGa Kristi nan, kada mu gaskanta” (2x)\nMaƙaryatan annabawa za su zo\nSu ɓadda zaɓaɓɓu da yawa, kada ku gaskanta.\n\nKorus\n\n4.\n Idan mutane sun ce, ”Ga shi cikin jeji !\nGa shi lolokai, kada ku gaskanta !”\nRan da ɗan mutum zai zo\nDuniya duka za ta gan shi, kowa zai gaskanta.\n\nKorus\n\n\n",
      title: "470-Mazajen Galili",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 471,
      lyric:
          "Mai waƙa: Me za mu ce wa Allahn mu?\nDuka: Sai mu ce masa mun gode\n\nMun gode, mun gode, mun gode, mun gode\n\n",
      title: "471-Me Za Mu Ce Wa Allahn Mu?",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 472,
      lyric:
          "1.\n Menene aikin bangaskiyarmu\na cikin duniyan nan?\nBa wata hanya ta samun tsira\nsai dai ta wurin Yesu.\n\nKORUS\nYesu uba yana kira,\nYana tambayarmu duk,\nMenene aikin bangaskiyarmu?\nYesu yake tambaya.\n\n2.\n Zo wurin Yesu ka san gaskiya.\nSai dai ka tuba yanzu.\nBa wata hanya ta samun ceto\nsai dai ta wurin Yesu.\n\nKorus\n\n3.\n Ku zo mu nemi wannan gaskiya\ndomin mu semi ceto.\nKada mu yarda mu bi duniyan nan.\nDuniya za ta ƙare.\n\nKorus\n\n4.\n Menene za ya hana ka zuwa\nwurin Yesu mai~ceto?\nMai-cetonmu yana tambayarka.\nIna bangaskiyarka?\n\nKorus\n\n",
      title: "472-Menene Aikin Bangaskiyarmu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 473,
      lyric:
          "Mi ne ne zan ba ka? (2x)\nMi ne ne zan ba ka ya Allah?\nSaboda ƙaunar ka da kake yi mana\nMi ne ne zan ba ka ya Allah?\n\nZan ba ka duk rai na (2x)\nZan ba ka duk rai ya Allah\nSaboda ƙaunar ka da kake yi mana\nZan ba ka duk raina ya Allah\n\n",
      title: "473-Mi Ne Ne Zan Ba Ka?",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 474,
      lyric:
          "Mi zan cewa Yesu na?\nYesu na gode(2×)\nYesu yana bayana, Yesu yana gabana.\nYesu na gode(2×)\n",
      title: "474-Mi Zan Cewa Yesu Na?",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 475,
      lyric:
          "1.\n Mu kama hanyar ceto\nGama Yesu na zuwa.\n\n2.\n Duniya tana wuce,\nGama Yesu na zuwa.\n\n3.\n Mai Ceto za ya kusa da mu\nGama Yesu na zuwa.\n\n4.\n Shaiɗan yana ruɗe ni,\nAmma Yesu na zuwa.\n\n5.\n Mu yi anniya sosai,\nGama Yesu na zuwa.\n\n6.\n Mu yi ƙamnarmu sosai\nGama Yesu na zuwa.\n\n7.\n Mu yi biyayya sosai,\nGama Yesu na zuwa.\n\n8.\n Za mu hau tare da shi,\nGama Yesu na zuwa.\n\nTune-Native\nCategory:\n",
      title: "475-Mu Kama Hanyar Ceto",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 476,
      lyric:
          "Mu masu bi, me ya hana mu cin gaba?\nMu masu bi, me ya hana mu cin gaba?\nKo ta wurin rashin niyarmu ya hana mu cin gaba,\n\nI, gaskiya ne, shi ya hana mu cin gaba\nKo ta wurin sha’awar idonmu ya hana mu cin gaba,\n\nI, gaskiya ne, shi ya hana mu cin gaba.\nDuba mutuwa da Yesu ya yi a duniya dominmu !\nI, gaskiya ne, shi ya sa mu cin gaba.\n\nDuba wahala da Yesu ya sha a duniya dominmu.\nDuba haske da Yesu ya kawo a duniya dominmu,\n\nDuba daraja da Yesu ya kawo a duniya dominmu,\nDuba Littafi da Yesu ya kawo a duniya dominmu,\nI, gaskiya ne, shi ya sa mu cin gaba.\n\nIdan mun ƙara biyayya za mu tadda cin gaba,\nI, gaskiya ne, za mu samu cin gaba.\n\nYa Yesu Kristi, bi da mu domin mu samu cin gaba.\nI, ka taimake mu don mu samu cin gaba.\n\n",
      title: "476-Mu Masu Bi, Me Ya Hana Mu Cin Gaba?",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 477,
      lyric:
          "Mu ne gishiri\nMu ne fitilan duniya\nBari haske ya haskaka cikin duniya.\n",
      title: "477-Mu Ne Gishiri",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 478,
      lyric:
          "1.\n Mu yabi Yesu tare da mala’iku (2x)\nHalleluya, halleluya, in ji mala’iku.\n\n2.\n Mu tada murya tare da mala’iku (2x)\nHalleluya, halleluya, in ji mala’iku.\n\n3.\n Mu ɗaukaka shi, mu ba shi girma (2x)\nHalleluya, halleluya, in ji mala’iku.\n\n4.\n Mulki da ikon sarauta nasa ne. (2x)\nHalleluya, halleluya, in ji mala’iku.\n\n5.\n Mu ce “Mai Tsarki” tare da mala’iku. (2x)\nHalleluya, halleluya, in ji mala’iku.\n\n6.\n Shi ne tushin Dawuda, ya ci nasara.\nHalleluya, halleluya, in ji mala’iku.\n\n7.\n Mai isa ne kai fa ka ɗauki littafin. (2x)\nHalleluya, halleluya, in ji mala’iku.\n\n8.\n Ka buɗe littafin da hatimansa bakwai (2x)\nHalleluya, halleluya, in ji mala’iku.\n\n9.\n Ka karanta duka asirin Allah. (2x)\nHalleluya, halleluya, in ji mala’iku.\n\n10.\n Kai ne Allah tun fil azal ma. (2x)\nHalleluya, halleluya, in ji mala’iku.\n\n11.\n Mun gode, ya Allah, don ɗanka Yesu. (2x)\nHalleluya, halleluya, in ji mala’iku.\n\n12.\n Ka sayi mu da jini naka. (2x)\nHalleluya, halleluya, in ji mala’iku.\n\n13.\n Mu raira waƙa tare da mala’iku. (2x)\nHalleluya, halleluya, in ji mala’iku.\n\n14.\n Mu pansassu ne na Yesu Kristi. (2x)\nHalleluya, halleluya, in ji mala’iku.\n\n\n",
      title: "478-Mu Yabi Yesu Tare da Mala’iku",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 479,
      lyric:
          "1.\n Debora, ta yi aikin Allah.\nUbangiji ya ji daɗinta.\n(2x)\n\nKORUS\nOh...oh...daɗina, daɗina\nMene ne zan yi wa Allah\nDomin Allah ya ji daɗina ? (2x)\n\n2.\n Hannatu, ta yi aikin Allah\nUbangiji ya ji daɗinta.\n(2x)\n\nKorus\n\n3.\n Maryamu, ta yi aikin Allah.\nUbangiji ya ji daɗinta.\n(2x)\n\nKorus\n\n4.\n Sarki Dauda, ya yi aikin Allah.\nUbangiji ya ji daɗinsa.\n(2x)\n\nKorus\n\n5.\n Sarki Suleyman, ya yi aikin Allah.\nUbangiji ya ji daɗinsa.\n(2x)\n\nKorus\n\n6.\n Iliya, ya yi aikin Allah.\nUbangiji ya ji daɗinsa.\n(2x)\n\nKorus\n\n7.\n Sama'ila ya yi aikin Allah.\nUbangiji ya ji daɗinsa.\n(2x)\n\nKorus\n\n8.\n Ayuba, ya yi aikin Allah.\nUbangiji ya ji daɗinsa.\n(2x)\n\nKorus\n\n9.\n Saratu, ta yi aikin Allah.\nUbangiji ya ji daɗinta.\n(2x)\n\n",
      title: "479-Mu Yi Aikin Allah",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 480,
      lyric:
          "1.\n Mu yi farin ciki mu yi murna kuwa\nDon masu bin Yesu akwai nasara\nZai fyauce mu duka mu ratse sammai\nZai ciyadda ranmu da  itaccen rai.\n\nKORUS\nNasara, nasara zuwa dukan mu dai\nNasara, nasara za mu ci ta sosai\nMu zo mu bi Yesu mu yi anniya\nZai ba mu ladanmu na har abada.\n\n2.\n Ga can cikin sama a rubutace\nSuna na mai binsa kan farin dutse.\nBa wanda ya sani sai shi mai karɓa\nDa Ubangijinmu Mai Cin Nasara.\n\nKorus\n\n3.\nWanda ya bi Yesu Mai Ceto kaɗai\nZa a ba shi tufafi da rawanin rai\nZai zamna da Kristi a kursiyinsa\nDa murna mai yawa don yin nasara.\n\nKorus\n\n\n",
      title: "480-Mu Yi Farin Ciki Mu Yi Murna Kuwa",
      tune: "To God be the Glory"),
  Hymns(
      author: "",
      favorite: 0,
      id: 481,
      lyric:
          "KORUS\nMu yi tsalle, mu yi rawa,\nMu yi tabi, mu yabi Mai Cetonmu\n\n1.\n Mu yabe shi da dukan zuciyarmu\nDomin shi ne ya cece mu\nMu yabe shi da dukan zuciyarmu\nDomin alherinsa garemu\n\nKorus\n\n2.\n Mu yabe shi da dukan ƙarfinmu\nDomin ƙaunarsa garemu\nMu yabe shi da dukan ƙarfinmu\nDomin jinkansa garemu.\n\nKorus\n\n3.\nMu yabe shi da dukan azancinmu\nMu rera “Halleluya”\nMu yabe shi da dukan azancinmu\nDa molo da giraya.\n\nKorus\n\n\n",
      title: "481-Mu Yi Tsalle",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 482,
      lyric:
          "1.\n Mugun bawa nake, na bar tafarkin Allahna.\nNa ƙi Ubangiji da ɗansa Yesu, na bi Shaiɗan na ƙi Allah .\nNa shigo duniya da shan giya da yin maye.\nIna yin tsammani ina jin daɗi ina yanga da mugunta .\nIna zuwa Church ina baiko ina zakka,\nAmma Ubangiji ba zai sani ba, ranar ƙarshe zan sha kunya.\nKORUS\nWannan abin tausayi ne [Maza: “abin tausayi ne.”]\nYa isa ma in yi kuka [Maza: “Yi kuka ga Allah.”]\nWaiyo Allah Uba waiyo Allah gani mugun bawa na lalace.\nUba ka karɓe ni gani wurinka oh ya Uba ka yi jinƙai.\n\n2.\n Mugun bawa nake ni ne babban munafiki .\nNi mai adalci gaban mutane amma cikina da daci.\nIn ana wa’azi sai in yi kamar na damu.\nAmma in an gama an komo gida sai in koma bayan gari.\nTo, Ubangijina ni ban bar zuwa gunka ba,\nAmma na ƙi bari ayyukan duhu ranar ƙarshe babu bege.\n\nKorus\n\n3.\n Mu masu bin Yesu kada mu yi ruɗin kanmu.\nGama Ubangiji ba wawa ba ne ba a yi masa ba’a ba.\nAbin da na shuka shi ne abin da zan girba.\nNa san hukuncinsa ai babu shakka ranar ƙarshe zan sha kunya.\nOh, masu bin Yesu kullum sai ku tuna da ni,\nCikin addu’arku gama na zama mugun bawa na lalace.\n\nKorus\n\n\n\n",
      title: "482-Mugun Bawa Nake",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 483,
      lyric:
          "Mun gode\nMun gode\nMun gode\nYesu mun gode\nDuk abubuwan da ka yi mun gode\nMun gode\nYesu mun gode\n\n",
      title: "483-Mun Gode",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 484,
      lyric:
          "1.\nMun gode Allah Ubangiji,\nDomin ƙamnarka,\nYadda kai ka bada Ɗanka Yesu\nDomin cetonmu.\n\nKORUS\nI, muna yin roƙo\nYa Ubangijinmu,\nKa ji addu’armu,\nCika mu da ƙamnarka.\n\n2.\n Muna roƙo Ubangiji Yesu\nҠara ƙamnarmu,\nMu dai ba mu cika ƙamnar juna\nYadda ka ke so.\n\nKorus\n\n3.\n Muna roƙo Ruhun Ubangiji\nCika zuciyarmu,\nCika mu da nufin yin biyayya\nDa maganarka.\n\nKorus\n\n4.\n Allah Uba, Yesu Mai Cetonmu\nRuhu Mai Tsarki,\nDuka uku sai ku taimake mu\nMuna yin addu’a.\n\nKorus\n\n",
      title: "484-Mun Gode Allah Ubangiji, Domin Ƙamnarka",
      tune: "Deeper, deeper, in the love of Jesus"),
  Hymns(
      author: "",
      favorite: 0,
      id: 485,
      lyric:
          "1.\n Mun gode maka Yesu\nƊan Uba maƙaunacimmu,\nDon kana ta lura da mu ƃatattu na duniya.\n\nKORUS\nYabo ya tabbata. ya tabbata ga Yesu.\nYesu, Yesu sunanka da daɗi,\nKarƃi roƙon bayinka\nDomin su sami tsira.\n\n2.\n A cikin yaƙin nan\nMuna da su abokan gaba.\nKai ne za ka taimakemu har mu ci magabta.\n\nKorus\n\n3.\n Ko mun mutu a yaƙin nan\nLa karƃi rayukanmu.\nBa don ayukanmu ba, domin mu kasassu ne.\n\nKorus\n\n",
      title: "485-Mun Gode Maka Yesu  Ɗan Uba Maƙaunacimmu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 486,
      lyric:
          "1.\n Mun gode maka Yesu, Ɗan Maƙamnacinmu\nDo kana ta lura da mu, ɓatattun tumaki.\n\nKORUS\nYabo ya tabbata, ya tabbata ga Yesu\nYesu, Yesu, sunanka da daɗi.\nKarɓi roƙon bayinka domin su sami tsira.\n\n2.\n A cikin sunan Yesu muna kurkusa ga Allah\nShi wanda ya mutu domin dukan mutane.\n\nKorus\n\n3.\n A cikin yaƙin nan muna da aboka gabanmu.\nKai ne za ka taimake domin mu ci magabta.\n\nKorus\n\n4.\nIn na tuna, in na tuna da ƙamnar Almasihu\nSai hawaye na zuba domin na ɓata hanya.\n\nKorus\n\n",
      title: "486-Mun Gode Maka Yesu, Ɗan Maƙamnacinmu",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 487,
      lyric:
          "1.\n Muna cikin tafiya, tafiya zuwa sama.\nMenene za mu ƙunsa a hannunwanmu\ndon saduwa da Yesu?\nSaduwarmu, menene za mu ƙunsa\nA hannunwanmu don saduwa da Yesu?\n\n2.\n Mai yin zina, menen za ka ƙunsa\nA hannunwanka don saduwa da Yesu?\nMai yin sata, kana cikin tafiya\nTafiya zuwa sama, menene za ka ƙunsa\nA hannunwanka don saduwa da Yesu\n\n3.\n Mai yin tsafi, menene za ka ƙunsa a\nHannunwanka don saduwa da Yesu?\nMai yin ƙarya, kana cikin tafiya,\nTafiya zuwa sama, menene za ka\nƘunsa a hannunwanka don saduwa da Yesu ?\n\n4.\n Mai kormoto, menene za ka ƙunsa\na Hannunwanka don saduwa da Yesu?\nMai yin fushi kana cikin tafiya,\nTafiya zuwa sama, menene za ka\nƘunsa a hannunwanka don saduwa da Yesu?\n\n5.\n Mai yi gulma, menene za ka ƙunsa\na hannunwanka don saduwa da Yesu?\nMai yin kisa, kana cikin tafiya,\nTafiya zuwa sama, Menene za ka ƙunsa\na hannunwanka don saduwa da Yesu ?\n\n6.\n  Mai maza biyu, menene za ki ƙunsa\na hannunwanki don saduwa da Yesu?\nMai-mata biyu. kana cikin tafiya,\nTafiya zuwa sama, menene za ka ƙunsa\na hannunwanka don saduwa da Yesu?\n\n",
      title: "487-Muna Cikin Tafiya, Tafiya Zuwa Sama",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 488,
      lyric:
          "1.\n Mu matan (Sunan gari) muna da murna yau, domin wanna aure, aure mai nasara\nMu yi murna mataye mu raira godiya muna yin addu’a domin wanna gida.\n\n2.\n Amariya ki daɗe kina yin addu’a, kina roƙon Allah ya baki mijin aure.\nYau kin samu amarya ki yi godiya, kina yabon Allah domin Alherinsa.\n\n3.\n Ango mun san daɗe kana addu’a kan roƙon Allah, ya baka macen aure.\nYau ka samu ango ka raira Halleluya, kan yabon Allan domin Alherinsa\n\n4.\n Amarya ki zama kanbi ga mijinki, domin macen kirki kanbi ce ga mijinta\nKiyi masa biyayya a cikin kome duk, ki kaunace shi kamar yadda Allah ya ce.\n\n5.\n Ko cikin wahala ko cikin jin daɗi, ko cikin lafiya ko a cikin kunci.\nKu kasance masu ƙaunar junanku kullum, kuna yin addu’a zaku yi nasara.\n\n6.\n Samarai da ƴan mata shawar gareku, in zaku aure ku nemi nufin Allah.\nMuna roƙonka, Allah amsa addu’armu, domin matasanmu ka muna ikonka.\n\n",
      title: "488-Muna da Murna Yau",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 489,
      lyric:
          "1.\n Zamanin da Almasihu ya zo...duniya\nAn haife shi mai cetonmu...Baitalahmi\nHaifuwarsa abin mamaki ne...sosai\nDon cika nufin Allah\n\nKORUS\nYau muna murna haifuwar Yesu\nDomin shi Mai Cetonmu ne\nSai ku zo mu yi masa sujada\nShi Sarkin Salama ne.\n\n2.\n Masu hikima a cikin duniya...duka\nKu daina zurfin tunani...cikin zuciyarku\nKu nemi ceto a wurin Yesu Kristi\nShi zai baku taimako\n\nKorus\n\n3.\n Makiyaya suna tsoron garken..su fa\nHaske ne ya kewaye su...cikin daren nan\nAka shaida masu ƙaunar Allah...sun ji\nSai sun cika da murna.\n\nKorus\n\n4.\n Maza da mata har da matasa...duka\nTsofoffi yara sai ku zo...wurin Yesunmu\nZo mu guida Yesu Kristi...Almasihu\nYau ne ranar haifuwarsa.\n\nKorus\n\n",
      title: "489-Muna Murnar Haifuwar Yesu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 490,
      lyric:
          "1.\n ga Ubangijinmu.\nMuna shaida bishararsa.\nShi ya sha wahala ya mutu a kan giciye.\nDon duniya ta sami ceto.\n\nKORUS\nHalleluya, Yesu na zuwa don ya karɓe mu.\nIn muna da bangaskiya.\nHalleluya ba shakka za mu shiga gidan sama.\nIn mun yi zaman, zaman ƙauna.\n\n2.\n Dukan mu mawaƙa da ka raira waƙoƙi yau.\nShari’armu mai yawa ce.\nDon muna karantawa muna raira maganarsa.\nAmma ba mu aikatawa fa.\n\nKorus\n\n3.\n Akwai gidaje biyu da Allah ya shirya mana,\nGidan Allah da gidan Shaiɗan.\nIdan baka gidan Allah, kana gidan Shaiɗan\nSamaniya ko jahanama.\n\nKorus\n\n4.\n A wannan duniya ne za mu zaɓi gidanmu,\nGidan Allah ko gidan Shaiɗan.\nAyyukan da muke yi cikin wannan duniya.\nSu ne za su kaimu gidanmu.\n\nKorus\n\n5.\n Idan ka bar gidan Allah kana gida na Shaiɗan.\nDole ɗaya ya zama naka.\nGidan Allah sai jin daɗi amma gida na Shaiɗan,\nSai dai shan azaba sosai.\n\nKorus\n\n\n",
      title: "490-Muna Raira Waƙoƙin Yabo",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 491,
      lyric:
          "1.\n Muna zuwa wurin Yesu Mai Ceto\nDomin shiga aikinsa\nShi ya kira mu mu yi ta wa’azi\nKo’ina a duniya.\n\nKORUS\nYesu shi ne shugaba\nShi ne mai ƙamnar mutane.\nZa mu taya shi, mu nemansu\nDon su sami gafara.\n\n2.\n Ko minene Yesu shi ya ce mu yi\nZa mu yi da zuciya ɗaya\nZa mu yi biyayya cikin abu duk\nZa mu yi ta wa’azi.\n\n3.\n Shi ya ce mu bar duk zunubi na da\nMu tafi da tsabta rai\nKo ya ce ya so abin da namu ne.\nZa mu ba shi nan da nan.\n",
      title: "491-Muna Zuwa Wurin Yesu Mai Ceto",
      tune: "The banner of the Cross/There’s a Royal Banner"),
  Hymns(
      author: "",
      favorite: 0,
      id: 492,
      lyric:
          "1.\n Mutane sun fara yawaita a duniya,\nSun cika ƙasashe daga gabas har da yamma,\nKowa da sunansa da harshe dabam-dabam,\nSun bi ta hanyar duniya, sun mance da Uban.\n\nKORUS-1\nZan hallakada duniya,\nIn ji Ubangiji,\nZan aiki ruwan sama\nCikin wannan kwanaki.\n\n2.\n Duk tunani da shawara ƴan Adam lala ne,\nBa wanda ya kula da abin da Allah ya ce,\n“Na tuba da na yi mutum da dukan masu rai.\nZan shafe su da dabbobi har dukan tsuntsaye.”\n\nKorus-1\n\n3.\n Akwai mutum, sunansa Nuhu, mai adalci ne,\nYa sami tagomashi a gaban Ubangiji,\nKullum yana tafiya tare da Allah ne,\nTare da shi Allah ya yi babban alkawali.\n\nKORUS-2\nKa shiga cikin jirgi,\nDa kai da ƴaƴanka,\nZan hallakada duniya\nDa ruwan tufana.\n\n4.\n Shakara ɗari biyu Nuhu ya yi ta wa’azi\nYa yi ta shirya jirgi ko bai gane da abin,\nMutane sun yi dariya. “Ya hauka” duk sun ce,\nAmma Nuhu bai kula ba, biyayya shi ke dai.\n\nKorus-2\n\n5.\n Nuhu ya biɗa bisashe da tsuntsaye biyu biyu,\nSun shiga cikin jirgin nan tare da ƴaƴansa,\nAllah ya rufe ƙofa, ruwan tsufana ya zo,\nYa rufe fuskar duniya har dukan duwatsu.\n\nKORUS-3\nMutane duk sun mutu,\nDon ba su tuba ba,\nAmma ya ceci Nuhu\nDon ya bada gaskiya.\n\n6.\n Ku mutane ku saurara abin da ya faru,\nKu juyo daga duhunku, ku tuba tun yanzu,\nKu  shiga cikin ƙamnar Yesu, roƙi gafara,\nAllah za ya ji ku, za ya buɗe ƙofa kuwa.\n\nKORUS-4\nKu shiga cikin jirgi,\nBai rufe ƙofa ba,\nAmma idan kun kira\nLalle za ku yi makara.\n\n\n\n",
      title: "492-Mutane Sun Far Yawaita a Duniya",
      tune:
          "Still Sweeter Every Day/The Half Cannot Be Fancied/To Jesus every day"),
  Hymns(
      author: "",
      favorite: 0,
      id: 493,
      lyric:
          "1.\n Mutuwar Yesu ta sa ina da bege na rai\nYa tashi kuwa da rai ya koma wurin Uba.\n\nKORUS\nMata: “Mafasa biyu.” (Maza: “Masu kisa.”)\nMata: “An giciye shi.” (Maza: “Tare da shi suke.”)\nMata: “Ɗaya hannun dama.” (Maza: “Mai azanci.”)\nMata: “Ɗaya hannun hagun.” (Maza:  “Marar azanci ne sh.i”)\nDuka: “Mutuwar Yesu ta sa ina da bege na rai”\n\n2.\n Sun iso Golgotha inda za su giciye shi\nSu ka kuwa giciye shi tare da masu laifi.\n\nKorus\n\n3.\n Bayan da sun gama sun raba tufafinsa\nSun rubuta wannan Yesu Sarkin Yahudawa.\n\nKorus\n\n4.\nƳan’uwa masu bi ran Ista ranar ceto\nWa mu ke bi a yau Yesu Kristi ko Shaiɗan\n\nKorus\n\n\n",
      title: "493-Mutuwar Yesu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 494,
      lyric:
          "1.\n Na yi shiri da zan bi Yesu (3x)\nHar abada, har abada.\n\n2.\n Ko ni kaɗai ne, ni zan bi Yesu (3x)\nHar abada, har abada\n\n3.\n Na bar bin duniya, ni zan bi Yesu\t(3x)\nHar abada, har abada\n\n4.\n Na sami ceto ni zan bi Yesu (3x)\nHar abada, har abada.\n\n5.\n Ina da murna, ni zan bi Yesu (3x)\nHar abada, har abada.\n\n6.\n Har can a sama, ni zan ga Yesu (3x)\nHar abada, har abada.\n\n",
      title: "494-Na Yi Shiri da Zan Bi Yesu",
      tune: "I Have Decided to Follow Jesus/ Assam"),
  Hymns(
      author: "",
      favorite: 0,
      id: 495,
      lyric:
          "Na zaɓi Yesu har abada, har abada\nNi nashi ne, na tabbata\nBisa ga alkawalinsa ne\nFaɗi Yohanna 1:12\nBa shakka, za ni wurinsa,\nAmin!  Amin!\n\n\n",
      title: "495-Na Zaɓi Yesu Har Abada, Har Abada",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 496,
      lyric:
          "1.\n Nan gabas dubu suna ta mutuwa\nBa su da maganar rai\nNan yamma dubu suna ta kira\nNa mu da maganar rai.\n\nKORUS\nNan gabas, da yamma, arewa da gusum\nMu tafi, mu tafi da maganar Allah\nMu tafi, mu tafi, suna jiranmu can\nMu tafi, mu tafi, don su sami tsira.\n\n2.\n Arewa kuma dubu ke jira\nBa su da sanin ceto\nNan gusum suna ta biɗa\nBiɗan salamar Allah.\n\nKorus\n\n3.\n Ga tafiyar dangi cikin wuta\nҠarƙarshin shari’a\nFushin Allah bisansu zamne\nMuna da ƙofar rai.\n\nKorus\n\n",
      title: "496-Nan Gabas Dubu Suna Ta Mutuwa",
      tune: "To the East, to the West"),
  Hymns(
      author: "",
      favorite: 0,
      id: 497,
      lyric:
          "1.\n Ni ma na yi zunubai fa\nDukakanmu, mun yi zunubi\nMuka kasa daraja ta Allah.\n\n2.\n Yesu Kristi ne Mai Ceto\nShi ne Macecinmu duka.\nShi ya mutu domin zunubanmu.\n\n3.\n Ni na faɗi laifofina,\nKai ka faɗi laifofinka\nDon ka sami gafara da tsira.\n\n4.\n Mutane ko kun yi shiri ?\nYesu Kristi shina zuwa\nDon shi karɓi masu bangaskiya.\n\n\n",
      title: "497-Ni Ma Na Yi Zunubai Fa",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 498,
      lyric:
          "Ni ne mai ikon tada matattu\nWanda ya bada gaskiya gareni,\nKo ya mutu, za ya rayu,\nI, wanda ya ke bada gaskiya gareni,\nBa zai hallaka ba.\n\nTune-\n\nCategory: Waƙoƙin Yara\n\n",
      title: "498-Ni Ne Mai Ikon Tada Matattu",
      tune: "I am the resurrection and the life (Clayton)"),
  Hymns(
      author: "",
      favorite: 0,
      id: 499,
      lyric:
          "Ni ƙofa ne, ta sama dai,\nWanda ya shiga ta wurina\nZa ya tsira, za ya tsira\nHar abada.\n\n\n\n",
      title: "499-Ni Ƙofa Ne, Ta Sama Dai",
      tune: "I  Am the Door"),
  Hymns(
      author: "",
      favorite: 0,
      id: 500,
      lyric:
          "Ni sojan Yesu ne\nZan kai bishararsa ko'ina.\nBa wanda za ya hanani,\nDomin ni sojan Yesu ne.\n",
      title: "500-Ni Sojan Yesu Ne",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 501,
      lyric:
          "Ni zan je\nZan shaida Yesu ko'ina  (ko'ina..ah)\nBan damu da gargada hanya ba.\nNi zan je, ni zan je.\n",
      title: "501-Ni Zan Je, Zan Shaida Yesu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 502,
      lyric:
          "Mai waƙa: Ni zan yabi Jehovah\nDuka: Hosana\nHosana\nHosana\nHosana (2x duka)\n\nMai waƙa: Ni zan ɗaukaka Jehovah\nDuka: Hosana\nHosana\nHosana\nHosana (2x duka)\n\n",
      title: "502-Ni Zan Yabi Jehovah",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 503,
      lyric:
          "1.\n Ni, ina son Yesu,\nNi, ina son Yesu,\nNi, ina son Yesu,\nYesu Mai Ceto ne.\n\n2.\nNi, ba ni son Shaiɗan,\nNi, ba ni son Shaiɗan,\nNi, ba ni son Shaiɗan,\nShaiɗan mai ruɗu ne.\n\nYesu mai ceto ne.\n\n\n\n",
      title: "503-Ni, Ina Son Yesu",
      tune: "O How I Love Jesus"),
  Hymns(
      author: "",
      favorite: 0,
      id: 504,
      lyric:
          "KIRA...  AMSA\nKu zo mu tashi mu je mu gaida…\tMai ceto\nDan jariri ne gashi a nan…  Mai iko\nYa na a kwance a Baitalami…  Can ƙauye\nƊiyan dabobi suna ta kallon…  Mai jinƙai\n\n\nHymns(Yesu ɗan Allah...  Ka zo\nZa mu yabe ka\t...  Kullum ) (2x)\n\n\nYesu ɗan Allah gamu...\tMuna yabonka kullum\nYesu ɗan Allah gamu...\tMuna dukusa maka\nYesu ɗan Allah gamu...\tMuna girmama sunanka\nYesu ɗan Allah gamu...\tMuna kira sunanka\n\nYesu kai Mai Ceto, Yesu kai ne hanya\nHaifuwarka abin mamaki,\nAn yi anabcinka, shehuna sun shaida\nYesu kai mai iko, Yesu mai ba da rai\nDaraja da girma nake ne\nHalleluya amin, sunanka ko ina\nCewa kai ne ɗan Allah na sama.\n\nHalleluya za mu yabe ka\nZa mu rera waƙa ga Allah\nAna rera Halleluya\nSu mala’iku suna ta rera\n\nHalleluya...  Za mu yabe ka\nHalleluya...  Mala’iku suna rera\nHalleluya...  Mala’iku suna yabo\nHalleluya...  Mataye mu rera\nHalleluya...  Rerawa ga Allah (3x)\n\n",
      title: "504-Noël : Ku zo mu tashi mu je mu gaida",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 505,
      lyric:
          "KORUS\nOh duniya, oh duniya, runfar kara take fa.\nOh duniya, oh duniya, duniya mai shuɗewa.\n\n1.\n Zaman duniya, zaman duniya, duniya sai iyawa.\nKa jingina ga duniya, sai ƙarewa za ta yi.\n\nKorus\n\n2.\n Ga masu bi na shan daɗi, sun manta da Allahnsu.\nBa addu’a, ba wa’azi, ai Shaiɗan ya ɗaure su.\n\nKorus\n\n3.\n Ga masu bi da arziki, sun maida shi Allahnsu.\nGa masu bi sun sami illimi, sun maida shi Allahnsu.\n\nKorus\n\n4.\n Ga masu bi, sun sami girma, sun maida shi Allahnsu.\nBa addu’a ba wa’azi, ai Shaiɗan ya ɗaure su.\n\nKorus\n\n5.\n Mu masu bi mu lura fa, ranan nan na zuwa fa.\nMu farfaɗo mu yi addu’a, biyayya ce za mu yi.\n\nKorus\n\n6.\n Kuɗi, girma, yabo, daɗi, ba za su cece mu ba.\nNemi Allah ba shi girma, shi fa zai bada ceto.\n\nKorus\n\n\n",
      title: "505-Oh Duniya",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 506,
      lyric:
          "KORUS\nRaina ka yabi Allah\nRaina ka yabi Allah.\n\n1.\n Domin ƙaunarsa, domin jinƙansa\nMu raira ɗaukakar Yesu Ɗaukaka. (3x)\nGa Yesu.\n\nKorus\n\n2.\n Domin girmansa, domin ikonsa\nMu raira yabo ga Allah Yabo. (3x)\nGa Allah.\n\nKorus\n3.\n Domin Rahamarsa, domin tsarkinsa\nMu raira Tsarkin Yesu Tsarki (3x)\nGa Yesu.\n\nKorus\n\n4.\n Domin darajarsa, domin mulkinsa\nMu raira darajar Allah Daraja. (3x)\nGa Allah.\n\nKorus\n\n\n\n",
      title: "506-Raina Ka Yabi Allah",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 507,
      lyric:
          "1.\n Ranar Ubangiji fa tana zuwa babu shakka.\nAl’umma duniya za su rushe\nMasu aikata mugunta ranar su tana zuwa\nKamin ranar nan ka cece ni.\n\nKORUS\nI, gani nan Yesu na zo.\nIna neman ceto\nKa ji tausayi ka cece ni\nYesu gani ka cece ni.\n\n2.\n Za mu ji ƙarar ƙafo daga can samaniya\nMai cetonmu yana sabkowa\nTare da mala’iku za su ware masu bi\nKamin ranar nan ka ceci ni.\n\nKorus\n(Karatu : I Tas 4 : 15-16.\n\n\n3.\n Masu bi da sun mutu daga ikon duniya\nZa su fara jin ƙarar ƙafo\nWaɗanda suke da rai daga nan za su tashi\nKamin ranar nan ka ceci ni.\n\nKorus\n\n4.\n Rana za ta yi dufu, taurare na faɗuwa\nSamaniya tana sabkowa\nWata za ya ki bada haske babu sauren salama\nKamin ranar nan ka ceci ni.\n\nKorus\n\n\n\n",
      title: "507-Ranar Ubangiji",
      tune: ""),
  Hymns(
      author: "Mme. Maryama Moustapha Abba Moussa",
      favorite: 0,
      id: 508,
      lyric:
          "1.\n Wannan bishara kuwa ta mulki\nZa’ayi wa’azinta ga duniya.\nDomin shaida ga dukan al’ummai\nSa’annan mutuƙa za ta zo.\n\nKORUS\nSa’annan, sa’annan, matuƙa, matuƙa\nSa’annan matuƙa za ta zo.\n2.\n Gama kamar walƙiya daga gabas\nKuna ganinta kuwa bar yamma.\nHaka nan Ɗan mutum za ya zo.\nSa’annan mutuƙa za ta zo.\nKorus\n3.\n Daga itacen ɓaure ku ga ne\nSai ku koyi misalinsa\nSa’anda yana hudo ganyensa\nSa’annan mutuƙa za ta zo.\nKorus\n4.\n Ku tuna da zamanin Nuhu ƴan’uwa\nYa sha ba’a cikin aikinsa\nAmma ya ci gaba da yin jirginsa\nSa’annan matuƙarsu ta zo.\nKorus\n5.\n Sai mu jimre da aikin bishara\nHar dukan duniya ta tsira\nDomin Yesunmu yana zuwa\nSa’annan matuƙa za ta zo.\nKorus\n6.\n Yesu zai karɓe mu cikin sama.\nCikin gidan Ubansa.\nRawanin Rai yana jiranmu.\nSa’annan matuƙa za ta zo.\n",
      title: "508-Sa’annan Matuƙa Za Ta Zo",
      tune: "Sa’annan Matuƙa Za Ta Zo"),
  Hymns(
      author: "",
      favorite: 0,
      id: 509,
      lyric:
          "1.\n Yesu ya zo, ya kawo ceto\nYaba mu sabon rai,\nRai, sabon rai, rai domin kowa,\nYesu ya kawo rai.\n\nKORUS\nGa sabon rai. Rai domin kowa,\nRai, sabon rai, mu yi murna da sowa\nYesu ya mutu domin dukanmu\nYesu ya kawo sabon rai.\n\n2.\n Mu tashi dai duk, mu bada labari,\nLabari na sabon rai\nKowa ya ji, kowa ya sani.\nYesu ya kawo rai.\n\nKorus\n\n3.\n Ya zubda jininsa\nA bisa giciye\nDomin ya saye zuciyarku\nTa koma wurinsa.\n\nKorus\n\n4.\n Bari ku ji, bari ku sani.\nYesu ya mutu\nDomin dukarmu\nYa tashi don mu.\n\nKorus\n\n\n",
      title: "509-Sabon Rai Kowa",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 510,
      lyric:
          "Sai da kalmar godiya (2x)\nBa abin da gan kawo maka (Yesu)\nSai dai kalmar godiya.\n",
      title: "510-Sai Dai Kalmar Godiya",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 511,
      lyric:
          "Sai godiya Yesu, sai godiya (2x)\nRan da na karƃi Yesu, sai godiya.\n",
      title: "511-Sai Godiya",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 512,
      lyric:
          "Sai ka lisafta alherin Allahnka\nFaɗi dukan kome da ya taɓa ka\nZa ka ga kyautarsa ba ta lisaftuwa\nZa ka ga alheri ba ya karewa.\n\nKORUS\nGa alherin Ubangijinmu,\nSaurara ka yi lissafinsu,\nRai da tufa, har lafiya\nKome domin jiki har da zuciya.\n\n\n\n",
      title: "512-Sai Ka Lisafta Alherin Allahnka",
      tune: "Count your blessings /When Upon Life’s Billows"),
  Hymns(
      author: "",
      favorite: 0,
      id: 513,
      lyric:
          "1.\n Sai ku tashi dai mutane duk\nKu ji labarin mu\nLa…barin mayaki na Mai Ceto\nIdan za ka ci nasara\nCikin yaƙin nan sosai\nSai ka nuna bangaskiya da aminci.\n\nKORUS\nMayaƙi….na Yesu Kristi\nSai ka nuna halin kirki\nSai ka dogara gareshi\nUbangiji za shi bada nasara.\n\n2.\n Duk maganar Ubangijinmu\nA buɗe ta ke kuwa\nBari dai mu yi biyayya ba shakka\nKo Shaiɗan ya jarrabce mu\nGa mu nan da takobi\nSai mu ci gaba da ƙarfin zuciya.\n\nKorus\n\n3.\n A cikin yaƙin nan gaban mu\nMu yi tsayayya kuwa\nShaiɗan dai zai guje mamu nan da nan\nMu taimaki ƴanuwanmu\nMu yi shaida fa\nHar ya zo ya kai mu gidan sama a can.\n\nKorus\n\n",
      title: "513-Sai Ku Tashi Dai Mutane Duk",
      tune: "When the trumpet of the Lord shall sound/When the Roll Is Called"),
  Hymns(
      author: "",
      favorite: 0,
      id: 514,
      lyric:
          "1.\n Sanadin ceto, Yesu ne shi,\nAllah ya sa Yesu haka, in ji\nDa farin soma wa’azin nan\nKofar alheri babu sai Ɗan.\n\nKORUS\nShaidata wanna gaskiya ce:\nSani na yi, ni cetacce ne;\nFahariya babu, ni fansasshe,\nSani na yi, ni cetacce ne.\n\n2.\n Zaman na ɗaure zamana dā,\nWyua, wahala, su duk na ke sha.\nTun da maganar Allah na ƙi,\nIblis, makiyinsa, na ke bi.\n\nKorus\n\n3.\n Ku masu ji, ku dakata dai,\nSai kun ji shaidata wannan sosai,\nYesu ya sayo ni, ya maida ni ɗa,\nBabu mai raba mu har abada.\n\nKorus\n\n",
      title: "514-Sanadin Ceto, Yesu Ne Shi",
      tune: "Blessed Assurance"),
  Hymns(
      author: "",
      favorite: 0,
      id: 515,
      lyric:
          "Shigo zuciyata\nKa tsarkake ni\nYi mulkinka nan\nYa Yesu.\nShigo yanzu\nYi zamanka nan\nYi mulkinka nan\nYa Yesu.\n\n",
      title: "515-Shigo Zuciyata",
      tune: "Into My Heart, Into My Heart"),
  Hymns(
      author: "",
      favorite: 0,
      id: 516,
      lyric:
          "Sunan Yesu ne mafifinci\nKuma halinsa, yabi sunansa!\nDon haka ina so in bi shi yau,\nSunan Yesu ne mafifinci.\n\n\n\n",
      title: "516-Sunan Yesu Ne Mafifinci",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 517,
      lyric:
          "KIRA                AMSA\n1.\n Sunansa Emmanuel....  Sunansa Emmanuel  (2x)\nAlbishirinku mutane.... Ceto ya zo duniya (2x)\nMu je mu shaidako.... ina sunansa Emmanuel (2x)\n\nKORUS\nWakoki na yabo Albishariku duniya (2x)\nCan a ciki samariya mala’iku suna murna\nDomin nasarar da ya yi muna murna\n\n\n2.\n Na ka ne har abada ....Na ka ne har abada (2x)\nYesu mun gaisheka.... Muna sujada gabanka (2x)\nGirma da yabo naka ne ....na ka ne har abada (2x)\n\nKorus\n\n3.\n Ya yi mulkinsa duka .... Ya yi mulkinsa duka (2x)\nMe ne ne fa za muyi .... sai mu nuna godiyarmu (2x)\nBari mu bas hi zuciya .... ya yi mulkinsa duka (2x)\n\nKorus\n\n4.\n Yau mun sami ceto .... Yau mun sami ceto (2x)\nMu matayen zumunta .... Mu arba shi zuciya mu  (2x)\nMu sani da lilin murnanmu .... yau mun san ceto (2x)\n\nKorus\n\n",
      title: "517-Sunansa Emmanuel",
      tune: ""),
  Hymns(
      author: "Thomas Johnson",
      favorite: 0,
      id: 518,
      lyric:
          "Im-man-u-el\nIm-man-u-el\n\nSunanshi ne\nIm-man-u-el.\n\nAllah nan\nTare da mu.\n\nSunanshi ne\nIm-man-u-el.\n\n",
      title: "518-Sunanshi Ne Immanuel",
      tune: "Emmanuel (His Name Is Called Emmanuel)"),
  Hymns(
      author: "",
      favorite: 0,
      id: 519,
      lyric:
          "Taruwa, taruwa. taruwa gidan Allah.\nGodiya, godiya, godiya gidan Allah.\nAkwai murna, murna, akwai murna gidan Allah.\nBabu mutuwa, mutuwa, babu mutuwa gidan Allah.\nBabu yunwa, yunwa, babu yunwa gidan Allah.\nAkwai jinƙai, jinƙai, akwai jinƙai gidan Allah.\nAkwai rahama, rahama, akwai rahama gidan Allah.\nAkwai ni’ima, ni’ima, akwai ni’ima gidan Allah.\nAkwai waƙa, waƙa, akwai waƙa gidan Allah.\nAkwai wahala, wahala, akwai wahala gidan Shaiɗan.\nAkwai kuka, kuka, akwai kuka gidan Shaiɗan\nAkwai daɗi daɗi, akwai daɗi gidan Allah.\nLaIle jama'a, kan jama’a, lalle jama’a gidan Allah.\n\n",
      title: "519-Taruwa, Taruwa, Taruwa Gidan Allah",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 520,
      lyric:
          "1.\n Tsakanina da Mai Cetona\nBa zan bi ruɗin duniya ba,\nNa bar nishatsin wannan duniya,\nSai dai Yesu ne, ni ke sonsa.\n\nKORUS\nTsakanina da shi, babu kome\nDa zai hana in ga fuskarsa.\nAlherinsa ba zai hannu ba\nIn na tabbatadda zuciyata.\n\n2.\n Me zai raba ni da Mai Ceto,\nKo raɗaɗi da ruɗin Shaiɗan?\nDuk waɗannan ba zai raba mu ba,\nShi ne kaɗai zan manne masa.\n\nKorus\n\n3.\n Ba fahariya ko alfarma,\nKo ni kaina ko abokai,\nKo da shi ke zan sha tsanani,\nDuka da haka Shi ni ke so.\n\nKorus\n\n4.\nKo jaraba ta taso mani\nKo duniya tana ƙi ni.\nAddu’a za ta ba ni nasara.\nBa abin da zai hana.\n\nKorus\n",
      title: "520-Tsakanina da Mai Cetona",
      tune: "Nothing Between"),
  Hymns(
      author: "",
      favorite: 0,
      id: 521,
      lyric:
          "KORUS\n\nTun da Allah na nan,\nBa zan ji tsoro ba.\nYesu na tare da ni\nWa za shi gaba da ni.\n\n1.\n Don me mutane ku ke hauka.\nAl’umai na tunani wofin\nSarakuna na gaba da Allah da Shafaffensa.\n\nKorus\n\n2.\n Shaiɗan da mutanensa\nSun tara mani don su kasha ni.\nAmma Allah daga cikin sama ya rena su.\n\nKorus\n\n3.\n Ubangiji ya ce mani\nKai ne dana na haife ka.\nKa tambaye ni al’umai gado ni zan ba ka.\n\nKorus\n\n4.\n Ubangiji ya ba ni iko.\nIn karkarye su da sandar tamar\nIn farfashe su kamar kasko na tukunya.\n\nKorus\n\n\n\n",
      title: "521-Tun da Allah na Nan",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 522,
      lyric:
          "Tun kana duniya\nDa sauran lokaci,\nJinƙai na Allah,\nƊanɗana ka ji,\nTun ba ka mutu ba\nDa sauran lokaci,\nJinƙai na Allah,\nƊanɗana ka ji.\n\n\n",
      title: "522-Tun Kana Duniya",
      tune: "One door and only one"),
  Hymns(
      author: "",
      favorite: 0,
      id: 523,
      lyric:
          "Tun yana mani taimako\nTsoro, ni, ba’zan ji\nKaina da mai ya shafa shi\nҠoƙo ya cika shi.\n\nNagartassa da jinƙansa,\nSu, za su biyo ni\nA cikin gidan Allah kuwa,\nZan yi zamana.\n\n",
      title: "523-Tun Yana Mani Taimako",
      tune: "O For A Faith /Evan"),
  Hymns(
      author: "",
      favorite: 0,
      id: 524,
      lyric:
          "KORUS\nUbangiji ke mulki cikin mutanensa\nWanda ke gaba da su zai rasa ɗan farinsa.\nUbangiji na cikin mutanensa\nWanda ke gaba da su zai mutu.\n\n1.\n Ku tambayi Firauna ku ji, Ku tambayi Massarawa\nIna ƴaƴansa suke, ƴaƴansa na fari?\nSun taɓa mutanen Ubangiji\nSun rasa ƴaƴansu na fari.\n\nKorus\n\n2.\n Ina Firauna yake, ina mayakensa?\nIna Firauna yake, ina karusansa?\nSun taɓa mutanen Ubangiji\nSun rasa rayukansu.\n\nKorus\n\n3.\n Ku tambayi shawulu ku ji, za ku ji labari.\nIna Shawulu yake, za ku ji labara.\nYa taɓa mutanen Ubangiji\nYa rasa idanunsa.\n\nKorus\n\n4.\n Mu ne ƴaƴan Ubangiji, mu ne mutanensa.\nMu ne dangin Yesu Kristi, mu ne idanunsa.\nKowa ya taɓa ƴaƴan Ubangiji.\nZai gamu da fushin Ubangiji.\n\nKorus\n\n\n",
      title: "524-Ubangiji Ke Mulki",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 525,
      lyric:
          "KORUS\nUbangiji shi ne komena, shi ne magani har da saura.\nNi ba zan bauta layu ba balle gumaka har da saura\nAyukan gidana Ubangiji zai bida su. (2x)\n\n1.\n Ubangiji shi ne Allah shi ne mai ceto shi ne gaskiya.\nYankan bisheni ko a cikin wahaloli (2x)\nAyyukan gidana Ubangiji zai bida su. (2x)\n\nKorus\n\nKaratu\n\n2.\n Ubangiji shi ne ƙauna mai tafarkin makiyayi. (2x)\nNi ba zan bauta layu ba balle gumaka har da saura\nAyyukan gidana Ubangiji zai bida su. (2x)\n\nKorus\n\nMaza: “Ayyukan gidana Ubangiji zai bida su.” (2x)\n\n\n",
      title: "525-Ubangiji Shi Ne Komena",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 526,
      lyric:
          "1.\n Ubangiji shina ta biɗa\nGirbi cikin ran masu bi\nShina son ɗiyan Ruhu Mai Tsarki\nDa aiki na ɗaukaka shi.\n\nKORUS\nBabu kome sai da kunnuwa\nMu ba shi baƙin ciki\nMaimakon ɗiyan Ruhu Mai Tsarki\nMun miƙa mai kummuwa.\n\n2.\n Ko mutane suna ta gani\nҠamnarsa cikin ranmu yau ?\nDa anniya domin masu duhu\nSu tuba su bada gaskiya ?\n\nKorus\n\n3.\n Ko kai za ka yarda ka zama\nLittafi Mai Tsarkinsu ?\nBa su iya karanta don kansu\nSai duban zaman masu bi.\n\n4.\n I, Ubangiji, na yarda\nNa ba ka duk raina yau\nMaimakon kunnuwa fa zan ba ka\nƊiyan Ruhu da naka taimako.\n\n",
      title: "526-Ubangiji Shina Ta Biɗa",
      tune: "Nothing But Leaves"),
  Hymns(
      author: "",
      favorite: 0,
      id: 527,
      lyric:
          "1.\n Ubangiji ya tashe mu da safen nan mun gode (2x)\nMe za mu yi mu nuna muna murna?\nSai mu rera (2x)\n\nKORUS\nSai mu ce ha ha a a a Halleluya\nMu ƙara ha ha a a a al leluya. (2x)\n\n2.\n Wanene yana ba mu ci da sha kullum?\nAllah ne. (2x)\nMe za mu yi mu nuna muna murna?\nSai mu rera (2x)\n\nKorus\n\n3.\n Wanene yana ba mu rai da lafiya?\nAllah ne. \t(2x)\nMe za mu yi mu nuna muna murna?\nSai mu rera (2x)\n\nKorus\n\n4.\n Allah ne mai ba mu dukan komi,\nmun gode. (2x)\nMe za mu yi mu nuna muna murna?\nSai mu rera (2x)\n\nKorus\n\n",
      title: "527-Ubangiji Ya Tashe Mu da Safen Nan Mun Gode",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 528,
      lyric:
          "UBANGIJI MAKIYAYI NA NE\nKORUS\nUbangiji, ma-kiyayina\nBa zan taɓa, rasa komi.\n\n1.\nYana sanya ni, in kwanta\nA cikin makiyaya mai ƙyau.\nYana bishe ni, a gefen\nRuwaye, na hutawa.\n\nKorus\n\n2.\n Hakika, ko tafiya nake yi\nTa tsaki-yar kwarin mutuwa.\nBa zan ji tsoron, masifa ba\nGama kana, tare da ni.\n\nKorus\n\n3.\n Nagarta kuma, da jinƙai\nZa su bi ni duk kwanakina.\nZan zauna kuma, a gidan\nUbangiji, har abada.\n\nKorus\n\n\n",
      title: "528-Ubangiji, Makiyayi Na Ne",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 529,
      lyric:
          "1.\n Ubangijimu mai yawan ƙamna\nWanda ya sabko domin pansarmu\nYana kira da murya mai ƙarfi\nKarɓi ceto yanzu.\n\nKORUS\nKarɓi ceto yanzu, yanzu\nKarɓi ceto yanzu, yanzu\nKo kana cin alwashi na gobe\nGobe ba naka ba.\n\n2.\n Yana neman mu da so da yarda\nIdan ka kyale za ka ƙone kwa\nYesu kaɗai ne Mai Ceton duniya\nKarɓi ceto yanzu.\n\nKorus\n\n3.\n Adini ba za ya cece ka ba,\nKuɗinka ba za ya cece ka ba\nYesu kaɗai ne Mai Ceton duniya\nKarɓi ceto yanzu.\n\nKorus\n\n4.\n Ƴan duniya, ku falka daga barci\nKu karɓi Mai Cetonmu tun yanzu\nZa ya ba kiu rai na har abada\nKarɓi ceto yabnzu.\n\nKorus\n\n",
      title: "529-Ubangijimu Mai Yawan Ƙamna",
      tune: "Jesus my Saviour to Bethlehem Came"),
  Hymns(
      author: "Chindat  Peter",
      favorite: 0,
      id: 530,
      lyric: "Ubangijina cikin sama\nMuna roƙonka\nBisa ga alkawarin ka\n",
      title: "530-Ubangijina Cikin Sama",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 531,
      lyric:
          "KORUS\nUbanmu na sama a tsarkake sunanka\nMulkinka shi zo a nan\n\n1.\n Abin da kake so a yi shi cikin duniya\nKamar yadda a ke yi a sama\n\nKorus\n\n2.\n Ka bamu yau abincin yini\nKa gafarta laifofinmu\nKamar yadda muma mu ke gafarta ma\nWaɗanda suka yi mana laifi\n(Solo: “Allah Ubanmu.”)\nKorus\n\n3.\nKada ka kai mu cikin jaraba\nAmma ka cece mu daga mugu\nGama mulki, girma, iko naka ne\nHar abada abadin\n(Solo: “Allah Ubanmu.”)\nKorus\n\nKaratu  Matta 6: 9-12\n\n\n",
      title: "531-Ubanmu Na Sama",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 532,
      lyric:
          "1.\n Wa ke samun albarka daga Ubangiji ?\nWanda ya ke karanta\nDaga Litaffinsa.\nHar ya ji ya kiyaye\nAbin da ke ciki,\nShi zai sami albarka\nDaga hannuwansa.\n\n2.\n Wa ke samu albarka daga Ubangiji ?\nWanda an gafarta\nMasa duk laifofinsa\nBa lissafta gare\nDukan muguntarsa.\nAllah zaya zubda su\nCikin zurfin teku.\n\n3.\n Wa ke samu alabarka daga Ubangiji ?\nWanda ba ya biba ta\nShawarar mugu ba.\nKo a cikin hanyarsa\nBa ya tsaya a ciki,\nMarmari da tunani\nCikin shari’arsa.\n\n4.\n Wa ke samu albarka daga Ubangiji ?\nShi mai faɗin gaskiya\nCikin zuciyarsa.\nYana tafiya sosai\nDa aikin adalci\nBa shi tsegume daɗai\nKo zagin abokan shi.\n\n5.\n Wa ke samu albarka daga Ubangiji ?\nWanda a ke tsananta\nSabo da adalci\nKo mu kan sha wahala\nSabo da sunansa\nLadarmu mai girma ce\nCan a cikin sama.\n\n6.\n Wa ke samu albarka daga Ubangiji ?\nWanda ya ke jimrewa\nLokacin jaraba\nAllah Mai aminci ne\nYa yi hanya tsira\nFarin ciki mu ke yi\nDon ya ci nasara.\n\n7.\n Wa ke samu albarka daga Ubangiji?\nWanda ya ke jiransa\nKomowar ɗan Allah.\nYa yi shirin zamansa,\nYa bar bin duniya.\nYesu yana zuwa kuwa\nBiɗan masu-binsa.\n\n",
      title: "532-Wa Ke Samun Albarka Daga Ubangiji?",
      tune: "Feast of St. Stephen/ Good King Wenceslas"),
  Hymns(
      author: "",
      favorite: 0,
      id: 533,
      lyric:
          "1.\n Wa ke son salama ne? Ina so.\nWa ke son salama ne? Ina so.\nSalama wadda Yesu ya ba ni,\nYesu ya ba ni, salama wadda Yesu ya ba ni,\n\n2.\n Wa ke son gidan sama? Ina so.\nWake son gidan sama? Ina so,\nGidan nan wanda Yesu ya ba ni,\nYesu ya ba ni gidan nan, wanda Yesu Ya ba ni.\n\n",
      title: "533-Wa Ke Son Salama Ne?",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 534,
      lyric:
          "Wa ke wajen Allah, wa zai bauta shi,\nWa zai taimake shi, shaida ƙamnarsa?\nWa zai bar bin duniya, duka da tsohon rai?\nWa ke wajen Allah, wa zai ci gaba?\nMuna wajen Allah, muna ƙamnarshi!\nMuna wajen Allah, mu na Allah ne!\n\n\n\n",
      title: "534-Wa Ke Wajen Allah, Wa Zai Bauta Shi",
      tune: "Who Is on the Lord’s Side"),
  Hymns(
      author: "",
      favorite: 0,
      id: 535,
      lyric:
          "Wa ne ne kamar ka ya Allah?\nWa ne ne kamar ka ya Allah?\nCikin alloli duka wa ne ne kamar ka?\nYabo cikin tsarki, ka isa ɗaukaka\nKa yi ayyukan ban mamaki.\n\n",
      title: "535-Wa Ne Ne Kamar Ka Ya Allah?",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 536,
      lyric:
          "1.\n Walƙiya, walƙiya, tamrari\nGa su abin mamaki\nAllah mai hikima ne\nShi ya sa su can lalle\n\nShi ya ba mu Yesu fa\nShi ya kawo gafara\nShi ya sha wahala ma\nDon Shi kawo ceto fa.\n\n2.\n Lokacinda Allah fa\nYa zo nan a duniya\nAn haife shi ɗan yaro\nAn sa sabon tamraro\n\nTamraro ya bi da su\nMai Iko ya tsare su\nHar sun ga Mai Cetonsu\nSuka ba shi zuciyarsu.\n\n3.\n Walƙiya, walƙiya, tamraro\nBi da mu har Mai Ceto\nZa mu ba shi zuicyarmu\nZa mu ba shi ranmu duk\n\nZa shi zama sarkinmu\nZa shi mulk zuciyarmu.\nWalƙiya, walƙiya, tamraro\nBi da mu har Mai Ceto.\n\n\n",
      title: "536-Walƙiya, Walƙiya, Tamrari",
      tune: "Twinkle, Twinkle Little Star/A-B-C-D"),
  Hymns(
      author: "",
      favorite: 0,
      id: 537,
      lyric:
          "[Wa za ya tsayar rana zuwa Yesu,\nWa za ya tsaya rana zuwansa.] 2x\n\nWanda ya bi Yesu\nSai ya ɗaga hannu.\nWanda ya bi Yesu\nSai ya buga hannu\nWanda ya bi Yesu\nSai ya yi rawa-ah.\n\n",
      title: "537-Wanda Ya Bi Yesu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 538,
      lyric:
          "Wanene Mai Ceto ? Ba wani Mai Ceto\nSai Yesu haifaffe kana yi mamaki\nTo, bari in bishe ka, Allah ne ya aika da Jibrailu.\n\nKa za ki haifi ɗa, za a ce da shi Yesu,\nShi ne Mai Ceto na duniya duka.\nMu zo mu karɓa fa, mu zo mu karɓa fa.\nKu yi ta murna don ceto ya zo.\nKalma ya iso, mu karɓe shi.\n\n",
      title: "538-Wanene Mai Ceto ? Ba Wani Mai Ceto",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 539,
      lyric:
          "Wanene mai ceto? Ba wani mai ceto\nSai Yesu haifaffe. Kana yin mamaki?\nTo, bari in bishe ka,\nAllah ne ya aiko da Jibra'ilu\nYa ce da Maryamu, ta wurin Ruhu\nKe za ki haifi ɗa, za a ce da shi Yesu.\nShi ne mai ceto na duniya duka,\nMu zo mu karƃa fa, mu za mu karƃa fa.\nKu yi ta murna don ceto ya zo.\nKalma Ya iso, mu karƃe shi.\n\n\n",
      title: "539-Wanene Mai Ceto?",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 540,
      lyric:
          "Wanene ni?\nYesu\nWanene ni?\n\nWanene ni?\nYesu\nWanene ni?\n\nIn banda kai\nYesu\nWanene ni?\n\nIn banda kai\nYesu\nWanene ni?\n",
      title: "540-Wanene Ni ?",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 541,
      lyric:
          "1.\n Wanene shi Ɗan Maryamu\nTa haifi ɗa wurin Ruhu ?\nShi ne Yesu Ɗan Allah,\nShi ne Yesu Mai Cetonmu.\nSai mu faɗi gabansa,\nMu naɗa shi Ubangiji.\n\n2.\n Wanene shi da ya mutu,\nSabili da zunubanmu ?\nShi ne Yesu Ɗan Allah,\nShi ne Mai Cetonmu.\nSai mu faɗi gabansa\nMu naɗa shi Ubangiji.\n\n3.\n Wanene shi ran Lahadi\nYa fito daga kabari?\nShi ne Yesu Ɗan Allah,\nShi ne Yesu Mai Cetonmu,\nSai mu faɗi gabansa\nMu naɗa shi Ubangiji.\n\n\n",
      title: "541-Wanene Shi Ɗan Maryamu",
      tune: "Who Is He in Yonder Stall?"),
  Hymns(
      author: "",
      favorite: 0,
      id: 542,
      lyric:
          "1.\n Wannan duniya babu salama fa.\nMutane suna neman salama\nta wurin neman kayan duniyan nan.\nKomi ka samu a can zai dawama.\n\nKORUS\nNemi Yesu tun yanzu ƴan'uwa, ɗan’uwa,\ngidan Yesu da cikakken salama,\na can sama ba kamar duniya ba.\nKomi ka samu a can zai dawama.\n\n2.\n Wannan duniya babu salama fa.\nDubi masu arzikin duniya nan,\nsun gina gidaje masu daraja.\nDuk da haka ba su da sakewa can.\n\nKorus\n\n3.\n Wannan duniya babu salama fa,\ndubi masu ilimin duniya nan,\nSuna da jirage da motoci.\nDuk da haka wasu na Kisan Ƙansu.\n\nKorus\n\n",
      title: "542-Wannan Duniya Babu Salama Fa",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 543,
      lyric:
          "1.\n Wannan rana, wannan rana\nDa Allah ya yi, da Allah ya yi\nMu yi murna, mu yi murna\nMu ɗaukaka shi, Mu ɗaukaka shi.\n\nWannan ranan da Allah ya yi (HEY!)\nMu yi murna, mu ɗaukaka shi (HEY!)\nWannan rana, wannan rana\nDa Allah ya yi.\n\n2.\n Wannan sa'a, wannan sa'a\nDa Allah ya yi, da Allah ya yi\nMu yi murna, mu yi murna\nMu ɗaukaka shi, Mu ɗaukaka shi.\n\nWannan sa'a da Allah ya yi (HEY!)\nMu yi murna, mu ɗaukaka shi (HEY!)\nWannan sa'a, wannan sa'a\nDa Allah ya yi.\n",
      title: "543-Wannan Rana",
      tune: "This is the day that the Lord has made"),
  Hymns(
      author: "",
      favorite: 0,
      id: 544,
      lyric:
          "1.\n Yau muna da murna, muna godiya\nGa Allah Uba domin wannan rana\n25 ga watan 12, shekara kuma ta 96\nRanar da masu bi duka suka keɓe\nDon tunawa da haifuwar Issa Almaihu.\n\nKORUS\nYau...dukan masu bi, suna yin murna\nYau...a duniay duka, suna yin murna\nYau...cikin Afirka, suna yin murna\nYau...cikin (ƙasa), suna yin murna\nYau...cikin (gari), suna yin murna\nYau...cikin (ekklisiya), suna yin murna\nYau...mala’iku ma, suna yin murna (2x)\nM-m-m-m-m-m, muna yin murna\nHa-ha-ha-ha-le-lu-yah, muna yin murna.\n\n2.\n Yau an haifa mana Issa Almasihu\nƊan Maɗaukaki, ya zo duniya nan.\nBudurwar Maryamu ce, fa ta haife shi.\nJibra’ilu ne, ya shaida sunansa.\nHaifuwarsa kuma, abin al’ajabi ce.\nGirma da ɗaukaka nasa ne har abada.\n\nKORUS\nIs—sa Ɗan Maryamu?...I, Ɗan Maryamu.\nIs—sa Kalmatulahi...I, Kalmatulahi.\nIs—sa Ruhunlahi...I, Ruhunlahi\nIs—sa Mai Cetonmun...I, Mai Cetonmu\nM-m-m-m-m-m, muna yin murna\nHa-ha-ha-ha-le-lu-yah, muna yin murna.\n\nDaga #45\nKaratu na 1: Yohana 3:16\n“Gama Allah ya yi ƙaunar duniya, har ya bada ɗansa haifafe shi kaɗai, domin dukan wanda yana bada gaskiya gareshi, kada ya lalace, amma ya sami rai na har abada.”\n\nKaratu na 2: Yohana ta 1 5:12\n“Wanda yake da Ɗan, yana da rai,\nWanda ba ya da Ɗan Allah, bai da Rai”\n\n\n",
      title: "544-Waƙar Noël : Yau Muna da Murna",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 545,
      lyric:
          "Ya Allah kai ne Allhanmu\nTun da wuri zan neme ka,\nRaina yana jin ƙishinka\nJikina yana marmarin ganinka\nYa Allah ka ji kirata\nKa kasa kunne ga addu’ata,\nKa zo, ka bisheni, ya Masoyi\nTun daga iyakar duniya nan\nYa Allah, kai ne Allahna.\n\nTune-Native\nCategory :\n\n",
      title: "545-Ya Allah Kai Ne Allhanmu",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 546,
      lyric:
          "Ya Allah...ah na gode,\nYa Yesu (Yesu) na gode,\nYa Ruhun Allah, Ruhun Taimaka,\nYa Ruhun Mai Tsarki, a godiya.\n",
      title: "546-Ya Allah...ah Na Gode",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 547,
      lyric:
          "1.\nYa Allahna ina ta yin mamaki\nKan ayyukan waɗanda kai ka yi\nKa hallici sammai da dukan duniya\nKana ta mulkin su ba fasawa.\nKORUS\nSai dai in shaida daga zuciya\nBabu misalin girmanka.\n\n2.\nKa yi magana da tekuna sun taru\nKa sa ta tsiro da anfaninta\nKa hallici ɗan Adam cikin duniya\nKa ba mutum lumfashin hancinsa.\n\nKorus\n\n3.\nAmma abin da ya fi ban mamaki\nShi ne yadda ka ba mu mai fansa\nƊanka ya zo ya mutu maimakonmu\nCikin wannan mugunwar duniya.\n\nKorus\n\n4.\nRan da zan tsaya gaban kursiyinka\nZan ga dukan ɗaukakar ka\nZan tuna yadda cikin yawan ƙaunar\nKa ba mu salamar ka\n\nKorus\n\n\n",
      title: "547-Ya Allahna",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 548,
      lyric:
          "Ya Allahna bincike zuciyata\nAuna ni yau, ka san tunanina\nDube ni dai ko ni mai tsabta ne\nNi daga laifi duk ka tsarkake.\n\n",
      title: "548-Ya Allahna Bincike Zuciyata",
      tune: "Search Me O God"),
  Hymns(
      author: "",
      favorite: 0,
      id: 549,
      lyric:
          "KORUS\nSolo : Ya ba ni, ya ba ni rai.\nDuka : Ya ba ni, ya ba ni rai.\n(2x)\n\nSolo : Ya ba ni sabon rai ƙyauta.\nDuka : Ya ba ni sabon rai ƙyauta.\n(2x)\n\n\n1.\n I was lost and you found me.\nI was blind and you made me see.\nNow I live to testify that you\n(2x)\nSaved me and it was in Bethlehem.\n\nKorus\n\n2.\n Mata:\nHe has given me hope (Maza: “Hope”),\nSo I can walk on the road (Maza: “Road”)\nThat leads me home (Maza: “Home”).\n\nKorus\n\n\n\n",
      title: "549-Ya Ba Ni Rai",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 550,
      lyric:
          "Ya Ubangiji mun gode\nDon ka sake tada mu\nHar ka tara mu gabanka\nDon mu furta yabonmu.\nCikin dukan duhun dare\nKana nan tare da mu,\nBa abin da ya same mu\nTun da kana tsaronmu.\n",
      title: "550-Ya Ubangiji Mun Gode, Don Ka Sake Tada Mu",
      tune: "Come Thou Fount of Every Blessing /Nettleton"),
  Hymns(
      author: "",
      favorite: 0,
      id: 551,
      lyric: "Ya Ubanmu, mun gode maka\nKa yi da ƙyau, muna yabonka\n\n",
      title: "551-Ya Ubanmu, Mun Gode Maka",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 552,
      lyric:
          "1.\n Ya Yesu mun kangara,\nGagara muka yi,\nTun muna ƙanƙanana\nZamanmu zaman ƙi.\nShaiɗan ya magance mu\nYa raba mu da kai\nDa muka yardar masa\nYa ɓad da mu sosai.\n\n2.\n Ya Yesu, muguntarmu\nYanzu sai daɗuwa\nKamar ta halaka mu\nMu ma, har abada\nMun yiwo gudun tsira,\nDa roƙo,  muka zo\nDa ƙazantaccen ranmu\nKa wanke shi ƙalau.\n\n3.\n Sa’annan, ya Ubangiji\nMu naka sababbi,\nKa tsare mu ga Mugun,\nHar bi da mu ka yi.\nA kwananmu a gaba\nA hannunka mu ke\nBiyayya har ta kasa\nGa mu, mu naka ne.\n\n",
      title: "552-Ya Yesu Mun Kangara",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 553,
      lyric:
          "1.\n Ya Yesunmu, ka ba mu Ruhunka\nKu dattiɓai ku aikinsa,\nKu samari ku yi ta shelarsa\nWanda ya bi Yesu, tsira za ya yi,\nMuna murna har yau zu mu yi\nAlleluya, Amin, Alleluya, Amin,\nAlleluya, Amin.\n\n2.\n Yesu yana zuwa, za ya karɓe mu.\nAbin da ka shibka, za ka girbe shi\nIdan ka yanke rumbuna, za ka kai\nZinariya ce, ko azurfa ce, ko itace ne\nKo ciyawa ce,\nMmm, babban kuka, rana ta hume ka.\nMmm, ka ji kumya, rana ta hume ka.\n\n3.\n Ku masu bi, Almasihu\nKu duba kwatamci,\nAkan budurwai, goma,\nBiyar, masu azanci\nSuna cewa, ina ango?\nNi ban san ku ba, in ji Yesu,\nNi ban san ku ba, ku rabu da ni\nNi ban san ku ba, in ji Yesu.\nHalleluya, Amin, Halleluya, Amin\nHalleluya Amin.\n\n\n",
      title: "553-Ya Yesunmu, Ka Ba Mu Ruhunka",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 554,
      lyric:
          "Ya ƴanta mu\nYa ƴanta mu\nAlmasihu ya ƴanta mu\nMu dā mun karkace,\nMu bayan Iblis ne\nAlleluya! Ya ƴanta mu\n\n",
      title: "554-Ya Ƴanta Mu",
      tune: "It’s All Right"),
  Hymns(
      author: "",
      favorite: 0,
      id: 555,
      lyric:
          "1.\n Yabi Yesu, yara ƙanƙanana\nAllah ne, Mai Ҡamna\nYabi Yesu yara ƙanƙanana\nAllah ne, Mai Ҡamna.\n\n2.\n Yi godiya, yara ƙanƙanana\nAllah ne, Mai Ҡamna\nYi godiya yara ƙanƙanana\nAllah ne, Mai Ҡamna.\n\n3.\n Girmama Shi, yara ƙanƙanana\nAllah ne, Mai Ҡamna\nGirmama Shi, yara ƙanƙana,\nAllah ne, Mai Ҡamna.\n\n",
      title: "555-Yabi Yesu, Yara Ҡanƙanana",
      tune: "Praise Him, All Ye Little Children"),
  Hymns(
      author: "",
      favorite: 0,
      id: 556,
      lyric:
          "Yabo guda ɗaya cikin waƙarmu,\nHaske za mu bayar domin waɗansu\nSai mu badar shaidar Yesu fa yanzu\nBi shi, bi shi, za ni bi Yesu\nIn ɗaya ce zan je domin shaidarsa.\nTashi, tashi, kama aikin Yesu.\nMu masu bin Yesu mu yi ta yi.\n\nAkwai hanyoyi guda biyu ne\nBabbar ta nufa wajen hallaka\nHanyar ƙaramar ta nufa wagen hallaka\nKai ne da zaɓen wanda za ka bi.\nZaɓi hanyar wanda za ka bi yau,\nKo babbar ko ƙaramar,\nZaɓi mafi kyau\nNi na zaɓi ƙanƙanuwar hanyar\nDomin in sami rai na har abada.\n\n\n",
      title: "556-Yabo Guda Ɗaya Cikin Waƙarmu",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 557,
      lyric:
          "1.\n Yana da daraja? (Daraja).\nYana da daraja? (Daraja),\nGidan Ubangiji yana da daraja.\n\n2.\n Yana da kwanciyar rai? (Kwanciyar rai).\nYana da kwanciyar rai? (Kwanciyar rai).\nGidan Ubangiji yana da (Kwanciyar rai).\n\n3.\nYana da salama? (Salama).\nYana da salama? (Salama).\nGidan Ubangiji yana da salama.\n\n",
      title: "557-Yana da Daraja?",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 558,
      lyric:
          "Yana zuwa, Yesu na zuwa,\nYana zuwa mai shari'ar gaskiya. (Maimata da yawa)\n\n",
      title: "558-Yana Zuwa",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 559,
      lyric:
          "Yanzu sai ka zo, ka zo\nYanzu sai ka zo\nWurin Mai Ceto zan tsiradda kai\nYanzu sai ka zo.\n\n",
      title: "559-Yanzu Sai Ka Zo, Ka Zo",
      tune: "O, Say But I’m Glad (chorus)"),
  Hymns(
      author: "",
      favorite: 0,
      id: 560,
      lyric:
          "1.\n Yara duka, yara duka\nYammata duk da maza\nShi ku zo dai, sai ku zo dai\nMu yi ta waƙa, mu yi ta waƙa.\n\n2.\n Karɓi Yesu, karɓi Yesu\nZai cece ku, zai cece ku,\nZo, mu bi shi, zo, mu bi shi\nKu karɓi Yesu, ku karɓi Yesu.\n\n",
      title: "560-Yara Duka, Yara Duka",
      tune: "London’s Burning"),
  Hymns(
      author: "Thomas da Aichatou Johnson",
      favorite: 0,
      id: 561,
      lyric:
          "1.\n Zo, sun ce mi-ni, pa rum pum pum pum.\nAn hai-fi sar-kin-mu, pa rum pum pum pum.\nMun ka-wo kyau-tai can, pa rum pum pum pum.\nZa mu je wu-rin shi, pa rum pum pum pum,\nrum pum pum pum, rum pum pum pum,\nZa mu ya-be shi, pa rum pum pum pum,\nInda mun zo.\n\n\n2.\n Ja-ri-ri Yesu, pa rum pum pum pum.\nI-na da ta-lau-ci,  pa rum pum pum pum.\nBan da kyau-ta ba, pa rum pum pum pum .\nSai wan-nan gan-ga-na, pa rum pum pum, pum, rum pum pum pum, rum pum pum pum,\nNa i-ya bu-ga shi, pa rum pum pum pum,\nIn kun so?\n\n\n3.\n Ma-ry ta gyaɗa, pa rum pum pum pum.\nIs-sou, ya yin yarda, pa rum pum pum pum.\nNa buga masu shi, pa rum pum pum pum.\nNa bu-ga gan-ga-na, pa rum pum pum pum,\nrum pum pum pum, rum pum pum pum,\nYesu, yayin mur-mu-shi, pa rum pum pum pum.\nDo-min-a\n\n",
      title: "561-Yaro Mai Ganga",
      tune: "Little Drummer Boy"),
  Hymns(
      author: "",
      favorite: 0,
      id: 562,
      lyric:
          "1.\n Yau cikin Birnin Dauda an haifa mana Mai Ceto.\nYau Yesu ya shigo duniya, Ɗan Allah mai girma.\nCikin sakarkari an kwantadda shi.\nShanu suna kallonsa, ana yabon mai girma.\nA can a Baitalahmi an haifi Kiristi\nShi ne, shi ne maɗaukaki, Allah mai girma.\n\n2.\n Mala'ika fa yau ya zo gun makiyaya.\nYa ce masu, Yau Kiristi Ɗan Allah ya iso.\nAnnabawa sun yi annabcin zuwansa.\nAnnabcinsu ya fi saninmu, Ɗan Allah ya iso.\nMu je mu gaida jaririn nan mai ceto.\nShi ne, shi ne, ɗan ragon Allah mai ceto.\n\n3.\n Yau mala'iku cikin sama suna ta yabo.\nSuna cewa Alhamdu ga AIIah a duni ya salama.\nBabban Sarki ne a duniyan nan duka.\nƊaukaka duka nasa ne, an haifa mana mai ceto.\nHalle-Halleluya Ɗan Allah, sabko.\nYau ne an haifi wannan sarkin Yahudawa.\n\n4.\n Shehuna sun ga tamraron nan daga gabas.\nYanzu a Baitalahmi sun ga tamraron nan,\nSun zo sun durƙusa, suna ta yabo,\nKayan zinariya ne suna zuba gun Yesu.\nMu je mu kawo ziyaramu gun Yesu,\nMu je, mu yabi jaririn nan mai ceto.\n\n5.\n Halleluya. Halleluya, Kiristi ya iso\nAikakke ne shi, tilo 'Dan Allah ya iso.\nYahudawa suna ta jiran zuwansa.\nHar wa yau ba su sani yau ne Kiristi ya sabko\nHar yau suna ta jiran Kiristi mai ceto,\nHar yau suna ta duban hanyar mai ceto.\n\n",
      title: "562-Yau Cikin Birnin Dauda An Haifa Mana Mai Ceto",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 563,
      lyric:
          "1.\n Yau ranar murna ce ga mu masu bin Yesu\nDomin jinkansa, da alherinsa\nSai ku zo mu yi tsale, mu ɗaukaka Allah Uba\nDomin ƙaunarsa, a garemu\nDomin cetonsa, ta wurin Yesu ɗan Allah\n(sai ku zo)\n\nKORUS\nSai ku zo mu yi murna\nMu ɗaukaka Allah Uba\nMu miƙa godiyarmu\nGa Allah mai kamnar duniya\n\n2.\n An haifi Yesu a Baitalahmi\nDaga budurwa, Maryamu\nAka haife shi, a cikin garke\nAka naɗe shi…, cikin tsummoki\nShi ke ɗan Allah, mahalicin Sama da kasa\n(sai ku zo)\n\n3.\n Ruhun Yahweh, yana a kansa\nYa rufe shi da rigar adalci\nYa aiko shi…, don ya kawo yanci\nGa waɗanda, ke cikin zunubi\nDon Ya bamu rai, na har abada abadin\n(sai ku zo)\n\n",
      title: "563-Yau Ranar Murna Ce",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 564,
      lyric:
          "1.\n Yesu ba shi da hannu sai namu\nDon aikinsa nan duniya\nBa shi da ƙafa sai namu\nDon a biɗa masu ɓacewa.\nBa shi da harshe sai namu\nDon a shaida mutuwar Yesu\nBa wata hanya sai ranmu\nDon a furta bisharar ceto.\n\n2.\n Duniya ba ta san karatu\nMu ne littafinsu nan.\nMasu zunubi na diban mu\nKo mu masu-gaskiya ne.\nAikinmu maganarmu duka\nSu ne labarin Yesu.\nKo duniya ta ga Mai Cetonka.\nKo sun rasa, ganinsa yau?\n\n3.\nIna labarin na aikinka yau?\nKo nashi ko naka ka yi?\nIna ƙafa ta kai ka yau ?\nTa bi duniya ko Ubangiji ?\nIna magana da ka faɗi yau ?\nKo Yesu ya faɗi ko kai ?\nKo zuwa na Yesu ya fi kusa yau\nSabo da ka shaidarshi.\n\n",
      title: "564-Yesu Ba Shi da Hannu Sai Namu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 565,
      lyric:
          "YESU BABBAN MAI MAGANI\n\nKORUS\nUba ; kai ne babban, mai magani,\nKana ba mu lafiya.\nKana warkadda cutarmu a koyaushe.\n(2x)\n\n1.\n A tafkin Baitasda, akwai wani marar lafiya,\nWanda ya yi shekara, talatin da takwas.\nYa sha wahala da yawa, yana fama da cutar,\nAmma da ya sadu da Yesu, sai ya sami warkaswa.\n\nKorus\n\n2.\n Akwai wata mace, ta yi shekara sha biyu,\nTana zubar da jini, tana fama da cuta ,\nTa sa wahala da yawa, ta hannun likitoci,\nAmma da taɓa rigar Yesu, sai ta sami warkaswa.\n\nKorus\n\n3.\n Ka warkar da makafi, Yesu, ka warkar da bebaye,\nKa warkar da guragu, Yesu, ka tsarkake kutare ,\nKa tsauta wa aljanu, Yesu, ka tada matattu,\nHar yanzu da koyaushe, kai ne mai ikon warkaswa.\n\nKorus\n\nKaratu : Yahaya 5 : 1-9,\n\n\n",
      title: "565-Yesu Babban Mai Magani",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 566,
      lyric:
          "1.\n Yesu da iko ya tsare ni nan\nDaga tuntuɓe, ya sanya ni can\nWurin ɗaukaka da darajarsa,\nDon Yesu ya tada ni.\n\nKORUS\nYesu ya ɗaga ni\nYesu ya ɗauke ni\nDaga duhun zunubi zuwa hasken ceto,\nI,Yesu ya tada ni.\n\n2.\n Nan ɗiyan Ruhu za a ga wurina,\nFarin ciki, salama tsawon jimrewa\nAminci, masiha, tawali’u\nHar kamewa da nagarta.\n\nKorus\n\n3.\n Zan yi bincikin littafinsa kuwa,\nZa ni makilta kamar Yesu fa.\nZa ni ga fuskarsa Ubangijina,\nDon Yesu ya tada ni.\n\nKorus\n\n",
      title: "566-Yesu da Iko Ya Tsare Ni Nan",
      tune: "Jesus Has Lifted Me"),
  Hymns(
      author: "",
      favorite: 0,
      id: 567,
      lyric:
          "1.\n Yesu gaban Kayafas, Yesu gaban mayan malamai,\nYesu gaban Bilatus, domin ya fanshe ni.\nAn yi masa bulala, an yi masa ba’a,\nYesu ya sha wahala, domin ya cece ni.\n\nKORUS\nYesu ya sha wahala (3x)\nDomin ya fanshe ni.\n\n2.\n An tofa masa miyau, da babbakun magana.\nYesu ya ɗauki giciye domin ya fanshe ni.\nYesu a bisa giciye, ya zub-da jininsa,\nYesu a cikin Kabari, domin ya cece ni.\n\nKorus\n\n3.\n Yesun mu ya tashi da rai, Yesun mu yana da rai\nYesu ya hau cikin sama domin mu sami rai\n\n4.\n Ka tuna domin ran dawowarsa\nGama ranar nan ƙarshe ne. (ƙarshe ne)\nƘarshe ne, ƙarshe ne,\nGama ranan na ƙarshe ne.\n\nKorus\n\n5.\n Ka tuna da miyagun ayyukanka daina su\nKamin Yesu ya dawo. (A ƙarshe)\nAyyukan miyagu, ka daina su\nKamin Yesu ya dawo.\n\nKorus\n\n6.\n Ka tuna randa za ka Kabari\nGama ranan nan ƙarshe ne.\nƘarshe ne, ƙarshe ne\nRan da za ka Kabari, ƙarshe ne.\n\nKorus\n\n",
      title: "567-Yesu Gaban Kayafas",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 568,
      lyric:
          "Yesu hanyarmu ne\nYesu gaskiya ne\nYesu shi ne mai rai\nShi kuwa nawa ne.\n\n\n\n",
      title: "568-Yesu Hanyarmu Ne",
      tune: "Jesus Christ is the Way (Letitia Schuler)"),
  Hymns(
      author: "",
      favorite: 0,
      id: 569,
      lyric:
          "KORUS\nYesu ina yabonka domin kai ka cece ni\nIna cike da murna don wannan alherinka\nHar ka bada jininka (fansata ni mai zunubi)\n\n1.\n Alherin mai cetona yana da daɗin ji\nYa cece ni da jininsa (don yana ƙaunata)\n\nKorus\n\n2.\n Da can fa ni batace ne, Yesu Kristi ya same ni\nDa can fa ni makoho ne (ya buɗe idanuna).\n\nKorus\n\n3.\n Ubangiji ni zan bayar domin wannan alherinka\nZan miƙa jiki haɗaya (tare da zuciya)\n\nKorus\n\n4.\n Ruhun alheri zugani, ƙarfafa niyata\nKa bishe ni cikin waƙa (In shaida bishararka)\n\nKorus\n\n",
      title: "569-Yesu Ina Yabonka",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 570,
      lyric:
          "1.\nYesu Kristi mu ne naka\nZa mu bi ka ko’ina\nZa mu tada tutar namu\nZa mu bi maganarka\nMu ƴan yaƙin ka, ya Yesu\nZa mu bi ka ko’ina. [2x]\n\n2.\n Cikin duhun wannan duniya\nZa mu nuna haskenka\nZa mu keɓe zukatanmu\nDaga dukan zunubi.\nMu ƴan yaƙinka, ya Yesu\n[Za mu bi ka ko’ina.] 2x\n\n3.\n Ubangiji muna roƙo\nTsarkakke ƴan yaƙinka\nBan da za ka dawo nan kuwa\nIske mu da aminci\nMu ƴan yaƙinka, ya Yesu\n[Daga nan har abada.] (2x)\n\n",
      title: "570-Yesu Kristi Mu Ne Naka",
      tune: "Guide me, O Thou great Jehovah"),
  Hymns(
      author: "",
      favorite: 0,
      id: 571,
      lyric:
          "Yesu Kristi muna zuwa\nZuwa wurinka yanzu\nSai ka taimake mu duka,\nSai ka ji addu’armu\nMuna so ka ƙarfaffa mu\nGa mu nan a gabanka\nSai ka sa albarkacinka\nBisa wannan taruwa.\n",
      title: "571-Yesu Kristi Muna Zuwa",
      tune:
          "Glorious things of thee are spoken/Austria/Nettleton-Come Thou Fount"),
  Hymns(
      author: "",
      favorite: 0,
      id: 572,
      lyric:
          "1.\n Yesu Kristi Ubanjinmu\nMuna kawo maka godiya\nDon ka kwashe alhinin mu duk\nSa’anan ka ba mu salama\n\nKORUS\nSalama….ta Allah\nWadda ta fi gaban ganewa\nSalama….ta Allah\nTana tsare duk zuciyata.\n\n2.\n Akwai murna da farin ciki\nDomin dukan masu tsabtan rai\nIn mun tsaya da bangaskiya\nZa ka ba mu salama sosai.\n\nKorus\n\n",
      title: "572-Yesu Kristi Ubanjinmu Muna Kawo Maka Godiya",
      tune: "The sweet by and by/There’s a land"),
  Hymns(
      author: "",
      favorite: 0,
      id: 573,
      lyric:
          "1.\n Yesu Kristi yana zuwa don ya ɗauki masu bi\nBar mu kasance da shiri, fitilinmu suna ci\nWanda ya yi shiri duka zai tafi tare da shi\nYesu yana dawowa a duniya.\n\nKORUS\nYesu yana dawowa a duniyan nan\nDon ya fyauci masu bi, Ya kai su can.\nKa yi shiri fa mai bi, ka daidaita tafiyarka,\nYesu yana dawowa a duniya.\n\n2.\n Duba ango yana zuwa, ba labari, ba zato\nRanan nan ba sauran tuba, ba kuwa wani taimako.\nKada dai ka yi jinkiri har Ubangiji ya zo.\nYesu yana dawowa a duniya.\n\nKorus\n\n3.\n Wanda ba ya karɓi Yesu ba zai shiga damuwa,\nBabu sauran shirin kome, babu sauran gafara.\nKai da ka ke ƙin Mai Ceto, rabonka sai balaka\nYesu yana dawowa a duniya.\n\nKorus\n\n4.\n Can a sama Gidan Allah, yawan daɗi za mu ji\nMuna nan tare da Yesu, muna hutawa da shi\nBabu sauran ɓacin zuciya, babu sauran a zunubi\nYesu yana dawowa a duniya.\n\nKorus\n\n\n",
      title: "573-Yesu Kristi Yana Zuwa Don Ya Ɗauki Masu Bi",
      tune: "Yes, Our Lord is Coming Back to Earth Again/I Am Watching For"),
  Hymns(
      author: "Thomas da Aichatou Johnson",
      favorite: 0,
      id: 574,
      lyric:
          "1.\n Yesu Kristi, muna jira\nAlkawalin Allahnmu.\nAnnabawa suna shaida\nKana batun cewarsu\nZa ta yi ciki budurwa\nIkon Ruhun Allah ne\nZo da sauri, albarka mu\nCika duka annabci\n\n2.\n Baitalahmi, ƙauyen Dauda\nCikin Yahudiya ne.\nShi ne wurin haifuwarka\nYadda Mika ya faɗi.\nIssufu da Maryamu\nSun yi bulaguro can\nSaboda lissafin ƙasa\nDomin dokar Romawa.\n\n3.\n Yesu, kana da sunaye\nKirgarsu, su nawa ne?\nAlmasihu da Shafaffe\nSarkin salama kai ne.\nBegen duniya, Immanuel\nMashawarci mai kyau ne.\nKalmar Allah, Hasken haske\nMai farko da Mai ƙarshe.\n\n",
      title: "574-Yesu Kristi, Muna Jira",
      tune: "Come Thou Long Expected Jesus/ Hyfrydol"),
  Hymns(
      author: "",
      favorite: 0,
      id: 575,
      lyric:
          "Yesu Mai Ceto, lalle shi ne mai cetonmu\nMuna murna murna mai yawa za mu yi,\nDomin Yesu ya mutu domin laifinmu.\nYa mutane. ku tuba, ku tuba,\nKu tuba, ku bi Yesu.\nKada ku zamna a cikin zunubanku.\nKu zo yanzu, ku tuba, ku bi Yesu.\nBa wata hanya do za mu sami ceto\nBa wani Allah a cikin wannan duniya,\nDa ya iya ya wanke zunubanmu.\nSai Yesu kaɗai, Ɗan Allah mai iko duka,\nShi ne ya zo, ya mutu domin laifinmu\nShi mai rai ne, ya tashi, ya tashi,\nYa tashi daga kabari.\nYa hau sama, yana shirya mana wuri.\nWata rana za mu je, za mu je,\nZa mu je gidan Allah.\nZa mu raira waƙoƙi na yabonsa\nMu ce masa, halleluya, halleluya,\nZa mu ce masa, halleluya, Amin.\n\n",
      title: "575-Yesu Mai Ceto, Lalle Shi Ne Mai Cetonmu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 576,
      lyric:
          "YESU MAKIYAYI\n\n1.\n Yesu mai kiyona duka inda na tafi\nYesu mai kiyona koyaushe\nDuka inda na tafi gareshi zan dogara\nKarɓi yabona ya Allahna.\n\nKORUS\nYesu makiyayi, makiyayi mai kyau\nYesu makiyayi mai bada rai\nWanda ya bi shi fa hakika ne zai sami rai\nBa zai tafifa da yunwa ba.\n\n2.\n Ni ne makiyayi, makiyayi mai kyau\nNa san tumakina sun san ni\nDuka inda suke hakika ne ina can\nDomin in tsare su daga kerkeci.\n\nKorus\n\n3.\n Akwai wasu tumaki nawa ne basu cikin garke\nIna ƙaunarsu fa kamar ku\nIna umurtarku ku tafi domin ku kawo su\nDomin su zamna suma cikin garke.\n\nKorus\n\n",
      title: "576-Yesu Makiyayi",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 577,
      lyric: "Yesu na kira, Yesu na jira,\nDuk ku zo, dogara gare.\n\n\n\n",
      title: "577-Yesu Na Kira, Yesu Na Jira",
      tune: "Jesus is Willing (M.E. Shorey)"),
  Hymns(
      author: "",
      favorite: 0,
      id: 578,
      lyric:
          "1.\n Yesu na naɗe ka sarkina\nYi mulki cikina\nKa mallake ni duk yanzu\nYesu Mai Cetona.\n\n2.\n Kada in manta da ƙamnarka\nWadda ta kai ga mutuwa\nKada in mance da wahalarka\nYesu Mai Cetona.\n\n3.\n Ko cikin duniyan nan yanzu\nIn tuna da giciyenka\nDa azabar rai da raɗaɗi\nYesu Mai Cetona.\n\n4.\n Ina fa kyauta da zan yi yau,\nShaidar godiyata ?\nNi ba ka zuciya da raina duk,\nYesu Mai Cetona.\n\n",
      title: "578-Yesu Na Naɗe Ka Sarkina",
      tune: "King of My Life, I Crown Thee Now"),
  Hymns(
      author: "",
      favorite: 0,
      id: 579,
      lyric:
          "Yesu ne, Yesu ne, Shi ya panshe ni,\nGafara, kwanciyar rai yalwace ya ba.\nSai ka zo wurinsa, za ka sami ra\nWanda ba shi ƙarewa har abada.\n\n\n",
      title: "579-Yesu Ne, Yesu Ne, Shi Ya Panshe Ni",
      tune: "Wonderful, Wonderful Jesus is to Me"),
  Hymns(
      author: "",
      favorite: 0,
      id: 580,
      lyric:
          "Yesu shi ne hasken duniya,\nShi Mai Ceton duka ne\nShi ya mutu maimakonmu,\nSai mu gaskantadda shi\n\n",
      title: "580-Yesu Shi Ne Hasken Duniya",
      tune: "What a Friend We Have in Jesus"),
  Hymns(
      author: "",
      favorite: 0,
      id: 581,
      lyric:
          "Yesu shi ne Mai Cetona\nYa saye ni da jininsa\nNa ba shi dukan zuciyata\nShi ne shugabana\n\n\n",
      title: "581-Yesu Shi Ne Mai Cetona",
      tune: "I’ll Live for Him"),
  Hymns(
      author: "",
      favorite: 0,
      id: 582,
      lyric:
          "1.\n Yesu ya cece ni daga zunubaina. (3x)\nAkwai sakewa a cikin zuciyata.\n\nKORUS\nAkwai sakewa a cikin zuciyata. (5x)\nUbangiji mai cetona ya sa.\n\n2.\n Na sami sabon rai na sake fa sosai. (3x)\nAkwai sakewa a cikin zuciyata.\n\nKorus\n\n3.\n Halin da ina yi dā, na bar shi tun yanzu. (3x)\nAkwai sakewa a cikin zuciyata.\n\nKorus\n\n4.\n Sata da ina yi dā, na bar ta tun yanzu (3x)\nAkwai sakewa a cikin zuciyata.\n\nKorus\n\n5.\n Rikici da na yi da, na bar shi tun yanzu. (3x)\nAkwai sakewa a cikin zuciyata.\n\nKorus\n\n6.\n Shan giya da na yi da, na bar ta tun yanzu. (3x)\nAkwai sakewa a cikin zuciyata.\n\nKorus\n\n7.\n Gulma da na yi da, na bar ta tun yanzu. (3x)\nAkwai sakewa a cikin zuciyata.\n\nKorus\n\n8.\n Ina da salama fa a cikin zuciyata. \t(3x)\nAkwai sakewa a cikin zuciyata.\n\nKorus\n\n9.\n Yesu Ubangijina ka mallake ni yau. (3x)\nAkwai sakewa a cikin zuciyata.\n\nKorus\n\n",
      title: "582-Yesu Ya Cece Ni Daga Zunubaina",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 583,
      lyric:
          "KORUS\nYesu Almasihu ta wurin mutuwarsa\nYa ci nassara da mutuwa\nYa ba mu iko mu masu bi\nNasara bisa magabci\n\n1.\nRanar mutuwar Yesu Kristi kan giciye\nShaiɗan da mutanensa ke murna\nAmma dukan masu binsa\nSu ne ke nuna baƙin ciki.\n\nKorus\n\n2.\nAmma ranar tashin Yesu Kristi daga Kabari\nDukan masu binsa ke murna\nAmma Shaiɗan da masu binsa\nSu ne ke nuna baƙin ciki.\n\nKorus\n\n3.\nBabban kuskuren da Shaiɗan ya yi a tarihinsa\nShi ne giciye Almasihu\nAmma bai sani ba ya kada kansa\nAmma bai sani ba ya murɗe kansa.\n\nKorus\n\n\n",
      title: "583-Yesu Ya Ci Nassara da Mutuwa",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 584,
      lyric:
          "1.\n Yesu ya mutu a kan giciye,\nAn saukar da jikinsa.\nAka baiwa uwarsa Maryamu\nTa yi baƙin ciki.\n(ya kira)\n\nKORUS\nDa murya mai ƙarfi ya ce,\n“Eloi, Eloi, lama sabaktāni ?\nWato ya Allah, ya Allahna,\nDon mi ka yashe ni ? ”\n\n2.\n Almajirai suka dauki Yesu\nDa iznen Romawa.\nSuka sa shi a cikin Kabari\nSuka rufe ƙofa.\n\nKorus\n\n3.\n Yesu ya mutu a ran juma’a.\nAn bizne shi a ran nan.\nYesu ya tashi a ran Lahadi,\nWato ran Paska ke nan.\n\nKorus\n\n\n",
      title: "584-Yesu Ya Mutu A Kan Giciye",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 585,
      lyric: "Abin da Yesu ya yi mana mun gode\n(Maimata da yawa)\n",
      title: "585-Yesu Ya Yi Mana",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 586,
      lyric:
          "(Kira da Amsa)\nK : Yesu, Ɗan Allah, Mai Iko duka ne,\nA :   Yesu shi sarki ne, Sarkin Sarakuna.\n\nK :  Ya bar sarauta a can cikin sama,\nA:     Ya zo a duniya a cikin talauci,\n\nK:  Ya sha wahala a gun Yahudawa\nA:     Har suka yi shawara, suka giciye shi.\n\nK:  Ya yi mutuwa fa, mutuwa ta giciye,\nA:    Ya zubda jinisa domina ya panshe mu.\n\nK:  Bayan kwana uku sai Yesu ya tashi.\nA:     Yesu ya ci nasara, nasara ta mutuwa.\n\nK :  Ku fa mutane, ku zo fa mu tuba,\nA :     Mu bi Yesu Mai Nasara da mutuwa.\n\nK :  Sai fa, mu bi Shi da zuciya ɗaya\nA :     Gama babu ceto sai wurin Yesu fa.\n\nK:  Ku zo maza mutane ku zo maza mu tuba\nA:     Yesu ya hau sama yana shirya wuri.\n\nK:  Za ya sake zuwa domin masu-binsa.\nA:     Lalle akwai murna ran da mun kai sama.\n\nK:  Yesu mun gode domin mutuwarka.\nA:     Yesu mun gode domin kai, ka tashi.\n\nK:  Karɓi sarauta da iko da girma.\nA:     Taka ce har abada, har abada abadin.\n\n\n",
      title: "586-Yesu, Ɗan Allah, Mai Iko Duka Ne",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 587,
      lyric:
          "YUNANA\n1.\n Ubangiji ya yi magana da Yunana\nYa ce “Yunana ka tashi ka je Nineva\nKa shaida masu bishara domin su tuba\nGama muguntarsu ta hau zuwa gareni.”\n\nKORUS\nMu masu bi yau, mu yi biyayya\nGa magana Ubangiji\nUbangiji fa ba mutum ba ne\nDon haka mu yi biyayya da maganarsa.\n\n2.\nAmma Yunana ya tashi domin ya gudu\nDaga fuskar Ubangiji zuwa can Tarshish\nYa gangara zuwa Yafa ya shiga jirgi\nYana murna wai ya gudu a fuskar Allah.\n\nKorus\n\n3.\nYunana ya manta Allah yana ganinsa\nSai Allah ya nuna Ikonsa ga Yunana\nYa aiko babban iska da haɗari\nSai Yunana ya tuna Allah yana ganinsa.\n\nKorus\n\n4.\nAllah ya shirya babban kifi cikin teku\nKifi ya haɗiye Yunana har kwana uku\nNan da nan Yunana ya tuna akwai Allah\nWane ne zai gudu daga fuskar Ubangiji.\n\nKorus\n\n5.\nCikin duniya yau akwai irin Yunana\nWaɗanda ba su so su bi Ubangiji ba\nSuna ruɗin kansu cewa za su guje shi\nSuna manta Allah ne mahalicin duniya.\n\nKorus\n\n\n\n",
      title: "587-Yunana",
      tune: ""),
  Hymns(
      author: "Thomas da Aichatou Johnson da Usman Manuga",
      favorite: 0,
      id: 588,
      lyric:
          "ZA MU GA SARKINMU\n\n1.\n Wani lokaci, za mu ga sarkinmu,\nWani lokaci, za mu ga sarkinmu,\nWani lokaci, za mu ga sarkinmu,\nHalleluyah, halleluyah, Yesu sarkinmu.\n\n2.\n Cikin sama can, za mu ga sarkinmu,\nCikin sama can, za mu ga sarkinmu,\nCikin sama can, za mu ga sarkinmu.\nHalleluyah, halleluyah, Yesu sarkinmu.\n\n3.\n Babbu kuka can, dukanmu sai murna,\nBabbu kuka can, dukanmu sai murna,\nBabbu kuka can, dukanmu sai murna.\nHalleluyah, halleluyah, gidan sarkinmu.\n\n4.\n Babbu yunwa can, za mu zama kossasu,\nBabbu yunwa can, za mu zama kossasu,\nBabbu yunwa can, za mu zama kossasu.\nHalleluyah, halleluyah, gidan sarkinmu\n\n5.\n Babbu mutuwa, sai rai har abada,\nBabbu mutuwa, sai rai har abada,\nBabbu mutuwa, sai rai har abada,\nHalleluyah, halleluyah, gidan sarkinmu,\n\n6.\n Za mu yabe Shi, za mu ga sarkinmu,\nZa mu yabe Shi, za mu ga sarkinmu,\nZa mu yabe Shi, za mu ga sarkinmu,\nHalleluyah, halleluyah, Yesu sarkinmu.\n\n\n",
      title: "588-Za Mu Ga Sarkinmu",
      tune: "Soon and Very Soon"),
  Hymns(
      author: "",
      favorite: 0,
      id: 589,
      lyric:
          "1.\n Zaɓaɓɓe na Allah, shi\nAikkake na ainihi\nNufin Allah duk yayi,\nUbangiji, Almasihu.\n\n2.\n Yesu aka kunyata\n“Shi ba wani abu ba,”\nAka ce. Ai, shi ya sa\nAka raina Almasihu.\n\n3.\n Shi a jikin gungume\nGa shi nan kwa, ɗaurarre!\nAka kashe shi sosai,\nMai Alheri ne ya mutu.\n\n4.\n Mutumcinsa aka ci,\nZub da jini aka yi,\nKarɓar ceto aka ƙi,\nJinin Yesu ya panshe mu.\n\n5.\n Riƙe shi ba dama fa\nKo a wurin mutuwa,\nAllah ma ya ɗaukaka\nƊansa, Yesu Almasihu.\n\n6.\n In ya komo wata rana,\nZai tashe mu daga nan.\nHar ya kai mu gun Uban,\nRerawa mu yi ma Yesu.\n\n",
      title: "589-Zaɓaɓɓe Na Allah, Shi",
      tune: "Hallelujah, what a savior/Man of Sorrows"),
  Hymns(
      author: "",
      favorite: 0,
      id: 590,
      lyric:
          "KORUS\nMu ne  na ce zaɓaɓɓu ƴaƴan Allah\nWata rana wata sa’a zamu koma gidan Allah\nSolo: “Ƴan uwanmu masu bi.”\n\n1.\nYesu ya ce kada ku damu gama zan tafi don in shirya wuri\nIdan na shirya lalle zan dawo in kai ku wuri Ubana\n(Karatu Yohanna 14: 1- 3.\n\n\nKorus\n\n2.\nGidan Allah babu sata, babu kisa, babu zina\nGidan Allah babu ciwo sai dai rera waƙoƙi na yabon Allah\n\nKorus\n\n3.\n Wata rana wannan duniya babu shakka za’a rushe ta\nBabu tausayi, babu zan rera Yesu Kristi yana dawowa\n\nDuniya duniya ta lallace\nDuniya ta lallace\nMasu bi su ne masu yin kisa\nGulma\nSata\nZina\nWata rana za mu koma Allah za ya tambaye mu\n\n",
      title: "590-Zaɓaɓɓu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 591,
      lyric:
          "1.\n Zakka mutum gajere ne\nGajere ne sosai\nYa hau cikin wani durumi\nDon ya ga Ubangijinsa\nDon ya ga Ubangijinsa.\n\n2.\n Sa’anda Yesu ya bi ta nan\nYa duba itace, ya ce\n“Zakka, ka yi hamzari, ka sabka,\nZan zamna a gidanka\nZan zamna a gidanka.\n\n",
      title: "591-Zakka Mutum Gajere Ne",
      tune: "Zacchaeus Was a Wee Little Man"),
  Hymns(
      author: "",
      favorite: 0,
      id: 592,
      lyric:
          "Zamanin da Almasihu Ɗan Allah\nYa ji tausayinmu mu ɓatattu,\nShi ma ya rabu da gida Ubansa\nSa’annan ya zo zaman tare da mu.\n\nKORUS\nZuwan Mai Ceto ƙamna ta sa shi\nAllah ya ba shi don duniya duk\nKada su halaka, sai dai su sami\nAinihin rai irin nasa sosai.\n\n2.\n Zaman Mai Ceto a cikin mutane\nDa yawan so da alheri ya ke\nKowa ya nema ya gamu da Yesu\nSani ya yi shi Mai Taimako ne.\n\nKORUS\n\n3.\n Zaman nan nasa na bada alheri\nAibunsa babu, bin Allah ya yi\nRansa ya bayar don fansar mutane,\nAllah ya karɓa. Tsattsarka ne shi.\n\nKorus\n\n4.\n Domin zunubinmu Yesu ya mutu,\nBayan ya mutu ma sai biznewa\nShi ma ya tashi a rana ta uku\nSa’anna ya hau sama wurin Uban.\n\nKorus\n\n5.\n Yesu Mai Cetonmu zai sake zuwa\nDaidai alkawali wanda ya yi\nSa zuciyarmu dai kowace rana\nYesu mu gan shi, mu gamu, mu ji.\n\nKorus\n\n\n",
      title: "592-Zamanin da Almasihu Ɗan Allah",
      tune: "One Day When Heaven"),
  Hymns(
      author: "",
      favorite: 0,
      id: 593,
      lyric:
          "Zamna da Yesu, sai murna za mu yi\nA cikin gidansa\nZamna da Yesu har abada.\nYesu ya wanke ni, daga zunubi\nZan yi godiya, zan bi shi kullum\nHar ran da za ya zo\nYa kai ni gidan can\nMu zamna tare...har abada.\n\n",
      title: "593-Zamna da Yesu, Sai Murna Za Mu Yi",
      tune: "Dwelling Together"),
  Hymns(
      author: "",
      favorite: 0,
      id: 594,
      lyric:
          "Zan shaida Yesu ko’ina (ko’ina)\nBan damu da gargadar hanya ba\nNi zan je\nNi zan je\n\n",
      title: "594-Zan Shaida Yesu Ko’ina",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 595,
      lyric:
          "(Kira da amsa)\nK: Zo ka cece mu a duniyan nan\nA: Halleluya Yesu, Ubangijin Ceto, Yesu Baba.\n\nK: Muna jiran ka a duniyan nan\nA: Halleluya Yesu, Ubangijin Ceto, Yesu Baba.\n\nK: Yesu n ƴaƴanka a duniya nan.\nA:  Halleluya Yesu, Ubangijin Ceto, Yesu Baba\n\nK:  Yesu ya panshe mu a duniya nan\nA:  Halleluya Yesu, Ubangijin Ceto, Yesu Baba\n\nK: Muna taruwa a duniya nan\nA:  Halleluya Yesu, Ubangijin Ceto, Yesu Baba\n\nK: Cikin sunanka a duniya nan\nA:  Halleluya Yesu, Ubangijin Ceto, Yesu Baba\n\nK: Za mu hau tare a sama can\nA:  Halleluya Yesu, Ubangijin Ceto, Yesu Baba\n\nK: Za mu taru can a wurinka\nA: Halleluya Yesu, Ubangijin Ceto, Yesu Baba\n\n",
      title: "595-Zo Ka Cece Mu A Duniyan Nan",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 596,
      lyric:
          "1.\n Zo ku sha, masu ƙishi, zo ku sha\nYesu za ya ba ku rai har abada.\nShi Mai Cetonmu ya ce\n“Ga shi, Ni ne ruwan rai,”\nZo ku sha, masu ƙishi, zo ku sha.\n\n2.\n Zo ku ci, masu yunwa, zo ku ci\nMasu yunwa, masu ƙishi, sai ku ji\nShi Mai Cetonmu ya ce\n“Ni gurasa ne ta rai. ”\nSai ku ci, masu yunwa,  zo ku ci.\n\n\n\n\n",
      title: "596-Zo Ku Sha, Masu Ƙishi, Zo Ku Sha",
      tune: "Oh Be Careful Little Eyes"),
  Hymns(
      author: "",
      favorite: 0,
      id: 597,
      lyric:
          "Zo mu je wurin Yesu.\nDomin gafaran zunubanmu\nYesu masoyina ne.\nYesu yana zuwa sai mu gyara zamanmu\n",
      title: "597-Zo Mu Je Wurin Yesu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 598,
      lyric:
          "Zo mutane dukan ku\nYaƙin za mu yi yanzu\nDuk ku yafa makamai na Allah kuwa\nTsaya dai da ƙarfin rai\nCikin ikonsa kaɗai\nYesu Kristi za shi ba mu nasara.\n\nKORUS\nZo, zo zo ku masu yaƙi\nTaru bayan Yesunmu\nShi ne shugabanmu dai\nZa shi bida mu sosai\nZa shi ba mu nasara har abada.\n\n",
      title: "598-Zo Mutane Dukan Ku",
      tune: "Tramp, tramp, tramp/Jesus Calls the Children"),
  Hymns(
      author: "",
      favorite: 0,
      id: 599,
      lyric:
          "Zo, mu bi Yesu, cikin duniyan nan\nZa mu bi Yesu shugabanmu.\nKo mun sami daɗi, ko tsanani\nZa mu bi Yesu da zuciya ɗaya.\n\nTune-Following Jesus/Come We Follow Jesus\n\n",
      title: "599-Zo, Mu Bi Yesu, Cikin Duniyan Nan",
      tune: "Following Jesus/Come We Follow Jesus"),
  Hymns(
      author: "",
      favorite: 0,
      id: 600,
      lyric:
          "1.\n Zumunta da Allah, zumunta da Yesu,\nZumunta yanzu, zumunta kullum,\nZumunta da Allah, zumunta da Ruhu,\nTa wurin Yesu Mai Cetonmu.\n\n2.\n Zumunta da Allah, zumunta yanzu,\nZumunta kullum, zumunta da Allah\nTa wurin Yesu Mai Cetonmu.\n\n",
      title: "600-Zumunta da Allah, Zumunta da Yesu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 601,
      lyric:
          "1.\n Zumuntar mata ku za mu yabi Yesunmu\nZumuntar mata ku za mu yabi Yesunmu\n\nKORUS\nUbangiji Yesu shi ne zai biɗa\nmu cikin wannan taruwa.\nKomi wahala, komi azaba ni\nba zan bar bin Yesu ba.\n\n2.\n Dukan 'yan ƙwaya ku zo mu yabi Yesunmu.\nDukan matasa ku zo mu yabi Yesunmu.\n\nKorus\n\n3.\n Dukan pastoci ku zo mu yabi Yesunmu.\nDukan dattibai ku zo mu yabi Yesunmu.\n\nKorus\n\n4.\n Dukan samari ku zo mu yabi Yesunmu.\nDukan al'ummai Ku zo mu yabi Yesunmu.\n\nKorus\n\n5.\n Dukan masu bi ku zo mu yabi Yesunmu.\nDukan al'ummai ku zo mu yabi Yesunmu.\n\nKorus\n\n6.\n Kada ka tuna da wahala da ka sha.\nKada ki tuna da wahala da kin she.\n\nKorus\n\n7.\n Kada ku tuna da wahalar da kun sha.\nKada mu tuna da wahalar da mun sha.\n\nKorus\n\n",
      title: "601-Zumuntar Mata Ku Za Mu Yabi Yesunmu",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 602,
      lyric:
          "1.\n Zunubi baƙi kirin\nYa ƃata halina,\nAmma da jinin Yesu\nAn wanke zuciyata.\nAn mai da ita fara.\nAn sake halina.\nZan tafi wurin Yesu\nGida mai daraja.\n\n2.\n Kai fa ba za ka zo ba?\nKa nemi gafara\nTa wurin jinin Yesu,\nA wanke zuciyarka,\nA mai da ita fara,\nA sake halinka,\nKa tafi wurin Yesu,\nGida mai daraja.\n\n",
      title: "602-Zunubi Baƙi Kirin",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 603,
      lyric:
          "1.\n Ƙauna, biyayya,\nAlheri ya haɗa mu ɗaya\nSalama kuwa ta koya mana ƙauna\nƘaunar Yesu ta haɗa mu ɗaya.\nKORUS\nƘauna, ƙaunaye\nƘaunar Yesu ta haɗa mu ɗaya\nSalama kuwa ta koya mana ƙauna\nƘaunar Yesu ta haɗa mu ɗaya\n\n2.\nAllah ne ya koya mana ƙauna\nDomin shi ne ya fara yin ƙauna\nAllah ne ya kowa mana ƙauna\nƘaunar Yesu ta haɗa mu ɗaya.\n\nKorus\n\n3.\n Ƙauna oh tana sa biyayya\nƘauna oh tana sa alheri\nƘauna oh tana sa bege\nƘaunar Yesu ta haɗa mu ɗaya.\n\nKorus\n\n4.\n Ƙauna oh tana tara jama’a\nMassifa kuwa ta watse jama’a\nMu ne mun fidda ƙauna\nƘaunar Yesu ta haɗa mu ɗaya.\n\nKorus\n",
      title: "603-Ƙauna, Biyayya",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 604,
      lyric:
          "KORUS\nƳan duniya ba su yarda da Ubangijinmu\nA ransu ba su yarda ya zama sarkinsu\nAmma fa wata ran zai komo duniyan nan\nDuniya duniya, duniya.\n\n1.\n Ubangijinmu (3x )\nUbangijinmu zai zo\nHu- hu- hu Ubanginmu zai zo\n\n2.\n Ranar shari’ar Allah randa zai zo\nCikin duniya I, Ubanginmu zai zo\n\n3.\n Duk wanda ya ǩi ni, ni Yesu\nNi ma zan ǩi shi, Ubangijnmu zai zo hu- hu- hu\n\n4.\n Za ya zo (3x)\nUbangijinmu zai zo\nHu- hu- hu Ubangijimu zai zo\n\n",
      title: "604-Ƴan Duniya",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 605,
      lyric:
          "1.\n Ƴan’uwa ƙarshenmu kenan fa.\nƳan’uwa mu guje ma fushinsa\nSa’anda mai ceto za ya komo.\nMai zunubi za ya ji tsoro,\n\nKORUS\nJi tsoro, ji tsoro,\nku tudai, ku tudai\ngirgiza, girgiza kan teku,\nitatuwa ku nemi mafaƙa dukan duniya.\nMai ceto ya zo.\n\n2.\n Allah fa zai fito daga sama\nTare da dukan, mayakansa.\nDukan kabilu fa za su taru\nkewaye da mazamninsa can.\n\nKorus\n\n3.\n Za mu hau sama, mu tarƃe shi\ntare da murna ba iyaka.\nAkwai bakinciki ga waɗanda\nba za su tarƃe shi da murna.\n\nKorus\n\n4.\n Ƴan’uwa ji ku karƃa ku rayu\nkamin ranar shari’a ta zo.\nAllah yana zuwa da ladansa.\nzai raba bisa ga aikinmu.\n\nKorus\n\n",
      title: "605-Ƴan’uwa Ƙarshenmu Kenan Fa",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 606,
      lyric:
          "Ƴanuwa, ku zo mu bi Yesu\nƳanuwa, ku zo mu bi Yesu\nYesu ne ya zama cetonmu.\n\nƳanuwa ku bar ɗinkin laya\nLaya ba ya iya cece mu\nYesu ne ya zama cetonmu\nYesu ne ya zama cetonmu.\n\nƳanuwa ku bar ɗinkin guru\nGuru ba ya iya cece mu.\nYesu ne ya zama cetonmu\nYesu ne ya zama cetonmu.\n\nƳanuwa ku bar tsaka tsaka\nƳanuwa ku bar tsaka tsaka\nRan da mutuwa ta zo, ta ɗauke ka.\n\nA kira masu bi su zo su bizne ka\nSu zo su ƙi, su ce ba ka addininsa.\nSa’annan kana tsaka tsaka.\n\nA bizne ka babu yin addu’a,\nGa Littafi Mai Tsarki ya shaida mu a nan\nAbin da aka ɗamre anan a duniya\nA ɗamre shi ya zama can samaniya\nƳanuwa ku bar tsaka tsaka\nYesu ne ya zama cetonmu.\n\n\n",
      title: "606-Ƴanuwa, Ku Zo Mu Bi Yesu",
      tune: "Native"),
  Hymns(
      author: "",
      favorite: 0,
      id: 607,
      lyric:
          "Domin ka kawo mu a wannan rana yau.\n(2x)\nEh mun gode wa Yesu, eh mun gode wa Yesu   (2x)\nMun Gode\nDomin domin\nDomin ka kawo mu a wanna rana yau\n(2x)\nMun gode Yesu, mun gode Yesu\n(2x)\nMun gode.\n\nDomin ka kawo mu a wannan rana yau\n(2x)\nBabu wani rikici\nBabu wani damuwa\nSai kwanciyar hankali\nEh, eh.\n\nMun gode Yesu, mun gode Yesu, mun gode Yesu, mun gode Yesu, mun gode Yesu,\n(2x)\nMun gode.\nDomin ka kawo mu a wannan rana yau.\n(2x)\nMun gode Yesu, mun gode Yesu\n(2x)\nMun gode.\n\nDomin ka kawo mu a wannan rana yau.\n(2x)\nMun gode Yesu, mun gode Yesu, mun gode Yesu, mun gode Yesu, mun gode Yesu,\nMun gode.\n\n\n\n",
      title: "607-Domin Ka Kawo Mu A Wannan Rana Yau",
      tune: ""),
  Hymns(
      author: "",
      favorite: 0,
      id: 608,
      lyric:
          "Yesu, Ubangijina,\nKai Mai Iko duka ne,\nSai ka ba ni nasara\nCikin dukan jaraba.\nSai ka ji addu’ata,\nYesu, Ubangijina\n\n",
      title: "‘Y01-Yesu, Ubangijina",
      tune: "Rock of ages, cleft for me/Toplady"),
  Hymns(
      author: "",
      favorite: 0,
      id: 609,
      lyric:
          "Yesu yana son mutane,\nDuk mutanen duniya,\nBaƙi, fari, ko kuwa ja,\nYana ƙaunar dukansun.\nYesu yana son mutanen duniya.\n\nYesu yana ƙaunar yara,\nDukan yaran duniya,\nBaƙi, fari, ko kuwa ja,\nDuka ɗaya wurinsa,\nYesu yana ƙaunar yaran duniya.\n\n\n\n",
      title: "‘Y02-Yesu Yana Son Mutane",
      tune: "Jesus loves the little children"),
  Hymns(
      author: "",
      favorite: 0,
      id: 610,
      lyric:
          "Cikin raina daɗi na ke ji,\nDaɗi na ke ji,\nMurna na ke yi.\nCikin raina daɗi na ke ji\nDomin ina bin Yesu.\n\n",
      title: "‘Y03-Cikin Raina Daɗi Na Ke Ji",
      tune: "In my heart there rings a melody"),
  Hymns(
      author: "",
      favorite: 0,
      id: 611,
      lyric:
          "Ya biya dukan bashin laifina,\nShi ya wanke dauɗar zuciyata,\nKullum, kullum yana tsarina,\nMai Cetona.\n\n",
      title: "‘Y04-Ya Biya Dukan Bashin Laifina",
      tune: "Grace there is my every debt to pay"),
  Hymns(
      author: "",
      favorite: 0,
      id: 612,
      lyric:
          "Kyautar Allah, ceto ne fa,\nCeto ne fa, ceto ne fa!\nKyautar Allah ceto ne fa\nZuwa mutane.\nZuwa mutane, zuwa mutane,\nKyautar Allah ceto ne fa\nZuwa mutane.\n\nYa aike mu manzanninsa,\nManzanninsa, mazanninsa!\nWurin mutane.\nWurin mutane, wurin mutane!\nYa aike mu manzanninsa\nWurin mutane.\n\n\n\n",
      title: "‘Y05-Kyautar Allah, Ceto Ne Fa",
      tune: "I Will Make You Fishers of Men"),
  Hymns(
      author: "",
      favorite: 0,
      id: 613,
      lyric:
          "Mai Ceto mai taimako ne.\nMai Ceto mai taimako ne.\nIn ka kira shi, zai ji,\nTaimakonka kuwa zai yi,\nMai Ceto mai taimako ne.\n\n",
      title: "‘Y06-Mai Ceto Mai Taimako Ne.",
      tune: "The best Friend to have is Jesus"),
  Hymns(
      author: "",
      favorite: 0,
      id: 614,
      lyric:
          "Murna zan yi, murna zan yi,\nMurna zan yi, murna zan yi.\nRan da na ga Yesu Mai Cetona,\nMurna mai yawa, mai yawa zan yi.\n\n\n",
      title: "‘Y07-Murna Zan Yi, Murna Zan Yi",
      tune: "That will be glory for me"),
  Hymns(
      author: "",
      favorite: 0,
      id: 615,
      lyric:
          "Wata rana za ya zo,\nWata rana za ya zo,\nWata rana za y azo.\nZa mu gan shi Sarkinmu\n\n",
      title: "‘Y08-Wata Rana Za Ya Zo",
      tune: "Bye and bye we'll see the King"),
  Hymns(
      author: "",
      favorite: 0,
      id: 616,
      lyric:
          "Yesu ya je Kalfari domina,\nDomina, domina.\nYesu ya je Kalfari domina,\nYa mutu domina.\n\n",
      title: "‘Y09-Yesu Ya Je Kalfari Domina",
      tune: "All the way to Calvary He went for me"),
  Hymns(
      author: "",
      favorite: 0,
      id: 617,
      lyric:
          "Yesu, Yesu, ina son in bi ka\nKo’ina, ko’ina cikin duniya\nKullum kullum, ina so in bi ka.\nKai ne ka fanshe ni, ni ne bawanka\n\n",
      title: "‘Y10-Yesu, Yesu, Ina Son In Bi Ka",
      tune: "Follow, follow, I will follow Jesus"),
  Hymns(
      author: "",
      favorite: 0,
      id: 618,
      lyric:
          "Zo gun Yesu Mai Ceto don gafara,\nShi ne mai yawan tausayi, mai ƙauna kuwa.\nBa zai fid da ku ba, sai ya karɓe ku yau.\nZo gun Yesu Mai Ceto don gafara\n\n",
      title: "‘Y11-Zo Gun Yesu Mai Ceto Don Gafara",
      tune: "Let the beauty of Jesus be seen"),
  Hymns(
      author: "",
      favorite: 0,
      id: 619,
      lyric:
          "Yesu, Yesu, Yesu\nSuna mai daɗin ji,\nJininsa ya wanke ni\nDaga dukan zunubai\n\n",
      title: "‘Y12-Yesu, Yesu, Yesu",
      tune: "Jesus, Jesus, Jesus, sweetest name I know"),
  Hymns(
      author: "",
      favorite: 0,
      id: 620,
      lyric:
          "Na ɓoye Maganarka\nA cikin zuciyata\nDon kada in yi\nMaka zunubi,\nYa Yesu Mai Cetona\n\n\n",
      title: "‘Y13-Na Ɓoye Maganarka",
      tune: "Thy Word have I hid in my heart"),
  Hymns(
      author: "",
      favorite: 0,
      id: 621,
      lyric:
          "Kada ka ji tsoro ko ka yi fargaba\nGama ni ne Allahnka, ina tare da kai\nZan ƙarfafa ka, i, zan taimake ka\nHymns(Da hannuna na dama\nZan riƙe ka da ƙarfi,) 2X\nDa hannuna na dama za riƙe ka.\n\n",
      title: "‘Y14-Kada Ka Ji Tsoro Ko Ka Yi Fargaba",
      tune: "How firm a foundation"),
  Hymns(
      author: "",
      favorite: 0,
      id: 622,
      lyric:
          "1.\nMu za mu je shaida shi\nMu shaida shi, mu shaida shi.\nMu za mu je mu shaida shi\nHar duniya duk ta ji.\n\n2.\nShaiɗan ya so ya hana mu\nYa hana mu, ya hana mu\nShaiɗan ya so ya hana mu\nAmma bai iya ba.\n\n3.\nMu za mu kawo baikonmu,\nBaikonmu, baikonmu\nMu za mu kawo baikonmu\nAikin godiyarmu.\n\n4.\nYesu zai ji addu’armu\nAddu’armu, addu’armu\nYesu zai ji addu’armu\nKada mu fasa yi.\n\n5.\nZai kuwa yi mana taimako\nTaimako, taimako\nZai kuwa yi mana taimako\nHar duniya duk ta ji\n\n",
      title: "‘Y15-Mu za mu je shaida shi",
      tune:
          "This is the way we wash our clothes/ Here we go 'round the Mulberry Bush"),
  Hymns(
      author: "",
      favorite: 0,
      id: 623,
      lyric:
          "1.\nBisa giciye, bisa giciye,\nƊan Allah ya mutu domina.\nYa sha raɗaɗi,\nYa ɗauki zunubai\nBisa giciye\n\n2.\nƊauki giciye, ɗauki giciye,\nKai Mai Binsa, ɗauki giciye\nƘanƙantad da kai,\nKa bi shi, shi kaɗai\nƊauki giciye.\n\n",
      title: "‘Y16-Bisa Biciye, Bisa Giciye",
      tune: "On the Cross for me (Hutchens)"),
  Hymns(
      author: "",
      favorite: 0,
      id: 624,
      lyric:
          "‘Y17 MAI JIN ADDU’A YANA NAN\n1.\n Mai jin addu’a yana nan,\nMai jin addu’a yana nan.\nRoƙo ku yi, shi ma zai ji,\nMai jin addu’a yana nan.\n\n2.\n Mai jin tausayinku ‘na nan,...\n\n3.\n Mai Ceton ranku yana nan,...\n\n4.\n Mai ƙarfafa ku yana nan,..\n\n5.\n 5.\n Mai bi da nasa yana nan,...\n\n\n",
      title: "‘Y17-Mai Jin Addu’a Yana Nan",
      tune: "I love Him better every day"),
  Hymns(
      author: "",
      favorite: 0,
      id: 625,
      lyric:
          "Yesu ya kankare su, ya shafe zunubanmu,\nShi ya manta da su, ya sa su a bayansa.\nYa nisantad da su kamar gabas da yamma,\nYa jefar da su a cikin teku, ya fanshe mu.\n\n",
      title: "‘Y18-Yesu Ya Kankare Su",
      tune: "God has blotted them out"),
  Hymns(
      author: "",
      favorite: 0,
      id: 626,
      lyric:
          "Domin Yesu shi Ɗan Allah ne,\nShi kaɗai ya iya cetonmu.\nSa’ad da ya ba da jininsa,\nYa buɗe mana ƙofar rai.\nKo ya buɗe ƙofar rai?\nI, ya buɗe ƙofar rai?\nKo ya buɗe ƙofar rai?\nI, ya buɗe ƙofar rai?\nSa’ad da ya ba da jininsa,\nYa buɗe mana ƙofar rai.\n\n",
      title: "‘Y19-Domin Yesu Shi Ɗan Allah Ne",
      tune: "What, never thirst again?"),
  Hymns(
      author: "",
      favorite: 0,
      id: 627,
      lyric:
          "1.\nNa sami ƙaunar Allah wurin Yesu,\nWurin Yesu, wurin Yesu,\nNa sami ƙaunar Allah wurin Yesu,\nWurin Mai Cetonmu.\n\n2.\nNa sami ceto kyauta wurin Yesu,\nWurin Yesu, wurin Yesu.\nNa sami ceto kyauta wurin Yesu,\nWurin Mai Cetonmu\n\n\n",
      title: "‘Y20-Na Sami Ƙaunar Allah Wurin Yesu",
      tune: "I have the joy, joy, joy /Down in my heart"),
  Hymns(
      author: "",
      favorite: 0,
      id: 628,
      lyric:
          "Da rai, da rai, Mai Ceto yana da rai,\nTare da ni ya kan tafi\nA duniyan nan lalle.\nDa rai, da rai, Mai Ceto ya fito Kabari.\nLabarin nan ya tabbata,\nYesu ‘na nan a zuciyata\n\n",
      title: "‘Y21-Da Rai, da Rai, Mai Ceto Yana da Rai",
      tune: "He Lives/I serve a risen Savior"),
  Hymns(
      author: "",
      favorite: 0,
      id: 629,
      lyric:
          "1.\nNi, na yi shiri, ni zan bi Yesu (3x)\nHar abada, har abada.\n\n2.\nNa tuba, ni fa ni zan bi Yesu (3x)\nHar abada, har abada.\n\n3.\nKo ni kaɗai ne, ni zan bi Yesu (3x)\nHar abada, har abada.\n\n4.\nNa bar bin duniya, ni zan bi Yesu (3x)\nHar abada, har abada.\n\n5.\nNa sami ceto, ni zan bi Yesu (3x)\nHar abada, har abada.\n\n6.\nIna da murna, ni zan bi Yesu (3x)\nHar abada, har abada.\n\n7.\nHar can a Sama, ni zan ga Yesu (3x)\nHar abada, har abada.\n\n",
      title: "‘Y22-Ni, Na Yi Shiri, Ni Zan Bi Yesu",
      tune: "Though none go with me/I have decided to Follow Jesus"),
  Hymns(
      author: "",
      favorite: 0,
      id: 630,
      lyric:
          "Muna barka dai da zuwanku,\nMuna murna da ganinku.\nƘaunar Yesu Ubanginjinmu\nTa zauna tare da mu.\n\n\n",
      title: "‘Y23-Muna Barka Dai da Zuwanku",
      tune: "There's a welcome here"),
  Hymns(
      author: "",
      favorite: 0,
      id: 631,
      lyric:
          "Dā da wani yaro, sunansa Dawuda ne,\nDa wani mugun gago, shi Goliath dai.\nDawuda, ban da tsoro, zuwa rafi ya je.\n“Da ikon Ubangiji zan kashe shi”, ya ce.\nYa ɗauki duwatsu biyar da majajjawa.\nGoliath, mugun gagon nan, ya yi ta dariya.\nDawuda ya soma wurgawa, ya yi ta wurgawa,\nA zuciyarsa ya yi addu’a,\nGoliath ya fāɗi ƙasa.\n\n\n",
      title: "‘Y24-Dā da Wani Yaro, Sunansa Dawuda Ne",
      tune: "One little boy named David"),
  Hymns(
      author: "",
      favorite: 0,
      id: 632,
      lyric:
          "Saboda zunubai\nBisa gungume,\nYesu Kristi Mai Ceto,\nAzaba can ya sha,\nYa mutu domina\nBisa gungume.\n\n\n",
      title: "‘Y25-Saboda Zunubai",
      tune: "On the Cross for me (Hutchens)"),
  Hymns(
      author: "",
      favorite: 0,
      id: 633,
      lyric:
          "Marmarina in gami Yesu,\nMarmarina in gami Yesu\nKo cikin aiki ko cikin hutu,\nIn mai da shi Ubangiji.\n\n",
      title: "‘Y26-Marmarina In Gami Yesu",
      tune: "My desire (to be like Jesus)"),
  Hymns(
      author: "",
      favorite: 0,
      id: 634,
      lyric:
          "Ya tafi, ya tafi, ya tafi\nNauyin kayan zunubi ya tafi.\nYa tafi, ya tafi, ya tafi,\nNauyin kayan zunubi ya tafi.\nYesu ya wanke ni daga dukan zunubi,\nYa tafi, ta tafi, ya tafi\nNauyin kayan zunubi ya tafi.\n\n\n",
      title: "‘Y27-Ya Tafi, Ya Tafi, Ya Tafi",
      tune: "Rolled Away"),
  Hymns(
      author: "",
      favorite: 0,
      id: 635,
      lyric:
          "Tun Yesu ya zo wurina,\nTun Yesu ya zo wurina,\nNa yi murna ƙwarai, cikin zuciyata\nTune Yesu ya zo wurina.\n\n2.\nBar Yesu ya cece ka yau,\nBar Yesu ya cece ka yau.\nZa ka yi kwanciyar rai har da murna sosai\nIn Yesu ya cece ka yau.\n\n",
      title: "‘Y28-Tun Yesu Ya Zo Wurina",
      tune: "Since Jesus came into my heart"),
  Hymns(
      author: "",
      favorite: 0,
      id: 636,
      lyric:
          "‘Y29\n1.\nGa fitilata, sai ta haskaka,\nGa fitilata, sai ta haskaka\nKo’ina, ko’ina, ko’ina.\n\n2.\nShaiɗan ba zai ‘fuf’ ta ba, ta haskaka,\nShaiɗan ba zai ‘fuf’ ta ba, ta haskaka\nKoyaushe, koyaushe, koyaushe.\n\n3.\nRufe ta da ƙwarya, ni ban yarda ba,\nRufe ta da ƙwarya, ni ban yarda ba,\nKo kaɗan, ko kaɗan, ko kaɗan.\n\n4.\nNan fa cikin (faɗin sunan garinku), sai ta haskaka,\nNan fa cikin (faɗin sunan garinku), sai ta haskaka,\nKoyaushe, koyaushe, koyaushe.\n\n5.\nHar iyakar duniya, sai ta haskaka,\nHar iyakar duniya, sai ta haskaka,\nKoyaushe, koyaushe, koyaushe.\n\n\n",
      title: "‘Y29-Ga Fitilata, Sai Ta Haskaka",
      tune: "This little light of mine"),
  Hymns(
      author: "",
      favorite: 0,
      id: 637,
      lyric:
          "Haske, haske cikin raina yau,\nHaske, haske daga Yesu ne.\nTun Mai Cetona ya ba ni gafara,\nBa na rasa murna cikin zuciyata.\n\n",
      title: "‘Y30-Haske, Haske Cikin Raina Yau",
      tune: "Sunlight, sunlight in my soul today"),
  Hymns(
      author: "",
      favorite: 0,
      id: 638,
      lyric:
          "Ku zo, zo, zo, zo,\nZo wurin Yesu Mai Ceto,\nKu zo wurin Mai Gafara.\nKila yau ne rana ta ƙarshe,\nSai ku zo wurin Mai Cetonmu.\n\n\n",
      title: "‘Y31-Ku Zo, Zo, Zo, Zo",
      tune: "Little brown church in the wildwood"),
  Hymns(
      author: "",
      favorite: 0,
      id: 639,
      lyric:
          "Sunan Yesu ne mafifici,\nKuma halinsa ya bi sunansa\nDon haka, ina so in bi shi yau.\nI, sunan Yesu ne mafifici.\n\n",
      title: "‘Y32-Sunan Yesu Ne Mafifici",
      tune: "Jesus is the sweetest name I know"),
  Hymns(
      author: "",
      favorite: 0,
      id: 640,
      lyric:
          "Zo gun Yesu, zo gun Yesu,\nƁatattu, ɓatattu,\nShi zai taimake ku\nYa wanke zunubanku\nDa jininsa mai daraja,\nDa jininsa mai tsarki.\n\n",
      title: "‘Y33-Zo Gun Yesu, Zo Gun Yesu",
      tune: "Are you sleeping, Brother John?"),
  Hymns(
      author: "",
      favorite: 0,
      id: 641,
      lyric:
          "Ya kamata duk su ji,\nYa kamata duk su ji,\nYa kamata duk su ji\nMaganar rai (a maimaita wannan duka)\n\nYesu shi ne hasken duniya,\nShi Mai Ceton duka ne.\nShi ya mutu maimakonmu,\nSai ku gaskata da shi.\n\n",
      title: "‘Y34-Ya Kamata Duk Su Ji",
      tune: "Everybody ought to know"),
  Hymns(
      author: "",
      favorite: 0,
      id: 642,
      lyric:
          "Maganar Allah hamma\nMai fasa dutse ce,\nDa takobi mai kaifi biyu,\nDa madubin fuskarmu.\nFitila ce don hanya,\nMai nuna adalci\nI, shi, Maganar Allah ne,\nLittafi Mai Tsarki.\n\n",
      title: "‘Y35-Maganar Allah Hamma",
      tune: "The book of books"),
  Hymns(
      author: "",
      favorite: 0,
      id: 643,
      lyric:
          "Ni, ina son Yesu,\nNi, ina son Yesu,\nNi, ina son Yesu,\nYesu, Mai Cetona.\n\n\n\n",
      title: "‘Y36-Ni, Ina Son Yesu",
      tune: "O, how I love Jesus"),
  Hymns(
      author: "",
      favorite: 0,
      id: 644,
      lyric:
          "Ya cece ni, ya cece ni,\nShi Yesu Mai Cetona, ya ceci ni.\nYa cece ni, ya cece ni,\nShi Yesu Mai Cetona, ya ceci ni.\n\n\n",
      title: "‘Y37-Ya Cece Ni, Ya Cece Ni",
      tune: "Love Lifted Me"),
  Hymns(
      author: "",
      favorite: 0,
      id: 645,
      lyric:
          "Shi za mu ji domin mu bi\nHanyar da za ta gun Allah.\nYesu Mai Ceton duniya duk\nShi ne zai kai mu gun Allah.\n\n",
      title: "‘Y38-Shi Za Mu Ji Domin Mu Bi",
      tune: "Under His wings"),
  Hymns(
      author: "",
      favorite: 0,
      id: 646,
      lyric:
          "Yana zuba, yana zuba\nҠoƙona ya  cika, yana zuba,\nTun Yesu ya cece ni\nMurna na ke yi sosai\nҠoƙona ya cika, yan zuba.\n\n\n",
      title: "‘Y39-Yana Zuba, Yana Zuba",
      tune: "Running over"),
  Hymns(
      author: "",
      favorite: 0,
      id: 647,
      lyric:
          "Shaida bishara ko’ina,\nShaida bishara  koyaushe.\nMutane dayawa ba su taɓa ji ba,\nShaida bishara ko’ina\n\n",
      title: "‘Y40-Shaida Bishara Ko’ina",
      tune: "Brighten the corner where you are"),
  Hymns(
      author: "",
      favorite: 0,
      id: 648,
      lyric:
          "Can wurin Ubangiji\nMu taru can, mu taru can\nCan wurin Ubangiji\nMu duka, mu taru can.\nIdan ka kai kamin in zo,\nDuba hanyata, ina zuwa kuwa\nCan wurin Ubangiji\nMu duka, mu taru can.\n\n\n",
      title: "‘Y41-Can Wurin Ubangiji",
      tune: "Away far over Jordan"),
  Hymns(
      author: "",
      favorite: 0,
      id: 649,
      lyric:
          "Mu ne ƴanƴan Yesu,\nƳaƴa na ƙaunarsa.\nBa ya bar mu marayu ba fa.\nZa ya kira mu can\nWurinsa wata ran,\nZa mu zauna har abada,\n\n\n",
      title: "‘Y42-Mu ne ƳanƳan Yesu",
      tune: "I belong to the King"),
  Hymns(
      author: "",
      favorite: 0,
      id: 650,
      lyric:
          "1.\nSai ka lura dai ka tsare idanu,\nSai ka lura dai ka tsare idanu.\nUba yana zaune can, yana ganinmu a nan,\nSai ka lura dai ka tsare idanu.\n\n2.\nSai ka lura dai ka tsare kunnuwa,…\n\n3.\nSai ka lura dai ka tsare bakinka,…\n\n4.\nSai ka lura da ayyukan hannuwa,…\n\n5.\nSai ka lura inda ƙafarka ta bi,…\n\n6.\nTsare ido, kunne, baki, hannu, ƙafa fa,…\n\n",
      title: "‘Y43-Sai Ka Lura Dai Ka Tsare Idanu",
      tune: "Do be careful"),
  Hymns(
      author: "",
      favorite: 0,
      id: 651,
      lyric:
          "‘Y44\n1.\nLittafi Mai Tsarki, abincin rai ne shi,\nAkwai ƙoshi, sai ka za ka ci\nLittafi Mai Tsarki\n\n2.\nLittafi Mai Tsarki, saƙon Ubangiji,\nA cikinsa, aka bayyana\nҠauna ga Masu Bi\n\n3.\nLittafi Mai Tsarki, fitilar Masu Bi,\nHaske ‘na nan, za ya kai mu can,\nLittafi Mai Tsarki.\n\n4.\nLittafi Mai Tsarki, ya zama takobi\nIn ya shiga cikin zuciya,\nZai tone zunubi.\n\n5.\nLittafi Mai Tsarki, cike de ilimi,\nBincikensa dai da gaskiya\nZai ba ka fahimi.\n\n6.\nLittafi Mai Tsarki, jawabin Masu Bi,\nMaganarsa mu ke shelarta,\nLittafi Mai Tsarki.\n\n7.\nLittafi Mai Tsarki, iri mai kyau ne shi,\nDa aminci za mu shuka shi\nA duniyan nan yanzu.\n\n8.\nLittafi Mai Tsarki, shi kaɗai mu ke bi\nAmfaninsa da daɗinsa\nSun wuce misali.\n\n\n\n",
      title: "‘Y44-Littafi Mai Tsarki, Abincin Rai Ne Shi",
      tune: "The B-I-B-L-E"),
  Hymns(
      author: "",
      favorite: 0,
      id: 652,
      lyric:
          "Ҡofa ɗaya, ita kaɗai\nAmma da gefe biyu,\nCiki da baya\nSai ka ji da kyau\n\nҠofa ɗaya, ita kaɗai,\nAmma da gefe biyu,\nNi, ina ciki.\nIna ka ke dai?\n\n\n",
      title: "‘Y45-Ҡofa Ɗaya, Ita Kaɗai",
      tune: "One door and only one"),
  Hymns(
      author: "",
      favorite: 0,
      id: 653,
      lyric:
          "1.\nZo gun Yesu, zo gun Yesu\nZo gun Yesu yanzu.\nYanzu, zo gun Yesu.\nZo gun Yesu yanzu.\n\n2.\nKarɓi ceto, karɓi ceto,\nKarɓi ceto yanzu.\nYanzu, karɓi ceto\nKarɓi ceto yanzu.\n\n3.\nTo, na yarda, i, na yarda\nNi na yarda yanzu.\nYanzu dai na yarda,\nZan bi Yesu yanzu.\n\n\n\n",
      title: "‘Y46-Zo Gun Yesu, Zo Gun Yesu",
      tune: "Come to Jesus"),
  Hymns(
      id: 654,
      title: "654 - Oh God Be Glorified (ECWA International Anthem)",
      author: "Godfrey Alphonsus",
      tune: "ECWA International Anthem",
      favorite: 0,
      lyric:
          "1.\nLove for the dying and the perishing\nA call to save the lost we heed\nThrough the raing storm and all uncertainties\nOur lives we freely give...\n\nChorus\nAnd through ECWA\nYour Name be Glorified\nOh God be Gorified...\n\n2.\nThe Bible our Authority,\nMission our identity,\nTouching lives with what we preach.\nIn life and speech,faithfull we shall be,\nDrawing hearts of men to Christ...\n\n3.\nHelp the poor and homeless,cloth the weak and cold;\nGiving all we have for Christ.\nOur strength and substance we will not spare,\nWe shall draw all men to Christ...\n\n4.\nThe vision of our Fathers will not die in our hands,\nLike a candle in the dark we shine.\nBreaking every stronghold till the end of time,\n Till our Lord and King we meet...\n\nRepeat Chorus"),
  Hymns(
      id: 655,
      favorite: 0,
      author: "",
      tune: "ECWA Youth Anthem",
      title: "655 - Hold out your Light (ECWA Youth Anthem)",
      lyric:
          "Oh! Hold out your Light\nEvery Youth Member\nHold out your Light\nEvery Youth Member\nHold out your Light\nEvery Youth Member let your Light shine all the way,\nOh! Brother will you hold out your Light?\nOh! Sisters will you hold out your Light?\nEvery Youth Member will you hold out your Light?\nLet your Light shine all the way.")
  //song written by Bro,Godfrey Alphonsus adopted by ECWA in February 2019 edited by Rev. Romanus Ebenwokod.
];
