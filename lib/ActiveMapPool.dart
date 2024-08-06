import 'package:flutter/material.dart';

class ActiveMapPool extends StatelessWidget {
  const ActiveMapPool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Active Map Pool'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            'This map is not available in the Active Map Pool',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
