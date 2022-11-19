import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mycatering/screen/favorite/MainFavorit.dart';
import 'package:mycatering/screen/home/HomePage.dart';
import 'package:mycatering/screen/menu/MainMenu.dart';
import 'package:mycatering/screen/profile/mainprofile.dart';
import 'package:mycatering/utils/Constant.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

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
    const MainFavorit(),
    MainProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[tab], //screen yang ada di navbar
      bottomNavigationBar: Container(
          height: 80,
          decoration: const BoxDecoration(
            color: whiteColor,
          ),
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SalomonBottomBar(
            currentIndex: tab,
            onTap: (index) => setState(() => tab = index),
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home-outline-icon.svg',
                  color: blackColor,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/home-fill-icon.svg',
                  color: blackColor,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(
                    color: blackColor,
                  ),
                ),
                selectedColor: Colors.grey,
              ),

              /// Search
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/menu-outline-icon.svg',
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/menu-fill-icon.svg',
                ),
                title: const Text(
                  'Search',
                  style: TextStyle(
                    color: blackColor,
                  ),
                ),
                selectedColor: Colors.grey,
              ),

              /// Wishlist
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/heart-outline-icon.svg',
                  color: blackColor,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/heart-fill-icon.svg',
                  color: blackColor,
                ),
                title: const Text(
                  'Favorit',
                  style: TextStyle(
                    color: blackColor,
                  ),
                ),
                selectedColor: Colors.grey,
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/person-outline-icon.svg',
                  color: blackColor,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/person-fill-icon.svg',
                  color: blackColor,
                ),
                title: const Text(
                  'Profile',
                  style: TextStyle(
                    color: blackColor,
                  ),
                ),
                selectedColor: Colors.grey,
              ),
            ],
          )),
    );
  }
}
