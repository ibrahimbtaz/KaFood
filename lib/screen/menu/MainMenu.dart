import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/components/MenuBody.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MenuBody(),
      ),
    );
  }
}
