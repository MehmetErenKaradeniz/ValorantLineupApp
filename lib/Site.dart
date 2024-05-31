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
import 'AgentsData.dart';
import 'SiteData.dart';
import 'MapsData.dart';

class Site extends StatelessWidget {
  List<SiteData> site = [
    SiteData("A Site", "A_Site.png"),
    SiteData("B Site", "B_Site.png"),
  ];

  final Agents agent;
  final MapsData map;

  Site({Key? key, required this.agent, required this.map}) : super(key: key);

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
                switch (agent.agentsName) {
                  case "Sova":
                    switch (map.mapName) {
                      case "Ascent":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Ascent_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Ascent_B_Site(
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
                                  builder: (context) => Sova_Bind_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Bind_B_Site(
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
                                  builder: (context) => Sova_Sunset_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Sunset_B_Site(
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
                                  builder: (context) => Sova_Breeze_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Breeze_B_Site(
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
                                  builder: (context) => Sova_Icebox_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Icebox_B_Site(
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
                                  builder: (context) => Sova_Split_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sova_Split_B_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                        }
                        break;
                    }
                    break;
                  case "Cypher":
                    switch (map.mapName) {
                      case "Ascent":
                        switch (site[index].siteName) {
                          case "A Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Ascent_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Ascent_B_Site(
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
                                  builder: (context) => Cypher_Bind_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Bind_B_Site(
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
                                  builder: (context) => Cypher_Sunset_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Sunset_B_Site(
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
                                  builder: (context) => Cypher_Breeze_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Breeze_B_Site(
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
                                  builder: (context) => Cypher_Icebox_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Icebox_B_Site(
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
                                  builder: (context) => Cypher_Split_A_Site(
                                      agent: agent,
                                      map: map,
                                      site: site[index])),
                            );
                            break;
                          case "B Site":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cypher_Split_B_Site(
                                      agent: agent,
                                      map: map,
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
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                child: ListTile(
                  leading: Image.asset("assets/${site[index].siteURL}"),
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
