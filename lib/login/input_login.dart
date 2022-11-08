import 'package:flutter/material.dart';
import 'package:mycatering/Login/auth.dart';
import 'package:mycatering/Login/login_register_page.dart';
import 'package:mycatering/Pages/ActivityMain.dart';

class Inputlogin extends StatefulWidget {
  const Inputlogin({Key? key}) : super(key: key);

  @override
  State<Inputlogin> createState() => _InputloginState();
}

class _InputloginState extends State<Inputlogin> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const activitymain();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
