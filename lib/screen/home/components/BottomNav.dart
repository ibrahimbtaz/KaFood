import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../utils/constant.dart';
import '../../cart/MainCart.dart';
import '../../menu/MainMenu.dart';
import '../../profile/mainprofile.dart';
import 'HomePage.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SalomonBottomBar(
            currentIndex: tab,
            onTap: (index) => setState(() => tab = index),
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home-outline-icon.svg',
                  color: primary,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/home-fill-icon.svg',
                  color: primary,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(
                    color: secondary,
                  ),
                ),
                selectedColor: Colors.grey,
              ),

              /// Menu
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/menu-outline-icon.svg',
                  color: primary,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/menu-fill-icon.svg',
                  color: primary,
                ),
                title: const Text(
                  'Menu',
                  style: TextStyle(
                    color: secondary,
                  ),
                ),
                selectedColor: Colors.grey,
              ),

              /// cart
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/cart-outline-icon.svg',
                  color: primary,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/cart-fill-icon.svg',
                  color: primary,
                ),
                title: const Text(
                  'Cart',
                  style: TextStyle(
                    color: secondary,
                  ),
                ),
                selectedColor: Colors.grey,
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/person-outline-icon.svg',
                  color: primary,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/person-fill-icon.svg',
                  color: primary,
                ),
                title: const Text(
                  'Profile',
                  style: TextStyle(
                    color: secondary,
                  ),
                ),
                selectedColor: Colors.grey,
              ),
            ],
          )),
    );
  }
}
