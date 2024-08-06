import 'package:flutter/material.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Ascent_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Ascent_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Bind_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Bind_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Breeze_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Breeze_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Icebox_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Icebox_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Split_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Split_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Sunset_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Sunset_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Abyss_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Abyss_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Fracture_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Fracture_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Pearl_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Pearl_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Ascent_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Ascent_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Bind_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Bind_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Breeze_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Breeze_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Icebox_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Icebox_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Split_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Split_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Sunset_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Sunset_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Abyss_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Abyss_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Fracture_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Fracture_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Pearl_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Pearl_B_Site.dart';
/*
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Ascent_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Ascent_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Bind_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Bind_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Breeze_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Breeze_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Icebox_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Icebox_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Split_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Split_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Sunset_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Sunset_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Abyss_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Abyss_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Fracture_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Fracture_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Pearl_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Degistir/Degistir_Pearl_B_Site.dart';
*/
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Ascent_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Ascent_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Bind_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Bind_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Breeze_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Breeze_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Icebox_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Icebox_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Split_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Split_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Sunset_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Sunset_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Abyss_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Abyss_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Fracture_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Fracture_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Pearl_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/KayO/KayO_Pearl_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Ascent_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Ascent_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Bind_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Bind_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Breeze_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Breeze_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Icebox_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Icebox_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Split_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Split_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Sunset_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Sunset_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Abyss_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Abyss_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Fracture_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Fracture_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Pearl_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Deadlock/Deadlock_Pearl_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Ascent_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Ascent_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Bind_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Bind_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Breeze_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Breeze_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Icebox_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Icebox_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Split_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Split_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Sunset_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Sunset_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Abyss_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Abyss_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Fracture_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Fracture_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Pearl_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Fade/Fade_Pearl_B_Site.dart';

import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Ascent_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Ascent_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Bind_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Bind_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Breeze_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Breeze_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Icebox_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Icebox_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Split_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Split_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Sunset_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Sunset_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Abyss_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Abyss_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Fracture_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Fracture_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Pearl_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Gekko/Gekko_Pearl_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Ascent_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Ascent_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Bind_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Bind_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Breeze_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Breeze_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Icebox_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Icebox_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Split_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Split_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Sunset_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Sunset_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Abyss_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Abyss_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Fracture_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Fracture_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Pearl_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Viper/Viper_Pearl_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Ascent_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Ascent_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Bind_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Bind_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Breeze_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Breeze_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Icebox_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Icebox_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Split_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Split_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Sunset_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Sunset_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Abyss_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Abyss_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Fracture_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Fracture_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Pearl_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Brimstone/Brimstone_Pearl_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Ascent_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Ascent_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Bind_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Bind_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Breeze_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Breeze_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Icebox_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Icebox_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Split_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Split_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Sunset_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Sunset_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Abyss_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Abyss_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Fracture_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Fracture_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Pearl_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Pearl_B_Site.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'AgentsData.dart';
import 'SiteData.dart';
import 'MapsData.dart';

class Site extends StatefulWidget {
  final AgentsData agent;
  final MapsData map;

  Site({Key? key, required this.agent, required this.map}) : super(key: key);

  @override
  State<Site> createState() => _SiteState();
}

class _SiteState extends State<Site> {
  List<SiteData> site = [
    SiteData("A Site", "A_Site.png"),
    SiteData("B Site", "B_Site.png"),
  ];
  late BannerAd _bannerAd;
  bool _isBannerAdReady = false;

