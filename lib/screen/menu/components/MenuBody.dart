import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/components/MenuSearch.dart';
import 'package:mycatering/screen/menu/components/MenuTab.dart';
import 'package:mycatering/screen/menu/tab/Dessert/tab_dessert.dart';
import 'package:mycatering/screen/menu/tab/Fruit/tab_fruit.dart';
import 'package:mycatering/screen/menu/tab/Juice/tab_juice.dart';
import 'package:mycatering/screen/menu/tab/Snack/tab_snack.dart';
import 'package:mycatering/screen/menu/tab/Tumpeng/tab_tumpeng.dart';

class MenuBody extends StatefulWidget {
  const MenuBody({super.key});

  @override
  State<MenuBody> createState() => _MenuBodyState();
}

class _MenuBodyState extends State<MenuBody> {
  // my tabs
  List<Widget> myTabs = const [
    MenuTab(
      iconPath: 'assets/icons/icons-pancakes.png',
    ),
    MenuTab(
      iconPath: 'assets/icons/icons-salad.png',
    ),
    MenuTab(
      iconPath: 'assets/icons/icons-smoothie.png',
    ),
    MenuTab(
      iconPath: 'assets/icons/icons-snack.png',
    ),
    MenuTab(
      iconPath: 'assets/icons/icons-tumpeng.png',
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
          leading: Image.asset("assets/images/project - logo.png"),
        ),
        body: Column(
          children: [
            MenuSearch(),
            TabBar(tabs: myTabs),
            Expanded(
              child: TabBarView(
                children: [
                  DessertTab(),
                  FruitTab(),
                  JuiceTab(),
                  SnackTab(),
                  TumpengTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
