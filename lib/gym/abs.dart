import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_gym.dart';

class AbsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Abs',
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

            ModuleWidget(SubModuleWidgetGym('a1'),'Exercise Ball Pull-In','assets/images/gym/abs/ball.jpg'),
            SizedBox(height: 8,),

            // UPPER ABS
            ModuleWidget(SubModuleWidgetGym('a2'),'Dumbbell crunch','assets/images/gym/abs/dumbell_crunch.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('a3'),'Tuck and crunch','assets/images/gym/abs/tuck_crunch.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('a4'),'Modified V-sit','assets/images/gym/abs/v_sit.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('a5'),'Crunch','assets/images/gym/abs/crunch.jpg'),
            SizedBox(height: 8,),



            // LOWER ABS
            ModuleWidget(SubModuleWidgetGym('a6'),'Hanging leg raise','assets/images/gym/abs/hanging_leg.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('a7'),'Hanging knee raise twist','assets/images/gym/abs/knee_twist.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('a8'),'Hanging knee raise','assets/images/gym/abs/knee_raise.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('a9'),'Garhammer raise','assets/images/gym/abs/garhammer.jpg'),
            SizedBox(height: 8,),

            // Obliques And Core Workout
            ModuleWidget(SubModuleWidgetGym('a10'),'Decline plank with foot touch','assets/images/gym/abs/decline_plank.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('a11'),'Seated Russian twist','assets/images/gym/abs/seated_russian.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('a12'),'Bicycle crunches','assets/images/gym/abs/bicycle.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('a13'),'Plank','assets/images/gym/abs/plank.jpg'),
            SizedBox(height: 8,),

          ],
        ),
      ),
    );
  }
}
