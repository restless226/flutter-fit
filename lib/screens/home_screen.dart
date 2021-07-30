import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/screens/cardio_screen.dart';
import 'package:pbl_fitness_app/screens/drawer_screen.dart';
import 'package:pbl_fitness_app/screens/gym_screen.dart';
import 'package:pbl_fitness_app/screens/health_tips.dart';
import 'package:pbl_fitness_app/screens/yoga_screen.dart';
import 'package:pbl_fitness_app/widgets/module_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(vsync: this,initialIndex: 1,length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Fitness Application',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            )
        ),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            //TODO
            Tab(text: 'Tips'),
            Tab(text: 'Yoga'),
            Tab(text: 'Cardio'),
            Tab(text: 'Gym'),
          ],
        ),
        actions: <Widget>[
          // TODO
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.info),
          ),
          Padding(padding:EdgeInsets.only(left: 10)),
          // Icon(Icons.more_vert),
          // Padding(padding:EdgeInsets.only(left: 20)),
        ],
      ),

      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          //TODO
          HealthTipsScreen(),
          ModuleWidget(YogaScreen(),'Yoga','assets/images/yoga/yoga.jpg'),
          ModuleWidget(CardioScreen(),'Cardio','assets/images/cardio/cardio.jpg'),
          ModuleWidget(GymScreen(),'Gym','assets/images/gym/gym_2.jpg'),

        ],
      ),


      drawer: DrawerScreen(),


      // body: ListView(
      //   padding: const EdgeInsets.all(5),
      //   children: [
      //         ModuleWidget(YogaScreen(),'Yoga','assets/images/yoga/yoga.jpg'),
      //         SizedBox(height: 8,),
      //         ModuleWidget(CardioScreen(),'Cardio','assets/images/cardio/cardio2.jpg'),
      //         SizedBox(height: 8,),
      //         ModuleWidget(GymScreen(),'Gym','assets/images/gym/gym5.jpg'),
      //   ],
      //
      // ),


      // GridView(
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //       maxCrossAxisExtent: 200,
      //       childAspectRatio: 3/2,
      //       crossAxisSpacing: 20,
      //       mainAxisSpacing: 20
      //   ),
      //
      //   padding: const EdgeInsets.all(25),
      //   children: [
      //
      //     TypeButton(YogaScreen(),'Yoga'),
      //     TypeButton(CardioScreen(),'Cardio'),
      //     TypeButton(GymScreen(),'Gym'),
      //
      //   ],

    );
  }
}
