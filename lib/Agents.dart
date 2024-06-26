import 'package:flutter/material.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Maps.dart';
import 'AgentsData.dart';

class Agents extends StatelessWidget {
  List<AgentsData> agents = [
    AgentsData("Sova", "Sova_icon.webp"),
    AgentsData("Cypher", "Cypher_icon.webp"),
    AgentsData("Killjoy", "Killjoy_icon.webp"),
    AgentsData("Brimstone", "Brimstone_icon.webp"),
    AgentsData("Viper", "Viper_icon.webp"),
    AgentsData("Gekko", "Gekko_icon.webp"),
    AgentsData("Fade", "Fade_icon.webp"),
    AgentsData("Deadlock", "Deadlock_icon.webp"),
    AgentsData("Kay/0", "KAYO_icon.webp"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agents"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: agents.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Maps(agent: agents[index])),
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
                    agents[index].agentsName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  leading: Image.asset(
                    "assets/${agents[index].agentImage}",
                    width: 35.0,
                    height: 35.0,
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
