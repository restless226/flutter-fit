import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_gym.dart';

class ShoulderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Shoulder',
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
            ModuleWidget(SubModuleWidgetGym('s1'),'Barbell Overhead Shoulder Press','assets/images/gym/shoulder/barbell_overhead.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('s2'),' Seated Dumbbell Shoulder Press','assets/images/gym/shoulder/seated_dumbell.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('s3'),'Front Raise','assets/images/gym/shoulder/front_raise.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('s4'),'Reverse Pec Deck Fly','assets/images/gym/shoulder/reverse_pec_deck.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('s5'),'Bent-Over Dumbbell Lateral Raise','assets/images/gym/shoulder/bent_over.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('s6'),'Dumbbell Lateral Raise','assets/images/gym/shoulder/lateral_rise.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('s7'),'Push Press','assets/images/gym/shoulder/push_press.jpg'),
            SizedBox(height: 8,),


            ModuleWidget(SubModuleWidgetGym('s8'),'Reverse Cable Crossover','assets/images/gym/shoulder/reverse_cable.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('s9'),'One-Arm Cable Lateral Raise','assets/images/gym/shoulder/one_arm.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('s10'),'Face Pull','assets/images/gym/shoulder/face_pull.webp'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('s11'),'High Pull','assets/images/gym/shoulder/high_pull.webp'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('s12'),'Snatch-Grip High Pull','assets/images/gym/shoulder/snatch_grip.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetGym('s13'),'Trap Raise','assets/images/gym/shoulder/trap_raise.webp'),
            SizedBox(height: 8,),


            ModuleWidget(SubModuleWidgetGym('s14'),'Dumbbell Neutral Grip Overhead Press','assets/images/gym/shoulder/dumbell_neutral.webp'),
            SizedBox(height: 8,),


          ],
        ),
      ),
    );
  }
}
