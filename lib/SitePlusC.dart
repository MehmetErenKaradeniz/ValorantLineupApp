import 'package:flutter/material.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/AgentsData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Lotus_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Lotus_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Cypher/Cypher_Lotus_C_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/MapsData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/SiteData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Lotus_A_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Lotus_B_Site.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Sova/Sova_Lotus_C_Site.dart';

class SitePlusC extends StatelessWidget {

  List<SiteData> site = [
    SiteData("A Site", "A_Site.png"),
    SiteData("B Site", "B_Site.png"),
    SiteData("C Site", "C_Site.png"),
  ];

  final Agents agent;
  final MapsData map;

  SitePlusC({Key? key, required this.agent, required this.map}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sites"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: site.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // Ajan adı, harita adı ve site adına göre farklı sayfaları aç
                switch (map.mapName) {
                  case "Lotus":
                    switch (agent.agentsName) {
                      case "Sova":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Lotus_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Lotus_B_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Lotus_C_Site(
                                      agent: agent,
                                      map: map,
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
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Lotus_B_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "C Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Lotus_C_Site(
                                      agent: agent,
                                      map: map,
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
                  leading: Image.asset('assets/${site[index].siteURL}',
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
    );
  }
}
