import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/yoga/acro.dart';
import 'package:pbl_fitness_app/yoga/aerial.dart';
import 'package:pbl_fitness_app/yoga/ashtanga.dart';
import 'package:pbl_fitness_app/yoga/bikram.dart';
import 'package:pbl_fitness_app/yoga/hatha.dart';
import 'package:pbl_fitness_app/yoga/iyengar.dart';
import 'package:pbl_fitness_app/yoga/jivmukti.dart';
import 'package:pbl_fitness_app/yoga/kundalini.dart';
import 'package:pbl_fitness_app/yoga/prental.dart';
import 'package:pbl_fitness_app/yoga/restorative.dart';
import 'package:pbl_fitness_app/yoga/siva.dart';
import 'package:pbl_fitness_app/yoga/surya_namaskara.dart';
import 'package:pbl_fitness_app/yoga/vinyasa.dart';
import 'package:pbl_fitness_app/yoga/yin.dart';

class YogaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            //TODO
            ModuleWidget(VinyasaScreen(), 'Vinyasa Yoga',
                'assets/images/yoga/vinyasa.jpg'),
            SizedBox(
              height: 8,
            ),

            //TODO
            ModuleWidget(
                HathaScreen(), 'Hatha Yoga', 'assets/images/yoga/hatha.jpg'),
            SizedBox(
              height: 8,
            ),

            //TODO
            ModuleWidget(AshtangaScreen(), 'Ashtanga Yoga',
                'assets/images/yoga/ashtanga.jpg'),
            SizedBox(
              height: 8,
            ),

            //TODO
            ModuleWidget(
                BikramScreen(), 'Bikram Yoga', 'assets/images/yoga/bikram.jpg'),
            SizedBox(
              height: 8,
            ),

            //TODO
            ModuleWidget(IyengarScreen(), 'Iyengar Yoga',
                'assets/images/yoga/iyengar.jpg'),
            SizedBox(
              height: 8,
            ),

            //TODO
            ModuleWidget(RestorativeScreen(), 'Restorative Yoga',
                'assets/images/yoga/restorative.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(
                YinScreen(), 'Yin Yoga', 'assets/images/yoga/yin/yin.jpg'),
            SizedBox(
              height: 8,
            ),

            //TODO
            ModuleWidget(JivmuktiScreen(), 'Jivmukti Yoga',
                'assets/images/yoga/jivmukti.jpg'),
            SizedBox(
              height: 8,
            ),

            // ModuleWidget(AnusaraScreen(),'Anusara Yoga','assets/images/yoga/yoga2.jpg'),
            // SizedBox(height: 8,),

            // ModuleWidget(null,'Power Yoga','assets/images/yoga/yoga2.jpg'),
            // SizedBox(height: 8,),

            //TODO
            ModuleWidget(PrentalScreen(), 'Prental Yoga',
                'assets/images/yoga/prental.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(
                AcroScreen(), 'Acro Yoga', 'assets/images/yoga/acro/acro.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(AerialScreen(), 'Aerial Yoga',
                'assets/images/yoga/aerial/aerial.jpg'),
            SizedBox(
              height: 8,
            ),

            //TODO
            ModuleWidget(KundaliniScreen(), 'Kundalini Yoga',
                'assets/images/yoga/kundalini.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(SivaScreen(), 'Sivananda Yoga',
                'assets/images/yoga/siva/sivananda.jpg'),
            SizedBox(
              height: 8,
            ),

            ModuleWidget(SuryaNamaskaraScreen(), 'Surya Namaskara',
                'assets/images/yoga/surya/sn.jpg'),
            SizedBox(
              height: 8,
            ),

            //TODO
            // EXTRAS
            // SizedBox(height: 8,),
            //
            //

            // SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}
