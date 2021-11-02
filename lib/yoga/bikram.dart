import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_yoga.dart';

class BikramScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Bikram Yoga',
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
            // STANDING SERIES
            // ModuleWidget(null,'Deep Breathing (Pranayama)',''),
            // SizedBox(height: 8,),

            // ModuleWidget(null,'Half Moon with Hands to Feet Pose (Ardha-Chandrasana with Padahastasana)',''),
            // SizedBox(height: 8,),

            ModuleWidget(
                SubModuleWidgetYoga('bkm1'),
                'Awkward Pose (Utkatasana)',
                'assets/images/yoga/bikram/awkward.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(SubModuleWidgetYoga('bkm2'), 'Eagle Pose | Garurasana',
                'assets/images/yoga/bikram/eagle.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(
                SubModuleWidgetYoga('bkm3'),
                'Standing Head to Knee Pose | Dandayamana-Janushirasana',
                'assets/images/yoga/bikram/standing_head.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(
                SubModuleWidgetYoga('bkm4'),
                'Standing Bow Pose | Dandayamana-Dhanurasana',
                'assets/images/yoga/bikram/standing_bow.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(
                SubModuleWidgetYoga('bkm5'),
                'Balancing Stick Pose | Tuladandasana',
                'assets/images/yoga/bikram/stick.jpg'),
            SizedBox(
              height: 8,
            ),

            // ModuleWidget(null,'Standing Separae leg Stretching Pose | Dandayamana-Bibhaktapada-Paschimotthanasana',''),
            // SizedBox(height: 8,),

            ModuleWidget(
                SubModuleWidgetYoga('bkm6'),
                'Triangle Pose | Trikonasana',
                'assets/images/yoga/bikram/trikon.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(SubModuleWidgetYoga('bkm7'), 'Tree Pose | Tadasana',
                'assets/images/yoga/bikram/tree.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(
                SubModuleWidgetYoga('bkm8'),
                'Toe Stand Pose | Padangustasana',
                'assets/images/yoga/bikram/toe.jpg'),
            SizedBox(
              height: 8,
            ),

            // FLOOR SERIES

            // ModuleWidget(null,'Locust Pose | Salabhasana',''),
            // SizedBox(height: 8,),

            ModuleWidget(
                SubModuleWidgetYoga('bkm9'),
                'Full Locust Pose | Poorna-Salabhasana',
                'assets/images/yoga/bikram/full_locust.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(SubModuleWidgetYoga('bkm10'), 'Bow Pose | Dhanurasana',
                'assets/images/yoga/bikram/dhanu.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(
                SubModuleWidgetYoga('bkm11'),
                'Fixed Firm Pose | Supta-Vajrasana',
                'assets/images/yoga/bikram/fixed.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(
                SubModuleWidgetYoga('bkm12'),
                'Half Tortoise Pose| Ardha-Kurmasana',
                'assets/images/yoga/bikram/tortoise.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(SubModuleWidgetYoga('bkm13'), 'Camel Pose | Ustrasana',
                'assets/images/yoga/bikram/camel.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(
                SubModuleWidgetYoga('bkm14'),
                'Rabbit Pose | Sasangasana',
                'assets/images/yoga/bikram/rabbit.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(
                SubModuleWidgetYoga('bkm15'),
                'Spine Twisting Pose | Ardha-Matsyendrasana',
                'assets/images/yoga/bikram/spine.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(
                SubModuleWidgetYoga('bkm16'),
                'Blowing in Firm | Kapalbhati in Vajrasana',
                'assets/images/yoga/bikram/blow_firm.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(
                SubModuleWidgetYoga('bkm17'),
                'Dead Body Pose | Savasana',
                'assets/images/yoga/bikram/savasana.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(
                SubModuleWidgetYoga('bkm18'),
                'Wind Removing Pose | Pavanamuktasana',
                'assets/images/yoga/bikram/wind.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(SubModuleWidgetYoga('bkm19'), 'Cobra | Bhujangasana',
                'assets/images/yoga/bikram/cobra.jpg'),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
