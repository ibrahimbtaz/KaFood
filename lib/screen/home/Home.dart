import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mycatering/screen/home/components/HomePage.dart';
import 'package:mycatering/screen/home/components/HomeBody.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: HomeBody(),
      ),
    );
  }
}
