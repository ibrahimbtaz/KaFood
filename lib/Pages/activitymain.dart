import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mycatering/Pages/MainMenu.dart';
import 'package:mycatering/Pages/MainProfile.dart';
import 'package:mycatering/Pages/home/pages/home_page/home_page.dart';
import 'package:mycatering/models/asset.dart';

class activitymain extends StatefulWidget {
  const activitymain({Key? key}) : super(key: key);

  @override
  State<activitymain> createState() => _activitymainState();
}

class _activitymainState extends State<activitymain> {
  int tab = 0;
  final screen = [
    const HomePage(),
    const MainMenu(),
    MainProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[tab], //screen yang ada di navbar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: CurvedNavigationBar(
          index: tab,
          color: maincolor,
          backgroundColor: Colors.transparent,
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.easeIn,
          items: const [
            Icon(
              Icons.home,
              size: 30,
              color: white,
            ),
            Icon(
              Icons.menu,
              size: 30,
              color: white,
            ),
            Icon(
              Icons.person,
              size: 30,
              color: white,
            ),
          ],
          onTap: (index) {
            setState(() {
              tab = index;
            });
          },
        ),
      ),
    );
  }
}
