import 'package:flutter/material.dart';
import 'package:mycatering/screen/home/components/HomeNotify.dart';
import 'package:mycatering/screen/home/components/SearchDelegate.dart';
import 'package:mycatering/screen/menu/components/MenuSearch.dart';
import 'package:mycatering/screen/menu/components/MenuTab.dart';
import 'package:mycatering/screen/menu/tab/Dessert/tab_dessert.dart';
import 'package:mycatering/screen/menu/tab/Juice/tab_juice.dart';
import 'package:mycatering/screen/menu/tab/RiceBox/tab_snack.dart';
import 'package:mycatering/screen/menu/tab/Salad/tab_salad.dart';
import 'package:mycatering/screen/menu/tab/Tumpeng/tab_tumpeng.dart';
import 'package:mycatering/utils/Constant.dart';

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
        appBar: HomeAppBar(context),
        body: Column(
          children: [
            MenuSearch(),
            TabBar(tabs: myTabs),
            Expanded(
              child: TabBarView(
                children: [
                  DessertTab(),
                  SaladTab(),
                  JuiceTab(),
                  RiceboxTab(),
                  TumpengTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar HomeAppBar(BuildContext context) {
    return AppBar(
      leadingWidth: 80,
      leading: const Image(
        image: AssetImage("assets/images/project - logo.png"),
        // repeat: ImageRepeat.repeat,
      ),
      centerTitle: true,
      title: Center(
        child: Text(
          'Menu Page'.toUpperCase(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: secondary, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () =>
                showSearch(context: context, delegate: CustomSearchDelegate()),
            icon: const Icon(
              Icons.search,
              color: Colors.black,
              size: 24,
            )),
        IconButton(
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return FadeTransition(
                        opacity: animation, child: const NotifikasiPage());
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.black,
              size: 24,
            )),
      ],
    );
  }
}
