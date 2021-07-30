import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_gym.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_yoga.dart';

class VinyasaScreen extends StatelessWidget {
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
            ModuleWidget(SubModuleWidgetYoga('v1'),'Cat-Cow Stretch or Pose (Bidalasana)','assets/images/yoga/vinyasa/cat_cow.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('v2'),'Side Plank Pose (Vasisthasana)','assets/images/yoga/vinyasa/side.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('v3'),'Standing Forward Bend (Uttanasana)','assets/images/yoga/vinyasa/bend.jpg'),
            SizedBox(height: 8,),

          ],
        ),
      ),
    );
  }
}
