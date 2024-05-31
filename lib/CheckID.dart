import 'package:flutter/material.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/AppHub.dart';

class CheckID extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    checkUser(context);
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            SizedBox(height: 20), // Boşluk
            Text(
              "Checking Users Data...",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openLoginPage(BuildContext context) {
    openPage(context, LoginPage());
  }

  void openWelcomePage(BuildContext context, String username) {
    openPage(context, AppHub(username: username));
  }

  void openPage(BuildContext context, Widget page) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      MaterialPageRoute pageRoute = MaterialPageRoute(builder: (BuildContext context) {
        return page;
      });
      Navigator.pushReplacement(context, pageRoute);
    });
  }

  void checkUser(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? username = prefs.getString("username");
    if (username == null) {
      openLoginPage(context);
    } else {
      openWelcomePage(context, username);
    }
  }
}
