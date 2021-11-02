import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Settings',
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'QuickSand',
              fontWeight: FontWeight.bold),
        )),
      ),
      body: Container(
        child: Center(
          child: Text(
            'Settings',
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'QuickSand',
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
