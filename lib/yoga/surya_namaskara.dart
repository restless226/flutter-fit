import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_yoga.dart';

class SuryaNamaskaraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Surya Namaskara',
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
            ModuleWidget(SubModuleWidgetYoga('su1'),'Pranamasana','assets/images/yoga/surya/su1.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('su2'),'Hastauttanasana','assets/images/yoga/surya/su2.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('su3'),'Hasta Padasana','assets/images/yoga/surya/su3.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('su4'),'Ashwa Sanchalanasana','assets/images/yoga/surya/su4.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('su5'),'Dandasana','assets/images/yoga/surya/su5.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('su6'),'Ashtanga Namaskara','assets/images/yoga/surya/su6.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('su7'),'Bhujagasana','assets/images/yoga/surya/su7.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('su8'),'Parvatasana','assets/images/yoga/surya/su8.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('su9'),'Ashwa Sanchalanasana','assets/images/yoga/surya/su9.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('su10'),'Hasta Padasana','assets/images/yoga/surya/su10.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('su11'),'Hastauttanasana','assets/images/yoga/surya/su11.png'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('su12'),'Pranamasana','assets/images/yoga/surya/su12.png'),
            SizedBox(height: 8,),






          ],
        ),
      ),
    );
  }
}
