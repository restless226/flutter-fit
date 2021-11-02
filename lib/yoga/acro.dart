import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_gym.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_yoga.dart';

class AcroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Acro Yoga',
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
            ModuleWidget(SubModuleWidgetYoga('ac1'), 'Plank on Plank',
                'assets/images/yoga/acro/plank_on_plank.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('ac2'), 'Plank Press',
                'assets/images/yoga/acro/press.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('ac3'), 'Folded Leaf',
                'assets/images/yoga/acro/leaf.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('ac4'), 'Front Plank',
                'assets/images/yoga/acro/front.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('ac5'), 'Partner Forward Folds',
                'assets/images/yoga/acro/partner.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('ac6'), 'Fish on a Rock',
                'assets/images/yoga/acro/fish.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('ac7'), 'Down Dog L-Shape',
                'assets/images/yoga/acro/down_dog.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('ac8'), 'Foot to Hand',
                'assets/images/yoga/acro/foot_to_hand.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('ac9'), 'Chair Pose on Shins',
                'assets/images/yoga/acro/chair.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('ac10'), 'Jedi Plank',
                'assets/images/yoga/acro/jedi.jpg'),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
