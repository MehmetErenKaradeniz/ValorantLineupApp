import 'package:flutter/material.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/Agents.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/EditUserData.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/MyFavorites.dart';

class AppHub extends StatefulWidget {
  final String username;

  AppHub({required this.username});

  @override
  _AppHubState createState() => _AppHubState();
}

class _AppHubState extends State<AppHub> {
  late String _username;

  @override
  void initState() {
    super.initState();
    _username = widget.username;
  }

  @override
  void didUpdateWidget(covariant AppHub oldWidget) {
    super.didUpdateWidget(oldWidget);
    _username = widget.username;
  }

  void _updateUsername(String newName) {
    setState(() {
      _username = newName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $_username"),
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
                    MaterialPageRoute(builder: (context) => AnaSayfa()),
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
                label: "Edit User Data",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditUserData(onNameChanged: _updateUsername)),
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
