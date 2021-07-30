import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_gym.dart';

class TricepScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Triceps',
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
            ModuleWidget(SubModuleWidgetGym('t1'),'Skullcrusher','assets/images/gym/tricep/skull.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('t2'),'Weighted Parallel-Bar Dip','assets/images/gym/tricep/dip.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('t3'),'Triceps Dip Machine','assets/images/gym/tricep/tricep_dip.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('t4'),'Seated Overhead Dumbbell Extension','assets/images/gym/tricep/seated_dumbell.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('t5'),'Cable Push-Down','assets/images/gym/tricep/cable.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('t6'),'Cable Overhead Extension With Rope','assets/images/gym/tricep/overhead_extension.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('t7'),'Close-Grip Bench Press','assets/images/gym/tricep/bench.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('t8'),'Weighted Bench Dip','assets/images/gym/tricep/weighted.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('t9'),'Board Press','assets/images/gym/tricep/board.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('t10'),'Single-Arm Cable Kick-Back','assets/images/gym/tricep/kick.jpg'),
            SizedBox(height: 8,),


          ],
        ),
      ),
    );
  }
}
