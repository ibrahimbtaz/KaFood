import 'package:flutter/material.dart';
import 'package:mycatering/screen/details/components/DetailNewArrival.dart';
import 'package:mycatering/screen/home/components/HomeAppBar.dart';
import 'package:mycatering/screen/home/components/HomeBanner.dart';
import 'package:mycatering/screen/home/components/PopularMenu.dart';

Size? size;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const HomeAppbar(),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          HomeBanner(),
          DetailNewArrival(),
          PopularMenu(),
        ],
      ),
    );
  }
}
