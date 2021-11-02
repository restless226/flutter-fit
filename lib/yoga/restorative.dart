import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_yoga.dart';

class RestorativeScreen extends StatelessWidget {
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
            ModuleWidget(
                SubModuleWidgetYoga('r1'),
                'Savasana with Shins Supported on Chair',
                'assets/images/yoga/restorative/chair.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('r2'), 'Supported Supine Twist',
                'assets/images/yoga/restorative/twist.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('r3'), 'Supported Lounging Pigeon',
                'assets/images/yoga/restorative/pigeon.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('r4'), 'Supported Backbend',
                'assets/images/yoga/restorative/backbend.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                SubModuleWidgetYoga('r5'),
                'Supported Supine Hero’s Pose',
                'assets/images/yoga/restorative/hero.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                SubModuleWidgetYoga('r6'),
                'Supported Bound Angle Pose',
                'assets/images/yoga/restorative/angle.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('r7'), 'Supported Child’s Pose',
                'assets/images/yoga/restorative/child.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                SubModuleWidgetYoga('r8'),
                'Supported Vertical Leg Extension',
                'assets/images/yoga/restorative/extension.jpg'),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
