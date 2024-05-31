import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_proje_mehmet_eren_karadeniz_2212102003/AppHub.dart';

class LoginPage extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Please enter your username",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Enter your username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                login(context, controller.text);
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void login(BuildContext context, String username) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("username", username);
    openWelcomePage(context, username);
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
}
