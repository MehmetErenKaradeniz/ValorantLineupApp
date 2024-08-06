import 'package:flutter/material.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Agents.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/ContactPage.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/MyFavorites.dart';

class AppHub extends StatefulWidget {
  @override
  _AppHubState createState() => _AppHubState();
}

class _AppHubState extends State<AppHub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purpleAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildElevatedButton(
                context,
                label: "Agents",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Agents()),
                  );
                },
              ),
              SizedBox(height: 30),
              _buildElevatedButton(
                context,
                label: "My Favorites",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyFavorites()),
                  );
                },
              ),
              SizedBox(height: 30),
              _buildElevatedButton(
                context,
                label: "Contact Us",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildElevatedButton(BuildContext context, {required String label, required VoidCallback onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 10,
      ),
      child: Container(
        width: 250,
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
