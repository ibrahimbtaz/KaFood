import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mycatering/setup/onboarding.dart';


class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => onboarding(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
            child: Image(
              width: 240,
              height: 240,
              image: AssetImage("lib/asset/logo.png"),
              // repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
} 