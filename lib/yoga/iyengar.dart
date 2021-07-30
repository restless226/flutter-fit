import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_yoga.dart';

class IyengarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Iyengar Yoga',
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

            ModuleWidget(SubModuleWidgetYoga('i1'),'Parsvakonasana','assets/images/yoga/iyengar/parsva.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('i2'),'Ardha Chandrasana','assets/images/yoga/iyengar/ardha.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('i3'),'Parivrtta Ardha Chandrasana','assets/images/yoga/iyengar/pari_ardha.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('i4'),'Parivrtta Trikonasana','assets/images/yoga/iyengar/pari_trikon.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('i5'),'Parivrtta Parsvakonasana','assets/images/yoga/iyengar/pari_parsva.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('i6'),'Virabhadrasana I','assets/images/yoga/iyengar/vi1.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('i7'),'Virabhadrasana II','assets/images/yoga/iyengar/vi2.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('i8'),'Virabhadrasana III','assets/images/yoga/iyengar/vi3.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('i9'),'Parsvottanasana','assets/images/yoga/iyengar/parsvottan.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('i10'),'Prasarita Padottanasana','assets/images/yoga/iyengar/prasarita.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('i11'),'Salamba Sirsasana','assets/images/yoga/iyengar/salamba.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('i12'),'Setu Bandha Sarvangasana','assets/images/yoga/iyengar/setu.jpg'),
            SizedBox(height: 8,),

            ModuleWidget(SubModuleWidgetYoga('i13'),'Savasana','assets/images/yoga/iyengar/sava.jpg'),
            SizedBox(height: 8,),



          ],
        ),
      ),
    );
  }
}
