import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_gym.dart';

class BackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Back',
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'QuickSand',
              fontWeight: FontWeight.bold),
        )),
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            ModuleWidget(SubModuleWidgetGym('b1'), 'Barbell Deadlift',
                'assets/images/gym/back/deadlift.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetGym('b2'), 'Bent-Over Barbell Row',
                'assets/images/gym/back/barbell_row.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetGym('b3'), 'Wide-Grip Pull-Up',
                'assets/images/gym/back/pull_up.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetGym('b4'), 'Standing T-Bar Row',
                'assets/images/gym/back/t_bar_row.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetGym('b5'), 'Seated Cable Row',
                'assets/images/gym/back/cable_row.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetGym('b6'), 'Close-Grip Pull-Down',
                'assets/images/gym/back/pull_down.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetGym('b7'), 'Single-Arm Dumbbell Row',
                'assets/images/gym/back/dumbell_row.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                SubModuleWidgetGym('b8'),
                'Decline Bench Dumbbell Pull-Over',
                'assets/images/gym/back/decline_pull.jpg'),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
