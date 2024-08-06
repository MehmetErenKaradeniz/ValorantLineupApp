import 'package:flutter/material.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/AgentsData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/MapsData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/SiteData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/VideoData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/MyFavorites.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'dart:convert';

class Fade_Ascent_A_Site extends StatefulWidget {
  final AgentsData agent;
  final MapsData map;
  final SiteData site;

  Fade_Ascent_A_Site({Key? key, required this.agent, required this.map, required this.site}) : super(key: key);

  @override
  _Fade_Ascent_A_SiteState createState() => _Fade_Ascent_A_SiteState();
}

class _Fade_Ascent_A_SiteState extends State<Fade_Ascent_A_Site> {
  List<VideoData> videoDataList = [
    VideoData("k4_rVTthzLg", "Ascent Fade A Main to A Default Post Plant Lineup"),
    VideoData("BURUf_1yaBw", "Ascent Fade Wine to A Default Post Plant Lineup"),
    VideoData("RXEmp47eovM", "Ascent Fade Wine to A Double Box Post Plant Lineup"),
    VideoData("6Gli8PIwpTc", "Ascent Fade Generator Check Shock Dart"),
    VideoData("75TLedx4HWI", "Ascent Fade A Site Recon Dart"),
    VideoData("7UGqui8odgU", "Ascent Fade A Site Recon Dart 2"),
    VideoData("j3k3jmpMQ_E", "Ascent Fade A Site Recon Dart 3"),
    VideoData("oluRtvkWIrg", "Ascent Fade A Main to B Fake Recon Dart"),
    VideoData("2C55PQ_PXLA", "Ascent Fade Top Mid(base) to B Fake Recon Dart 2"),
    VideoData("LVLe-m4RD1I", "Ascent Fade Spawn to B Fake Recon Dart 3"),
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
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: videoDataList.length,
              itemBuilder: (context, index) {
                final video = videoDataList[index];
                final isFavorite = favorites.contains(video);
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoOynatSayfasi(
                          videoData: video,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(video.videoName),
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
          ElevatedButton(
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
          },
        ),
      ),
    );
  }
}