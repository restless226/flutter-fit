import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/gym/abs.dart';
import 'package:pbl_fitness_app/gym/back.dart';
import 'package:pbl_fitness_app/gym/biceps.dart';
import 'package:pbl_fitness_app/gym/chest.dart';
import 'package:pbl_fitness_app/gym/legs.dart';
import 'package:pbl_fitness_app/gym/shoulder.dart';
import 'package:pbl_fitness_app/gym/triceps.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';

class GymScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            ModuleWidget(
                ShoulderScreen(), 'Shoulder', 'assets/images/gym/SHOULDER.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(BackScreen(), 'Back', 'assets/images/gym/BACK.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                BicepScreen(), 'Biceps', 'assets/images/gym/BICEP.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                TricepScreen(), 'Triceps', 'assets/images/gym/TRICEP.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(AbsScreen(), 'Abs', 'assets/images/gym/ABS.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(ChestScreen(), 'Chest', 'assets/images/gym/CHEST.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(LegsScreen(), 'Legs', 'assets/images/gym/LEGS.jpg'),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
