import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart'; // AdMob paketi eklenmeli
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/VideoData.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'dart:convert';

class MyFavorites extends StatefulWidget {
  @override
  _MyFavoritesState createState() => _MyFavoritesState();
}

class _MyFavoritesState extends State<MyFavorites> {
  late List<VideoData> favorites = [];
  late BannerAd _bannerAd;
  bool _isBannerAdReady = false;

  @override
  void initState() {
    super.initState();
    _loadFavorites();

    // Banner reklamını başlat
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

  Future<void> _loadFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? favoritesString = prefs.getString('favorites');
    if (favoritesString != null) {
      List<dynamic> favoritesJson = jsonDecode(favoritesString);
      setState(() {
        favorites =
            favoritesJson.map((json) => VideoData.fromJson(json)).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorites'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final video = favorites[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoOynatSayfasi(
                          videoId: video.id,
                          siteName: video.videoName,
                        ),
                      ),
                    );
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
                        video.videoName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      leading: Icon(
                        Icons.gamepad,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                );
              },
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

class VideoOynatSayfasi extends StatelessWidget {
  final String videoId;
  final String siteName;

  VideoOynatSayfasi({Key? key, required this.videoId, required this.siteName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(siteName),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: videoId,
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: true,
            ),
          ),
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.deepPurple,
          progressColors: const ProgressBarColors(
            playedColor: Colors.deepPurple,
            handleColor: Colors.deepPurpleAccent,
          ),
        ),
      ),
    );
  }
}
