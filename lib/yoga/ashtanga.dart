import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';

//TODO
class AshtangaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Ashtanga Yoga',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'QuickSand',
                  fontWeight: FontWeight.bold
              ),
            )
        ),
      ),

      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            ModuleWidget(null,'',''),
            SizedBox(height: 8,),

            ModuleWidget(null,'',''),
            SizedBox(height: 8,),

            ModuleWidget(null,'',''),
            SizedBox(height: 8,),

          ],
        ),
      ),
    );
  }
}
