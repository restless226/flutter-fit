import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_yoga.dart';

class SivaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Sivananda Yoga',
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
            ModuleWidget(SubModuleWidgetYoga('s1'),'ANULOMA VILOMA','assets/images/yoga/siva/anulom.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s2'),'BACKBEND','assets/images/yoga/siva/backbend.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s3'),'ANJANEYASANA','assets/images/yoga/siva/anja.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s4'),'KNEES, CHEST, CHIN','assets/images/yoga/siva/kcc.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s5'),'BHUJANGASANA','assets/images/yoga/siva/bhu.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s6'),'LOW LUNGE','assets/images/yoga/siva/low_lunge.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s7'),'BALASANA','assets/images/yoga/siva/bala.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s8'),'HALASANA','assets/images/yoga/siva/hala.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s9'),'MATSYASANA','assets/images/yoga/siva/matsya.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s10'),'PASCHIMOTTANASANA','assets/images/yoga/siva/paschi.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s11'),'REST','assets/images/yoga/siva/rest.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s12'),'SALABHASANA','assets/images/yoga/siva/salabh.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s13'),'DHANURASANA','assets/images/yoga/siva/dhanu.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s14'),'CHILD’S POSE','assets/images/yoga/siva/child.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s15'),'ARDHA MATSYENDRASANA','assets/images/yoga/siva/ardha_matsy.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s16'),'PADA HASTASANA','assets/images/yoga/siva/pada.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('s17'),'EASY POSE','assets/images/yoga/siva/easy.jpg'),
            SizedBox(height: 8,),


          ],
        ),
      ),
    );
  }
}
