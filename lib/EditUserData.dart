import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditUserData extends StatefulWidget {
  final Function(String) onNameChanged;

  EditUserData({required this.onNameChanged});

  @override
  _EditUserDataState createState() => _EditUserDataState();
}

class _EditUserDataState extends State<EditUserData> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  String _name = "Enter your name";
  String _email = "Enter your email";
  String _phone = "Enter your phone number";

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _name = prefs.getString('name') ?? "Enter your name";
      _email = prefs.getString('email') ?? "Enter your email";
      _phone = prefs.getString('phone') ?? "Enter your phone number";
    });
  }

  Future<void> _saveUserData(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
    _loadUserData();
    if (key == 'name') {
      widget.onNameChanged(value);
    }
  }

  void _showSaveDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("Successfully saved!"),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildTextField(String label, String key, TextEditingController controller, String hintText, String currentValue) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            "Current Value: $currentValue",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 8.0),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onPressed: () {
              _saveUserData(key, controller.text);
              controller.clear();
              _showSaveDialog();
            },
            child: Text(
              "Save",
              style: TextStyle(color: Colors.black),
            ),
          ),

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit User Data"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: <Widget>[
                _buildTextField("Name", "name", _nameController, "Enter your name", _name),
                _buildTextField("Email", "email", _emailController, "Enter your email", _email),
                _buildTextField("Phone Number", "phone", _phoneController, "Enter your phone number", _phone),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
