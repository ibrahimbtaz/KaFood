import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mycatering/screen/home/components/SearchDelegate.dart';
import 'package:mycatering/screen/home/components/notifikasi.dart';
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Image(
                  width: 58,
                  height: 58,
                  image: AssetImage("assets/images/project - logo.png"),
                  // repeat: ImageRepeat.repeat,
                ),
                Text(
                  'Menu Page'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: secondary, fontSize: 16),
                ),
                IconButton(
                  padding: EdgeInsets.only(right: 20.0),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return NotifikasiPage();
                        },
                        )
                    );
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/bell-outline-icon.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
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
}
