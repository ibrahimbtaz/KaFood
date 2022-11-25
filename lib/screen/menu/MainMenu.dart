import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/componen/Dessert/pancake_tab.dart';
import 'package:mycatering/screen/menu/componen/Fruit/fruit_tab.dart';
import 'package:mycatering/screen/menu/componen/Juice/juicetab.dart';
import 'package:mycatering/screen/menu/componen/Snack/snacktab.dart';
import 'package:mycatering/screen/menu/componen/Tumpeng/tumpengtab.dart';
import 'package:mycatering/screen/menu/componen/my_tab.dart';
import 'package:mycatering/screen/menu/componen/search_input.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  List<Widget> myTabs = const [
    MyTab(
      iconPath: 'assets/iconsmenu/icontumpeng.png'
    ),

    MyTab(
      iconPath: 'assets/iconsmenu/snack.png',
    ),

    // smoothie tab
    MyTab(
      iconPath: 'assets/iconsmenu/smoothie.png',
    ),

    // pancake tab
    MyTab(
      iconPath: 'assets/iconsmenu/pancakes.png',
    ),

    // pizza tab
    MyTab(
      iconPath: 'assets/iconsmenu/salad.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Image.asset("lib/icons/logo.png")
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {
                  // account button tapped
                },
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SearchInput(),


            // tab bar
            TabBar(tabs: myTabs),

            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // donut page
                  DonutTab(),

                  // burger page
                  SnackTab(),

                  // smoothie page
                  JuiceTab(),

                  // pancake page
                  DessertTab(),

                  // pizza page
                  FruitTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
