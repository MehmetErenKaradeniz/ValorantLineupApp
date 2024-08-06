import 'package:flutter/material.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/AgentsData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/MapsData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/SiteData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/VideoData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/MyFavorites.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'dart:convert';

class Fade_Breeze_A_Site extends StatefulWidget {
  final AgentsData agent;
  final MapsData map;
  final SiteData site;

  Fade_Breeze_A_Site({Key? key, required this.agent, required this.map, required this.site}) : super(key: key);

  @override
  _Fade_Breeze_A_SiteState createState() => _Fade_Breeze_A_SiteState();
}

class _Fade_Breeze_A_SiteState extends State<Fade_Breeze_A_Site> {
  List<VideoData> videoDataList = [
    VideoData("tNIfcbP1haw", "Breeze Fade A Site Default Post Plant Lineup"),
    VideoData("-j3d11nxfRQ", "Breeze Fade A Site Default Post Plant Lineup"),
    VideoData("LQL-uYDNd50", "Breeze Fade Shock Dart Tunnel Chamber Trap Break"),
    VideoData("acXEs1NUwZ4", "Breeze Fade A Back Site Control Recon Dart"),
    VideoData("eWsW-L61b8Q", "Breeze Fade A Site Recon Darts"),
    VideoData("Bxf2eNv--To", "Breeze Fade Mid to B Site Fake Recon Darts"),
    VideoData("JrF-Akn6Mb4", "Breeze Fade Mid to B Mid Door Info Recon Darts"),
    VideoData("pN1Quo7M-s4", "Breeze Fade A Tunnel to A Bridge Info Recon Darts"),
  ];

  List<VideoData> favorites = [];

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? favoritesString = prefs.getString('favorites');
    if (favoritesString != null) {
      List<dynamic> favoritesJson = jsonDecode(favoritesString);
      setState(() {
        favorites = favoritesJson.map((json) => VideoData.fromJson(json)).toList();
      });
    }
  }

  Future<void> _saveFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String favoritesString = jsonEncode(favorites.map((video) => video.toJson()).toList());
    await prefs.setString('favorites', favoritesString);
  }

  void _toggleFavorite(VideoData video) {
    setState(() {
      if (favorites.contains(video)) {
        favorites.remove(video);
      } else {
        favorites.add(video);
      }
      _saveFavorites();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.agent.agentsName} - ${widget.map.mapName} - ${widget.site.siteName}"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          SizedBox(height: 10), // Video ile diğer elemanlar arasında boşluk eklemek için
          Expanded(
            child: ListView.builder(
              itemCount: videoDataList.length,
              itemBuilder: (context, index) {
                final video = videoDataList[index];
                final isFavorite = favorites.contains(video);
                return InkWell(
                  onTap: () {
                    // Kartlara basıldığında videoyu aç
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoOynatSayfasi(
                          videoData: video, // Video datasını gönderiyoruz
                        ),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(video.videoName), // Video ismini videoData'dan al
                      leading: Icon( Icons.gamepad, color: Colors.deepPurple,),
                      trailing: IconButton(
                        icon: isFavorite ? Icon(Icons.star) : Icon(Icons.star_border),
                        onPressed: () {
                          _toggleFavorite(video);
                        },
                      ),
                    ),
                    elevation: 5,
                  ),
                );
              },
            ),
          ),
          ElevatedButton( // Favorileri gösteren sayfayı açan düğme
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyFavorites()),
              );
            },
            child: Text('Favoriler'),
          ),
        ],
      ),
    );
  }
}

class VideoOynatSayfasi extends StatelessWidget {
  final VideoData videoData;

  VideoOynatSayfasi({Key? key, required this.videoData}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(videoData.videoName),
        backgroundColor: Colors.deepPurple,),
      body: Center(
        child: YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: videoData.id,
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: true,
            ),
          ),
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.deepPurpleAccent,
          progressColors: const ProgressBarColors(
            playedColor: Colors.deepPurpleAccent,
            handleColor: Colors.deepPurple,
          ),
          onReady: () {
            // Video hazır olduğunda yapılacak işlemler
          },
        ),
      ),
    );
  }
}