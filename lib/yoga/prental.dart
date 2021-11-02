import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_yoga.dart';

class PrentalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Prental Yoga',
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
            ModuleWidget(SubModuleWidgetYoga('p1'), 'Sukhasana (Easy Pose)',
                'assets/images/yoga/prental/sukh.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('p2'), 'Side Bends',
                'assets/images/yoga/prental/side.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('p3'), 'Sufi Rolls',
                'assets/images/yoga/prental/sufi.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('p4'), 'Cat and Cow',
                'assets/images/yoga/prental/cat_cow.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                SubModuleWidgetYoga('p5'),
                'Vajrasana (Thunderbolt Pose)',
                'assets/images/yoga/prental/vajra.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                SubModuleWidgetYoga('p6'),
                'Vasisthasana (Side Plank Pose, variation)',
                'assets/images/yoga/prental/vasi.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                SubModuleWidgetYoga('p7'),
                'Virabhadrasana II (Warrior Pose II)',
                'assets/images/yoga/prental/vi2.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                SubModuleWidgetYoga('p8'),
                'Utthita Trikonasana (Extended Triangle Pose)',
                'assets/images/yoga/prental/trikon.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('p9'), 'Temple pose',
                'assets/images/yoga/prental/temple.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                SubModuleWidgetYoga('p10'),
                'Prasarita Padottanasana (Wide-Legged Standing Forward Bend, variation)',
                'assets/images/yoga/prental/prasarita.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('p11'), 'Malasana (Garland Pose)',
                'assets/images/yoga/prental/mala.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                SubModuleWidgetYoga('p12'),
                'Hanumanasana (Monkey God Pose, variation)',
                'assets/images/yoga/prental/hanu.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                SubModuleWidgetYoga('p13'),
                'Upavistha Konasana (Wide-Angle Seated Forward Bend)',
                'assets/images/yoga/prental/kona.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('p14'), 'Tarasana (Star Pose)',
                'assets/images/yoga/prental/tara.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(SubModuleWidgetYoga('p15'), 'Seated Meditation',
                'assets/images/yoga/prental/seated.jpg'),
            SizedBox(
              height: 8,
            ),
            ModuleWidget(
                SubModuleWidgetYoga('p16'),
                'Supta Baddha Konasana (Reclining Bound Angle Pose)',
                'assets/images/yoga/prental/supta.jpg'),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
