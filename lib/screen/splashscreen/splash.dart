import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mycatering/screen/home/components/activitymain.dart';
import 'package:mycatering/screen/inputlogin/InputLogin.dart';
import 'package:mycatering/screen/inputlogin/auth/auth.dart';
import 'package:mycatering/screen/inputlogin/login/components/LoginBody.dart';
import 'package:mycatering/screen/onboarding/Onboarding.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => StreamBuilder(
              stream: Auth().authStateChanges,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return const activitymain();
                } else {
                  return const Inputlogin();
                }
              },
            ),
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
          child: const Center(
            child: Image(
              width: 320,
              height: 320,
              image: AssetImage("assets/images/logo.png"),
              // repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
