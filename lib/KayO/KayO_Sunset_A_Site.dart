import 'package:flutter/material.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/AgentsData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/MapsData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/SiteData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/VideoData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/MyFavorites.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'dart:convert';

class KayO_Sunset_A_Site extends StatefulWidget {
  final AgentsData agent;
  final MapsData map;
  final SiteData site;

  KayO_Sunset_A_Site({Key? key, required this.agent, required this.map, required this.site}) : super(key: key);

  @override
  _KayO_Sunset_A_SiteState createState() => _KayO_Sunset_A_SiteState();
}

class _KayO_Sunset_A_SiteState extends State<KayO_Sunset_A_Site> {
  List<VideoData> videoDataList = [
    VideoData("EEQkGiJ_d1I", "Sunset KayO A Main to A Default Post Plant Lineup(1x2box)"),
    VideoData("CBre-SFF7dA", "Sunset KayO A Main to A Post Plant Lineup(2x2box) 1"),
    VideoData("1wB-GEziKbk", "Sunset KayO A Main to A Post Plant Lineup(2x2box) 2"),
    VideoData("IOT04Fpq1-k", "Sunset KayO Defender A Enter to B Post Plant Lineup(2x2box)"),
    VideoData("ZkvHfa6E5-s", "Sunset KayO A Main to A Site Recon Dart"),
    VideoData("I812iwHGUw4", "Sunset KayO A Main to A Site Recon Darts"),

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