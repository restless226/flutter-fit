import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/screens/home_screen.dart';
import 'package:pbl_fitness_app/widgets/dark_theme_widget.dart';
import 'authentication/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultBrightness: Brightness.dark,
      builder: (context, _brightness){
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.deepOrange,
            accentColor: Colors.deepOrangeAccent,
            fontFamily:'Lato',
            brightness: _brightness,
          ),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Fit',
          home: LoginScreen(),
          // home: HomeScreen(),
        );
      },
    );
  }
}


