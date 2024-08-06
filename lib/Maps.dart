import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/ActiveMapPool.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/SitePlusC.dart';
import 'AgentsData.dart';
import 'MapsData.dart';

class Maps extends StatefulWidget {
  final AgentsData agent;

  Maps({Key? key, required this.agent}) : super(key: key);

  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  late BannerAd _bannerAd;
  bool _isBannerAdReady = false;

  final List<MapsData> maps = [
    MapsData("Ascent", "Loading_Screen_Ascent.webp"),
    MapsData("Bind", "Loading_Screen_Bind.webp"),
    MapsData("Lotus", "Loading_Screen_Lotus.webp"),
    MapsData("Sunset", "Loading_Screen_Sunset.webp"),
    MapsData("Breeze", "Loading_Screen_Breeze.webp"),
    MapsData("Icebox", "Loading_Screen_Icebox.webp"),
    MapsData("Split", "Loading_Screen_Split.webp"),
    MapsData("Haven", "Loading_Screen_Haven.webp"),
    MapsData("Pearl", "Loading_Screen_Pearl.webp"),
    MapsData("Fracture", "Loading_Screen_Fracture.webp"),
    MapsData("Abyss", "Loading_Screen_Abyss.webp"),
  ];

  @override
  void initState() {
    super.initState();

    _bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-3940256099942544/6300978111', // Replace with your actual Ad unit ID
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
        title: Text("Maps"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemCount: maps.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      if (maps[index].mapName == "Lotus") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SitePlusC(agent: widget.agent, map: maps[index]),
                          ),
                        );
                      } else if (maps[index].mapName == "Haven") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SitePlusC(agent: widget.agent, map: maps[index]),
                          ),
                        );
                      } else if (maps[index].mapName == "Breeze" ||
                          maps[index].mapName == "Fracture" ||
                          maps[index].mapName == "Pearl" ||
                          maps[index].mapName == "Split") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ActiveMapPool(),
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Site(agent: widget.agent, map: maps[index]),
                          ),
                        );
                      }
                    },
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        title: Text(
                          maps[index].mapName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        leading: Image.asset(
                          "assets/${maps[index].mapImage}",
                          width: 80.0,
                          height: 80.0,
                          fit: BoxFit.cover,
                        ),
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
