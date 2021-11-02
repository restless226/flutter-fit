import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthTipsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Health Tips',
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
