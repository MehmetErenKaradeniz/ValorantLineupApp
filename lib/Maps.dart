import 'package:flutter/material.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/SitePlusC.dart';
import 'AgentsData.dart';
import 'MapsData.dart';

class Maps extends StatelessWidget {
  final AgentsData agent;

  Maps({Key? key, required this.agent}) : super(key: key);

  final List<MapsData> maps = [
    MapsData("Ascent", "Loading_Screen_Ascent.webp"),
    MapsData("Bind", "Loading_Screen_Bind.webp"),
    MapsData("Lotus", "Loading_Screen_Lotus.webp"),
    MapsData("Sunset", "Loading_Screen_Sunset.webp"),
    MapsData("Breeze", "Loading_Screen_Breeze.webp"),
    MapsData("Icebox", "Loading_Screen_Icebox.webp"),
    MapsData("Split", "Loading_Screen_Split.webp"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maps"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
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
                      builder: (context) => SitePlusC(agent: agent, map: maps[index]),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Site(agent: agent, map: maps[index]),
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
    );
  }
}
