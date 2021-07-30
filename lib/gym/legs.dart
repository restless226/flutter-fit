import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_gym.dart';

class LegsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Legs',
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
            ModuleWidget(SubModuleWidgetGym('l1'),'Squat (High And Low Bar)','assets/images/gym/legs/high_low.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('l2'),'Snatch And Power Clean','assets/images/gym/legs/snatch.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('l3'),'Bulgarian Split Squat','assets/images/gym/legs/split.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('l4'),'Dumbbell Lunge','assets/images/gym/legs/lunge.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('l5'),'Romanian Deadlift','assets/images/gym/legs/romanian.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('l6'),'Leg Press','assets/images/gym/legs/leg_press.jpg'),
            SizedBox(height: 8,),


            ModuleWidget(SubModuleWidgetGym('l7'),'Front Squat','assets/images/gym/legs/front_squat.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('l8'),'Legs Deadlift','assets/images/gym/legs/deadlift.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('l9'),'Hack Squat','assets/images/gym/legs/hack.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('l10'),'Machine Squat','assets/images/gym/legs/machine.jpg'),
            SizedBox(height: 8,),


          ],
        ),
      ),
    );
  }
}
