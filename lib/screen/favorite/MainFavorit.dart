import 'package:flutter/material.dart';

class MainFavorit extends StatefulWidget {
  const MainFavorit({Key? key}) : super(key: key);

  @override
  State<MainFavorit> createState() => _MainFavoritState();
}

class _MainFavoritState extends State<MainFavorit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: Text("Favorit")),
    );
  }
}
