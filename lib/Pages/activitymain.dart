import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mycatering/Pages/MainHome.dart';
import 'package:mycatering/Pages/MainMenu.dart';
import 'package:mycatering/Pages/MainProfile.dart';
import 'package:mycatering/asset/asset.dart';
import 'package:mycatering/home.dart';

class activitymain extends StatefulWidget {
  const activitymain({Key? key}) : super(key: key);

  @override
  State<activitymain> createState() => _activitymainState();
}

class _activitymainState extends State<activitymain> {
  int tab = 0;
  final screen = [
    MainHome(),
    MainMenu(),
    MainProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[tab], //screen yang ada di navbar
      bottomNavigationBar: CurvedNavigationBar(
        index: tab,
        color: maincolor,
        backgroundColor: Colors.transparent,
        animationDuration: Duration(milliseconds: 300),
        animationCurve: Curves.easeIn,
        items: [
          Icon(Icons.home, size: 30, color: white,),
          Icon(Icons.menu, size: 30, color: white,),
          Icon(Icons.person, size: 30, color: white,),
        ],
        onTap: (index) {
          setState(() {
            tab = index;
          });
        },
      ),
    );
  }

}
