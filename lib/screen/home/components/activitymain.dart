import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mycatering/screen/home/HomePage.dart';
import 'package:mycatering/screen/menu/components/mainmenu.dart';
import 'package:mycatering/screen/profile/mainprofile.dart';
import 'package:mycatering/utils/Constant.dart';

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
          height: 60,
          index: tab,
          color: primary,
          backgroundColor: Colors.transparent,
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.easeIn,
          items: const [
            Icon(
              Icons.home,
              size: 30,
              color: whiteColor,
            ),
            Icon(
              Icons.menu,
              size: 30,
              color: whiteColor,
            ),
            Icon(
              Icons.person,
              size: 30,
              color: whiteColor,
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
