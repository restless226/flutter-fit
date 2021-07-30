import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';

//TODO
class AnusaraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Vinyasa Yoga',
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
            ModuleWidget(null,'The Half Moon Pose (Ardha Chandrasana)',''),
            SizedBox(height: 8,),

            ModuleWidget(null,'The Twist Poses (Vakrasana)',''),
            SizedBox(height: 8,),

            ModuleWidget(null,'The Warrior Pose (Virbhadrasana)',''),
            SizedBox(height: 8,),

            ModuleWidget(null,'The Eagle Pose (Garudasana)',''),
            SizedBox(height: 8,),

            ModuleWidget(null,'The extended hand to toe pose (Uttitha Hasta Padangustana)',''),
            SizedBox(height: 8,),

            ModuleWidget(null,'The cobra pose (Bhujangasana)',''),
            SizedBox(height: 8,),

            ModuleWidget(null,'The Dog Pose (Ardha Mukha Shavasana)',''),
            SizedBox(height: 8,),

          ],
        ),
      ),
    );
  }
}
