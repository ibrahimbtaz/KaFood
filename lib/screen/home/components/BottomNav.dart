import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mycatering/screen/cart/MainCart.dart';
import 'package:mycatering/screen/home/components/HomePage.dart';
import 'package:mycatering/screen/menu/MainMenu.dart';
import 'package:mycatering/screen/profile/mainprofile.dart';
import 'package:mycatering/utils/Constant.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({Key? key}) : super(key: key);

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int tab = 0;
  final screen = [
    const HomePage(),
    const MainMenu(),
    const MainCart(),
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

              /// Menu
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/menu-outline-icon.svg',
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/menu-fill-icon.svg',
                ),
                title: const Text(
                  'Menu',
                  style: TextStyle(
                    color: blackColor,
                  ),
                ),
                selectedColor: Colors.grey,
              ),

              /// cart
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/cart-outline-icon.svg',
                  color: blackColor,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/cart-fill-icon.svg',
                  color: blackColor,
                ),
                title: const Text(
                  'Cart',
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
