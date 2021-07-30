import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_yoga.dart';

class YinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Yin Yoga',
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
            ModuleWidget(SubModuleWidgetYoga('y1'),'Butterfly','assets/images/yoga/yin/butterfly.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('y2'),'Sphinx','assets/images/yoga/yin/sphinx.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('y3'),'Open Wing','assets/images/yoga/yin/wing.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('y4'),'Wide-kneed Child’s Pose','assets/images/yoga/yin/wide_child.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('y5'),'Dragon (A)','assets/images/yoga/yin/dragon_a.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('y6'),'Dragon (B)','assets/images/yoga/yin/dragon_b.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('y7'),'Dragon (C)','assets/images/yoga/yin/dragon_c.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('y8'),'Swan','assets/images/yoga/yin/swan.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('y9'),'Caterpillar','assets/images/yoga/yin/cater.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('y10'),'Bananasana','assets/images/yoga/yin/banana.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('y11'),'Twisted Root','assets/images/yoga/yin/root.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('y12'),'Corpse Pose/Pentacle','assets/images/yoga/yin/corpse.jpg'),
            SizedBox(height: 8,),


          ],
        ),
      ),
    );
  }
}
