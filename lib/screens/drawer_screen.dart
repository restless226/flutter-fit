import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/screens/cardio_screen.dart';
import 'package:pbl_fitness_app/screens/feedback_screen.dart';
import 'package:pbl_fitness_app/screens/notifications_screen.dart';
import 'package:pbl_fitness_app/screens/profile_screen.dart';
import 'package:pbl_fitness_app/screens/rate_on_playstore_screen.dart';
import 'package:pbl_fitness_app/screens/settings_screen.dart';
import 'package:pbl_fitness_app/screens/share_screen.dart';
import 'package:pbl_fitness_app/screens/yoga_screen.dart';
import 'package:pbl_fitness_app/widgets/dark_theme_widget.dart';
import 'about.dart';
import 'gym_screen.dart';
import 'health_tips.dart';

class DrawerScreen extends StatefulWidget {

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  bool darkThemeEnabled=true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.9,
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(5),
                color: Theme.of(context).primaryColor,
                // child: UserAccountsDrawerHeader(
                //   accountName: Text('Rohit Pendse'),
                //   accountEmail: Text('rapendse2002@gmail.com'),
                //   currentAccountPicture: CircleAvatar(
                //     backgroundImage: NetworkImage(''),
                //     ),
                //   ),
                child: Center(
                  child: Column(
                    children: [


                      Container(
                        margin: EdgeInsets.only(top: 20,bottom: 10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage('https://cdn2.coachmag.co.uk/sites/coachmag/files/2016/07/4-1-overhead-press.jpg'),
                              fit: BoxFit.fill,
                            ),
                        ),
                      ),

                      Text(
                        'Rohit Pendse',
                        style: TextStyle(fontSize: 22,color: Colors.white),
                      ),

                      Text(
                        'rapendse2002@gmail.com',
                        style: TextStyle(color: Colors.white,),
                      ),
                    ],
                  ),
                ),
              ),


              // ListView(
              //   children: [
              //     UserAccountsDrawerHeader(
              //       accountName: Text('Rohit Pendse'),
              //       accountEmail: Text('rapendse2002@gmail.com'),
              //       currentAccountPicture: CircleAvatar(
              //         backgroundImage: NetworkImage('https://cdn2.coachmag.co.uk/sites/coachmag/files/2016/07/4-1-overhead-press.jpg'),
              //       ),
              //     ),
              //
              //     Text(
              //       'Rohit Pendse',
              //       style: TextStyle(fontSize: 22,color: Colors.white),
              //     ),
              //
              //     Text(
              //       'rapendse2002@gmail.com',
              //       style: TextStyle(color: Colors.white,),
              //     ),
              //   ],
              //
              // ),


              //WORKOUT PLANS
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Workout Plans',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,color: Colors.grey),),
              ),


              ListTile(
                leading: Icon(Icons.forward),
                title: Text('Yoga',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,color: Theme.of(context).accentColor),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=>YogaScreen(),
                  ));
                },
              ),


              // Divider(thickness: 1,),

              ListTile(
                leading: Icon(Icons.forward),
                title: Text('Gym',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,color: Theme.of(context).accentColor),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=>GymScreen(),
                  ));
                },
              ),

              // Divider(thickness: 1,),

              ListTile(
                leading: Icon(Icons.forward),
                title: Text('Cardio',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,color: Theme.of(context).accentColor),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=>CardioScreen(),
                  ));
                },
              ),

              Divider(thickness: 1,),


              //FITNESS TIPS
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Fitness Tips',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,color: Colors.grey),),
              ),
              ListTile(
                leading: Icon(Icons.forward),
                title: Text(
                  'Fitness Tips',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight:FontWeight.bold,
                      color: Theme.of(context).accentColor,
                      decoration: TextDecoration.underline,
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=>HealthTipsScreen(),
                  ));
                },
              ),


              Divider(thickness: 1,),


              //ACCOUNT
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Account',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,color: Colors.grey),),
              ),

              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile',style: TextStyle(fontSize: 18,color: Theme.of(context).accentColor),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=>ProfileScreen(),
                  ));
                },
              ),


              // Divider(thickness: 1,),


              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings',style: TextStyle(fontSize: 18,color: Theme.of(context).accentColor),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=>SettingsScreen(),
                  ));
                },
              ),

              // Divider(thickness: 1,),

              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications',style: TextStyle(fontSize: 18,color: Theme.of(context).accentColor),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=>NotificationsScreen(),
                  ));
                },
              ),

              // Divider(thickness: 1,),

              ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text('Log Out',style: TextStyle(fontSize: 18,color: Theme.of(context).accentColor),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=>null,
                  ));
                },
              ),

              Divider(thickness: 1,),

              //MORE
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('More...',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,color: Colors.grey),),
              ),


              ListTile(
                leading: Icon(Icons.info),
                title: Text('About Us',style: TextStyle(fontSize: 18,color: Theme.of(context).accentColor),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=>AboutScreen(),
                  ));
                },
              ),

              // Divider(thickness: 1,),

              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share',style: TextStyle(fontSize: 18,color: Theme.of(context).accentColor),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=>ShareScreen(),
                  ));
                },
              ),

              ListTile(
                leading: Icon(Icons.feedback),
                title: Text('Feedback',style: TextStyle(fontSize: 18,color: Theme.of(context).accentColor),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=>FeedbackScreen(),
                  ));
                },
              ),

              ListTile(
                leading: Icon(Icons.star),
                title: Text('Rate On PlayStore',style: TextStyle(fontSize: 18,color: Theme.of(context).accentColor),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=>RateOnPlayStoreScreen(),
                  ));
                },
              ),


              Divider(thickness: 1,),

              ListTile(

                title: Text('Night Mode',style: TextStyle(fontSize: 18,color: Theme.of(context).accentColor),),

                leading: Switch(
                  activeColor: Theme.of(context).accentColor,
                  value: darkThemeEnabled,
                  onChanged: (changedTheme){
                    setState(() {
                      darkThemeEnabled=!darkThemeEnabled;
                    });
                    ThemeBuilder.of(context).changeTheme();
                  },
                ),





              ),


              // ListTile(
              //   //TODO
              //   leading: Icon(Icons.alarm_off),
              //   title: Text('Night Mode',style: TextStyle(fontSize: 18,color: Theme.of(context).accentColor),),
              //   onTap: (){
              //     ThemeBuilder.of(context).changeTheme();
              //   },
              // ),




              // Divider(thickness: 1,),
            ],
          ),
        ),
      ),
    );



        // Icon(Icons.info),
        //
        // ListTile(
        //   title: Text('About Us'),
        //   onTap: (){
        //     Navigator.push(context, MaterialPageRoute(
        //       builder: (BuildContext context)=>AboutScreen(),
        //     ));
        //   },
        // ),


  }
}
