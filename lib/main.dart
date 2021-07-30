import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/screens/first_page.dart';
import 'package:pbl_fitness_app/screens/home_screen.dart';
import 'package:pbl_fitness_app/widgets/dark_theme_widget.dart';

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

    // var currentBrightness=ThemeBuilder.of(context).getCurrentTheme();
    super.initState();
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
          title: 'Fitness Application',

          home: FirstPage(),
        );
      },
    );
  }
}


