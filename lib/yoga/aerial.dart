import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_yoga.dart';

class AerialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Aerial Yoga',
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
            ModuleWidget(SubModuleWidgetYoga('ae1'),'Layback in the Cross Position','assets/images/yoga/aerial/layback.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('ae2'),'Chair in the Cross Position','assets/images/yoga/aerial/chair.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('ae3'),'Shoulder Stretch in Wrist Wrap','assets/images/yoga/aerial/shoulder_wrap.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('ae4'),'Plank with the Feet in the Hammock','assets/images/yoga/aerial/plank.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('ae5'),'Low Lunge in Wrist Wrap','assets/images/yoga/aerial/low_lunge.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('ae6'),'Pike and Pull with the Foot in the Hammock','assets/images/yoga/aerial/pike_pull.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('ae7'),'Star Inversion','assets/images/yoga/aerial/star.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('ae8'),'Floating Savasana with Assisted Foot and Back Massage','assets/images/yoga/aerial/massage.jpg'),
            SizedBox(height: 8,),


          ],
        ),
      ),
    );
  }
}
