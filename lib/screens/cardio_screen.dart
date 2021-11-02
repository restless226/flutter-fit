import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';
import 'package:pbl_fitness_app/widgets/module_widget_cardio.dart';
import 'package:pbl_fitness_app/widgets/sub_module_widget_cardio.dart';

class CardioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          ModuleWidgetCardio(SubModuleWidgetCardio('c1'), 'Burpees',
              'https://3i133rqau023qjc1k3txdvr1-wpengine.netdna-ssl.com/wp-content/uploads/2014/07/Burpee_Exercise.jpg'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c2'), 'Jump Rope',
              'https://c4.wallpaperflare.com/wallpaper/664/51/762/jump-rope-workout-wallpaper-preview.jpg'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c3'), 'Jumping Jacks',
              'https://fitpass-images.s3.amazonaws.com/gallery_image_jumping-jacks_C2FD.png'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c4'), 'Sprinting',
              'https://www.builtlean.com/wp-content/uploads/2016/05/Sprinting-Man.jpg'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c5'), 'Lunges',
              'https://indorehd.com/wp-content/uploads/2019/07/Tone-your-body-indore-hd-blog-2.jpg'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c6'), 'Steps',
              'https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/325/325809/man-running-up-the-stairs.jpg?w=1155&h=1541'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c7'), 'Cycling',
              'https://ak.picdn.net/shutterstock/videos/1033237349/thumb/8.jpg'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c8'), 'Mountain Climbers',
              'https://cdn2.stylecraze.com/wp-content/uploads/2014/07/Semicircle-Mountain-Climber.jpg'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c9'), 'Squat Jumps',
              'https://cdn1.coachmag.co.uk/sites/coachmag/files/styles/insert_main_wide_image/public/2017/08/jump-squat.jpg?itok=5WIwUEr8'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c10'), 'Jog in Place',
              'https://imgk.timesnownews.com/story/jog.gif?tr=w-1200,h-900'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c11'), 'Kettlebell Swing',
              'https://cdn2.coachmag.co.uk/sites/coachmag/files/styles/insert_main_wide_image/public/2016/05/russian_kettlebell_swing.jpg?itok=xUMFJY59'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(
              SubModuleWidgetCardio('c12'),
              'Single-Arm Kettlebell Push Press',
              'https://ironbodybyartemis.files.wordpress.com/2014/05/img_1410.jpg'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(
              SubModuleWidgetCardio('c13'),
              'Kettlebell Deadlift to Squat Clean',
              'https://www.bodybuilding.com/images/2017/march/learn-the-olympic-lifts-tablet-960x540.jpg'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c14'), 'Bear Crawl',
              'https://3i133rqau023qjc1k3txdvr1-wpengine.netdna-ssl.com/wp-content/uploads/2014/08/Bear-Walks_Exercise.jpg'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(
              SubModuleWidgetCardio('c15'),
              'Bear Plank Shoulder Tap',
              'https://d2z0k43lzfi12d.cloudfront.net/blog/vcdn322/wp-content/uploads/2015/01/10-core-exercises-1200x800.jpg'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c16'), 'The Ski-Erg',
              'https://www.muscleandfitness.com/wp-content/uploads/2019/08/skierg-1109.jpg?quality=86&strip=all'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c17'), 'Mountain Biking',
              'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cyclist-checking-cycling-computer-royalty-free-image-1598561598.jpg?crop=0.668xw:1.00xh;0.0935xw,0&resize=640:*'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(
              SubModuleWidgetCardio('c18'),
              'Indoor Rock Climbing',
              'https://www.mensjournal.com/wp-content/uploads/mf/_main_rockclimbing.jpg?w=900&h=506&crop=1&quality=86&strip=all&iswp=1'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c19'), 'Stair-running',
              'https://physicalkitchness.com/wp-content/uploads/2017/09/stair-circuit-scorcher-workout-double-stair-climb.png'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c20'), 'Agility Ladder',
              'https://attacktheback.b-cdn.net/wp-content/uploads/2017/06/quick-ladder-pro-fitness-agility-ladder-sklz.jpg'),
          SizedBox(
            height: 8,
          ),

          ModuleWidgetCardio(SubModuleWidgetCardio('c21'), 'Hiking',
              'https://www.intrepidtravel.com/adventures/wp-content/uploads/2015/02/Intrepid-Travel-Chile-Patagonia-trekking-002.jpg'),
          SizedBox(
            height: 8,
          ),

          // SubModuleWidgetCardio('c1'),
          // SubModuleWidgetCardio('c2'),
          // SubModuleWidgetCardio('c3'),
          // SubModuleWidgetCardio('c4'),
          // SubModuleWidgetCardio('c5'),
          // SubModuleWidgetCardio('c6'),
          // SubModuleWidgetCardio('c7'),
          // SubModuleWidgetCardio('c8'),
          // SubModuleWidgetCardio('c9'),
          // SubModuleWidgetCardio('c10'),
          // SubModuleWidgetCardio('c11'),
          // SubModuleWidgetCardio('c12'),
          // SubModuleWidgetCardio('c13'),
          // SubModuleWidgetCardio('c14'),
          // SubModuleWidgetCardio('c15'),
          // SubModuleWidgetCardio('c16'),
          // SubModuleWidgetCardio('c17'),
          // SubModuleWidgetCardio('c18'),
          // SubModuleWidgetCardio('c19'),
          // SubModuleWidgetCardio('c20'),
          // SubModuleWidgetCardio('c21'),

          // //TODO
          // ModuleWidget(null,'High Intensity Interval Training (HIIT)','assets/images/cardio/cardio.jpg'),
          // SizedBox(height: 8,),
          //
          // //TODO
          // ModuleWidget(null,'Push Ups','assets/images/cardio/cardio.jpg'),
          // SizedBox(height: 8,),
        ],
      ),
    );
  }
}
