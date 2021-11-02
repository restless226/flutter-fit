import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text(
          'Flutter Fit',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
        content: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                  '• A fitness application which provides step by step instructions alongwith images to perform workouts in fitness domains such as Yoga, Gym, Cardio.'),
              SizedBox(
                height: 10,
              ),
              Text(
                  '• Implemented a simple and responsive UI alongwith Dark Mode feature.'),
              SizedBox(height: 10),
              Text('• Tech stack used: Android, Flutter, Dart'),
            ],
          ),
        ));
  }
}
