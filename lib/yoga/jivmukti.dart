import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_yoga.dart';

class JivmuktiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Jivmukti Yoga',
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
            ModuleWidget(SubModuleWidgetYoga('j1'),'Monkey Pose (Hanumanasana)','assets/images/yoga/jivmukti/monkey.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('j2'),'Dancing Shiva Pose (Natrajasana)','assets/images/yoga/jivmukti/dancing.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('j3'),'Bow Pose (Dhanurasana)','assets/images/yoga/jivmukti/bow.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('j4'),'Peacock Pose (Mayurasana)','assets/images/yoga/jivmukti/mayur.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('j5'),'Hero Pose (Virasana)','assets/images/yoga/jivmukti/hero.jpg'),
            SizedBox(height: 8,),

          ],
        ),
      ),
    );
  }
}
