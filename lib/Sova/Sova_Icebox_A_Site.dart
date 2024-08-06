import 'package:flutter/material.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/AgentsData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/MapsData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/SiteData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/VideoData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/MyFavorites.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'dart:convert';

class Sova_Icebox_A_Site extends StatefulWidget {
  final AgentsData agent;
  final MapsData map;
  final SiteData site;

  Sova_Icebox_A_Site({Key? key, required this.agent, required this.map, required this.site}) : super(key: key);

  @override
  _Sova_Icebox_A_SiteState createState() => _Sova_Icebox_A_SiteState();
}

class _Sova_Icebox_A_SiteState extends State<Sova_Icebox_A_Site> {
  List<VideoData> videoDataList = [
    VideoData("f5ZZedPa_Bc","Icebox Sova A Main to A Default Post Plant Lineup"),
    VideoData("ow0787KgN2A","Icebox Sova A Main to A Site Recon Dart"),
    VideoData("YuCD1zMskLM","Icebox Sova A Main to A Site Recon Dart 2"),
    VideoData("YuCD1zMskLM","Icebox Sova Spawm to Kitchen Recon Dart 3"),
    VideoData("wZcVa1Ks4F0","Icebox Sova A Main to Backsite B Fake Recon Dart"),
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