import 'package:flutter/material.dart';

class ShareScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Share',
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'QuickSand',
              fontWeight: FontWeight.bold),
        )),
      ),
      body: Container(
        child: Center(
          child: Text(
            'Share',
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
