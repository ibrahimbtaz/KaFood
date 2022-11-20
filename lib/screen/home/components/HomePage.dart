import 'package:flutter/material.dart';
import 'package:mycatering/screen/home/components/HomeBanner.dart';
import 'package:mycatering/screen/home/components/HomeSearch.dart';
import 'package:mycatering/screen/home/components/PopularMenu.dart';
import 'package:mycatering/utils/Constant.dart';

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
      appBar: HomeAppbar(context),
      body: SingleChildScrollView(
        // physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HomeBanner(),
            PopularMenu(),
          ],
        ),
      ),
    );
  }

  AppBar HomeAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: whiteColor,
      title: Row(
        children: const [
          Image(
            height: 30,
            image: AssetImage("assets/images/logo.png"),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "KaFood",
            style: TextStyle(color: primary, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        Container(
          child: Row(children: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
              icon: const Icon(Icons.search, color: primary),
            ),
          ]),
        ),
      ],
    );
  }
}
