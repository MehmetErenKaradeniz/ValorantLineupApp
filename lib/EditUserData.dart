import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'RoleData.dart';

class EditUserData extends StatefulWidget {
  final Function(String) onNameChanged;

  EditUserData({required this.onNameChanged});

  @override
  _EditUserDataState createState() => _EditUserDataState();
}

class _EditUserDataState extends State<EditUserData> {
  List<RoleData> roles = [
    RoleData("None", "noneSymbol.png"),
    RoleData("Duelist", "DuelistClassSymbol.png"),
    RoleData("Initiator", "InitiatorClassSymbol.png"),
    RoleData("Controller", "ControllerClassSymbol.png"),
    RoleData("Sentinel", "SentinelClassSymbol.png"),
  ];

  String selectedRole = "None";

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
      _name = prefs.getString('username') ?? "Enter your name";
      _email = prefs.getString('email') ?? "Enter your email";
      _phone = prefs.getString('phone') ?? "Enter your phone number";
      selectedRole = prefs.getString('selectedRole') ?? "None";
    });
  }

  Future<void> _saveUserData(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
    _loadUserData();
    if (key == 'username') {
      widget.onNameChanged(value);
    }
  }

  Future<void> _saveSelectedRole(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedRole', value);
    setState(() {
      selectedRole = value;
    });
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

  Widget _buildDropdownButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.deepPurple, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: selectedRole,
            onChanged: (String? newValue) {
              if (newValue != null) {
                _saveSelectedRole(newValue);
              }
            },
            items: roles.map<DropdownMenuItem<String>>((RoleData role) {
              return DropdownMenuItem<String>(
                value: role.roleName,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/${role.roleImage}',
                      width: 24,
                      height: 24,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Text(role.roleName),
                  ],
                ),
              );
            }).toList(),
            dropdownColor: Colors.white,
            style: TextStyle(
              fontSize: 15,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
            icon: Icon(Icons.arrow_drop_down, color: Colors.deepPurple),
            iconSize: 24,
            isExpanded: true,
          ),
        ),
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
                _buildTextField("Username", "username", _nameController, "Enter your Username", _name),
                _buildTextField("Email", "email", _emailController, "Enter your email", _email),
                _buildTextField("Phone Number", "phone", _phoneController, "Enter your phone number", _phone),
                _buildDropdownButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
