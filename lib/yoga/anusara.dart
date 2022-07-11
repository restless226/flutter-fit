import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';

//TODO
class AnusaraScreen extends StatelessWidget {

  Widget? _widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Vinyasa Yoga',
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
            ModuleWidget(_widget!, 'The Half Moon Pose (Ardha Chandrasana)', ''),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(_widget!, 'The Twist Poses (Vakrasana)', ''),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(_widget!, 'The Warrior Pose (Virbhadrasana)', ''),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(_widget!, 'The Eagle Pose (Garudasana)', ''),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                _widget!,
                'The extended hand to toe pose (Uttitha Hasta Padangustana)',
                ''),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(_widget!, 'The cobra pose (Bhujangasana)', ''),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(_widget!, 'The Dog Pose (Ardha Mukha Shavasana)', ''),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
