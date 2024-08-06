import 'package:flutter/material.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/AgentsData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Lotus_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Lotus_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Lotus_C_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Haven_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Haven_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Haven_C_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Lotus_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Lotus_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Lotus_C_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Haven_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Haven_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Killjoy/Killjoy_Haven_C_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/MapsData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/SiteData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Lotus_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Lotus_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Lotus_C_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Haven_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Haven_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Haven_C_Site.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'Brimstone/Brimstone_Haven_A_Site.dart';
import 'Brimstone/Brimstone_Haven_B_Site.dart';
import 'Brimstone/Brimstone_Haven_C_Site.dart';
import 'Brimstone/Brimstone_Lotus_A_Site.dart';
import 'Brimstone/Brimstone_Lotus_B_Site.dart';
import 'Brimstone/Brimstone_Lotus_C_Site.dart';
import 'Deadlock/Deadlock_Haven_A_Site.dart';
import 'Deadlock/Deadlock_Haven_B_Site.dart';
import 'Deadlock/Deadlock_Haven_C_Site.dart';
import 'Deadlock/Deadlock_Lotus_A_Site.dart';
import 'Deadlock/Deadlock_Lotus_B_Site.dart';
import 'Deadlock/Deadlock_Lotus_C_Site.dart';
import 'Fade/Fade_Haven_A_Site.dart';
import 'Fade/Fade_Haven_B_Site.dart';
import 'Fade/Fade_Haven_C_Site.dart';
import 'Fade/Fade_Lotus_A_Site.dart';
import 'Fade/Fade_Lotus_B_Site.dart';
import 'Fade/Fade_Lotus_C_Site.dart';
import 'Gekko/Gekko_Haven_A_Site.dart';
import 'Gekko/Gekko_Haven_B_Site.dart';
import 'Gekko/Gekko_Haven_C_Site.dart';
import 'Gekko/Gekko_Lotus_A_Site.dart';
import 'Gekko/Gekko_Lotus_B_Site.dart';
import 'Gekko/Gekko_Lotus_C_Site.dart';
import 'KayO/KayO_Haven_A_Site.dart';
import 'KayO/KayO_Haven_B_Site.dart';
import 'KayO/KayO_Haven_C_Site.dart';
import 'KayO/KayO_Lotus_A_Site.dart';
import 'KayO/KayO_Lotus_B_Site.dart';
import 'KayO/KayO_Lotus_C_Site.dart';
import 'Viper/Viper_Haven_A_Site.dart';
import 'Viper/Viper_Haven_B_Site.dart';
import 'Viper/Viper_Haven_C_Site.dart';
import 'Viper/Viper_Lotus_A_Site.dart';
import 'Viper/Viper_Lotus_B_Site.dart';
import 'Viper/Viper_Lotus_C_Site.dart';

class SitePlusC extends StatefulWidget {

  final AgentsData agent;
  final MapsData map;

  SitePlusC({Key? key, required this.agent, required this.map}) : super(key: key);

  @override
  State<SitePlusC> createState() => _SitePlusCState();
}

class _SitePlusCState extends State<SitePlusC> {
  List<SiteData> site = [
    SiteData("A Site", "A_Site.png"),
    SiteData("B Site", "B_Site.png"),
    SiteData("C Site", "C_Site.png"),
  ];
  late BannerAd _bannerAd;
  bool _isBannerAdReady = false;

  @override
  void initState() {
    super.initState();

    _bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-3940256099942544/6300978111', // Test banner ad unit ID
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
                // Harita ve ajan adına göre uygun sayfayı aç
                switch (widget.map.mapName) {
                  case "Lotus":
                    switch (widget.agent.agentsName) {
                      case "Sova":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Lotus_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Lotus_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Lotus_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Cypher":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Lotus_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Lotus_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Lotus_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Killjoy":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Killjoy_Lotus_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Killjoy_Lotus_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Killjoy_Lotus_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      /*
                      case "Degistir":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Lotus_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Lotus_B_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Lotus_C_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                        */
                      case "KayO":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KayO_Lotus_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KayO_Lotus_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KayO_Lotus_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Deadlock":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Deadlock_Lotus_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Deadlock_Lotus_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Deadlock_Lotus_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Fade":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fade_Lotus_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fade_Lotus_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fade_Lotus_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Gekko":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gekko_Lotus_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gekko_Lotus_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gekko_Lotus_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Viper":
                      switch (site[index].siteName) {
                        case "A Site":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Viper_Lotus_A_Site(
                                    agent: widget.agent,
                                    map: widget.map,
                                    site: site[index])),
                          );
                          break;
                        case "B Site":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Viper_Lotus_B_Site(
                                    agent: widget.agent,
                                    map: widget.map,
                                    site: site[index])),
                          );
                          break;
                        case "C Site":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Viper_Lotus_C_Site(
                                    agent: widget.agent,
                                    map: widget.map,
                                    site: site[index])),
                          );
                          break;
                      }
                      break;
                      case "Brimstone":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Brimstone_Lotus_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Brimstone_Lotus_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Brimstone_Lotus_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                    }
                    break;
                  case "Haven":
                    switch (widget.agent.agentsName) {
                      case "Sova":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Haven_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Haven_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Haven_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Cypher":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Haven_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Haven_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Haven_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      /*
                      case "Degistir":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Haven_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Haven_B_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Degistir_Haven_C_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                        */
                      case "KayO":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KayO_Haven_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KayO_Haven_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KayO_Haven_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Deadlock":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Deadlock_Haven_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Deadlock_Haven_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Deadlock_Haven_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Fade":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fade_Haven_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fade_Haven_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fade_Haven_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Gekko":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gekko_Haven_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gekko_Haven_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gekko_Haven_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Viper":
                      switch (site[index].siteName) {
                        case "A Site":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Viper_Haven_A_Site(
                                    agent: widget.agent,
                                    map: widget.map,
                                    site: site[index])),
                          );
                          break;
                        case "B Site":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Viper_Haven_B_Site(
                                    agent: widget.agent,
                                    map: widget.map,
                                    site: site[index])),
                          );
                          break;
                        case "C Site":
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Viper_Haven_C_Site(
                                    agent: widget.agent,
                                    map: widget.map,
                                    site: site[index])),
                          );
                          break;
                      }
                      break;
                      case "Brimstone":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Brimstone_Haven_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Brimstone_Haven_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Brimstone_Haven_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                      case "Killjoy":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Killjoy_Haven_A_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Killjoy_Haven_B_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Killjoy_Haven_C_Site(
                                      agent: widget.agent,
                                      map: widget.map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                    }
                    break;
                  default:
                    break;
                }
              },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
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
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.deepPurple[900]),
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
