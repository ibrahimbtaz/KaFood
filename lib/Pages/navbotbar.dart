import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mycatering/Pages/MenuPage.dart';
import 'package:mycatering/Pages/ProfilePage.dart';
import 'package:mycatering/login/home_page.dart';

class activitymain extends StatefulWidget {
  const activitymain({Key? key}) : super(key: key);

  @override
  State<activitymain> createState() => _activitymainState();
}

class _activitymainState extends State<activitymain> {
  int tab = 0;
  late Widget widgetny;
  @override
  void initState() {
    widgetny = HomePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.green,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Container(color: Colors.green),
    );
  }

  void onPressed(index) {
    setState(() {
      tab = index;
      if (index == 0) {
        widgetny = HomePage();
      } else if (index == 2) {
        widgetny = MenuPage();
      } else if (index == 3) {
        widgetny = ProfilePage();
      }
    });
  }
}
