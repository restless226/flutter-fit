import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_yoga.dart';

class KundaliniScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Kundalini Yoga',
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
            ModuleWidget(SubModuleWidgetYoga('k1'), 'Crow Pose',
                'assets/images/yoga/kundalini/crow.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('k2'), 'Frog Pose',
                'assets/images/yoga/kundalini/frog.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('k3'), 'Stretch Pose',
                'assets/images/yoga/kundalini/stretch.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('k4'), 'Camel Pose',
                'assets/images/yoga/kundalini/camel.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('k5'), 'Cobra Pose',
                'assets/images/yoga/kundalini/cobra.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('k6'), 'Guru Pranam',
                'assets/images/yoga/kundalini/guru.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('k7'), 'Sat Kriya',
                'assets/images/yoga/kundalini/sat_kriya.jpg'),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
