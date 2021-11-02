import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Feedback',
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'QuickSand',
              fontWeight: FontWeight.bold),
        )),
      ),
      body: Container(
        child: Center(
          child: Text(
            'Feedback',
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