  @override
  void initState() {
    super.initState();

    _bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      // Test banner ad unit ID
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          print('BannerAd failed to load: $error');
          ad.dispose();
        },
      ),
    );

    _bannerAd.load();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sites"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemCount: site.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      switch (widget.agent.agentsName) {
                        case "Sova":
                          switch (widget.map.mapName) {
                            case "Ascent":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Sova_Ascent_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Sova_Ascent_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Bind":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sova_Bind_A_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sova_Bind_B_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Breeze":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Sova_Breeze_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Sova_Breeze_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Icebox":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Sova_Icebox_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Sova_Icebox_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Split":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sova_Split_A_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sova_Split_B_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Sunset":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Sova_Sunset_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Sova_Sunset_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Abyss":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sova_Abyss_A_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sova_Abyss_B_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Fracture":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Sova_Fracture_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Sova_Fracture_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Pearl":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sova_Pearl_A_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sova_Pearl_B_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                              }
                              break;
                          }
                          break;
                        /*
                  case "Degistir":
                    switch (map.mapName) {
                      case "Ascent":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Ascent_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Ascent_B_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Bind":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Bind_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Bind_B_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Breeze":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Breeze_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Breeze_B_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Icebox":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Icebox_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Icebox_B_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Split":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Split_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Split_B_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Sunset":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Sunset_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Sunset_B_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Abyss":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Abyss_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Abyss_B_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Fracture":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Fracture_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Fracture_B_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Pearl":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Pearl_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Pearl_B_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                    }
                    break;
                    */
                        case "KayO":
                          switch (widget.map.mapName) {
                            case "Ascent":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            KayO_Ascent_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            KayO_Ascent_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Bind":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => KayO_Bind_A_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => KayO_Bind_B_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Breeze":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            KayO_Breeze_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            KayO_Breeze_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Icebox":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            KayO_Icebox_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            KayO_Icebox_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Split":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => KayO_Split_A_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => KayO_Split_B_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Sunset":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            KayO_Sunset_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            KayO_Sunset_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Abyss":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => KayO_Abyss_A_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => KayO_Abyss_B_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Fracture":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            KayO_Fracture_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            KayO_Fracture_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Pearl":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => KayO_Pearl_A_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => KayO_Pearl_B_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                              }
                              break;
                          }
                          break;
                        case "Deadlock":
                          switch (widget.map.mapName) {
                            case "Ascent":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Ascent_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Ascent_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Bind":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Bind_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Bind_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Breeze":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Breeze_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Breeze_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Icebox":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Icebox_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Icebox_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Split":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Split_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Split_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Sunset":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Sunset_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Sunset_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Abyss":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Abyss_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Abyss_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Fracture":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Fracture_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Fracture_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Pearl":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Pearl_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Deadlock_Pearl_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                          }
                          break;
                        case "Fade":
                          switch (widget.map.mapName) {
                            case "Ascent":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Fade_Ascent_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Fade_Ascent_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Bind":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Fade_Bind_A_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Fade_Bind_B_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Breeze":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Fade_Breeze_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Fade_Breeze_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Icebox":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Fade_Icebox_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Fade_Icebox_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Split":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Fade_Split_A_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Fade_Split_B_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Sunset":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Fade_Sunset_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Fade_Sunset_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Abyss":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Fade_Abyss_A_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Fade_Abyss_B_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Fracture":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Fade_Fracture_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Fade_Fracture_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Pearl":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Fade_Pearl_A_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Fade_Pearl_B_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                              }
                              break;
                          }
                          break;
                        case "Gekko":
                          switch (widget.map.mapName) {
                            case "Ascent":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Ascent_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Ascent_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Bind":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Gekko_Bind_A_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Gekko_Bind_B_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Breeze":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Breeze_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Breeze_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Icebox":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Icebox_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Icebox_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Split":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Split_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Split_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Sunset":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Sunset_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Sunset_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Abyss":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Abyss_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Abyss_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Fracture":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Fracture_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Fracture_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Pearl":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Pearl_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Gekko_Pearl_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                          }
                          break;
                        case "Viper":
                          switch (widget.map.mapName) {
                            case "Ascent":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Ascent_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Ascent_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Bind":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Viper_Bind_A_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Viper_Bind_B_Site(
                                            agent: widget.agent,
                                            map: widget.map,
                                            site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Breeze":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Breeze_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Breeze_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Icebox":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Icebox_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Icebox_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Split":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Split_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Split_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Sunset":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Sunset_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Sunset_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Abyss":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Abyss_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Abyss_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Fracture":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Fracture_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Fracture_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Pearl":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Pearl_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Viper_Pearl_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                          }
                          break;
                        case "Brimstone":
                          switch (widget.map.mapName) {
                            case "Ascent":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Ascent_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Ascent_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Bind":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Bind_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Bind_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Breeze":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Breeze_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Breeze_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Icebox":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Icebox_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Icebox_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Split":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Split_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Split_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Sunset":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Sunset_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Sunset_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Abyss":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Abyss_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Abyss_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Fracture":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Fracture_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Fracture_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Pearl":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Pearl_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Brimstone_Pearl_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                          }
                          break;
                        case "Cypher":
                          switch (widget.map.mapName) {
                            case "Ascent":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Ascent_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Ascent_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Bind":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Bind_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Bind_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Sunset":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Sunset_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Sunset_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Breeze":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Breeze_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Breeze_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Icebox":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Icebox_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Icebox_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Split":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Split_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Split_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Abyss":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Abyss_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Abyss_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Fracture":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Fracture_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Fracture_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Pearl":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Pearl_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Cypher_Pearl_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                          }
                          break;
                        case "Killjoy":
                          switch (widget.map.mapName) {
                            case "Ascent":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Ascent_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Ascent_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Bind":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Bind_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Bind_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Sunset":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Sunset_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Sunset_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Breeze":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Breeze_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Breeze_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Icebox":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Icebox_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Icebox_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Split":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Split_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Split_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Abyss":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Abyss_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Abyss_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Fracture":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Fracture_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Fracture_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                            case "Pearl":
                              switch (site[index].siteName) {
                                case "A Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Pearl_A_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                                case "B Site":
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Killjoy_Pearl_B_Site(
                                                agent: widget.agent,
                                                map: widget.map,
                                                site: site[index])),
                                  );
                                  break;
                              }
                              break;
                          }
                          break;
                      }
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/${site[index].siteURL}',
                          width: 80.0,
                          height: 80.0,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          site[index].siteName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.deepPurple[900],
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios,
                            color: Colors.deepPurple[900]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          if (_isBannerAdReady)
            Container(
              width: _bannerAd.size.width.toDouble(),
              height: _bannerAd.size.height.toDouble(),
              child: AdWidget(ad: _bannerAd),
            ),
        ],
      ),
    );
  }
}
