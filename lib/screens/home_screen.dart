import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/screens/cardio_screen.dart';
import 'package:pbl_fitness_app/screens/drawer_screen.dart';
import 'package:pbl_fitness_app/screens/gym_screen.dart';
import 'package:pbl_fitness_app/screens/health_tips.dart';
import 'package:pbl_fitness_app/screens/info.dart';
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
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Flutter Fit',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(text: 'Tips'),
            Tab(text: 'Yoga'),
            Tab(text: 'Cardio'),
            Tab(text: 'Gym'),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => InfoScreen()),
              );
            },
          ),
          Padding(padding: const EdgeInsets.only(left: 10)),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          // ModuleWidget(YogaScreen(), 'Yoga', 'assets/images/yoga/yoga.jpg'),
          // ModuleWidget(CardioScreen(), 'Cardio', 'assets/images/cardio/cardio.jpg'),
          // ModuleWidget(GymScreen(), 'Gym', 'assets/images/gym/gym_2.jpg'),
          HealthTipsScreen(),
          //TODO
          YogaScreen(),
          CardioScreen(),
          GymScreen(),
        ],
      ),
      drawer: DrawerScreen(),
    );
  }
}
