import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_yoga.dart';

class HathaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Hatha Yoga',
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
            ModuleWidget(SubModuleWidgetYoga('h1'),'Tadasana (Mountain Pose)','assets/images/yoga/hatha/tadasana.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('h2'),'Vrikshasana (Tree Pose)','assets/images/yoga/hatha/vri.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('h3'),'Adho Mukh Swanasana (Downward Facing Dog Pose)','assets/images/yoga/hatha/adho.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('h4'),'Setu Bandhasana (Bridge Pose)','assets/images/yoga/hatha/setu.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('h5'),'Halasana (Plough Pose)','assets/images/yoga/hatha/halasana.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('h6'),'Sirsana (Head Stand)','assets/images/yoga/hatha/sir.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('h7'),'Salabhasana (Locust Pose)','assets/images/yoga/hatha/salabh.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('h8'),'Sarvangasana (Shoulder Stand)','assets/images/yoga/hatha/sarvang.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('h9'),'Dhanurasana (Bow Pose)','assets/images/yoga/hatha/dhanu.png'),
            SizedBox(height: 8,),



          ],
        ),
      ),
    );
  }
}
