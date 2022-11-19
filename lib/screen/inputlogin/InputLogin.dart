import 'package:flutter/material.dart';
import 'package:mycatering/screen/home/components/activitymain.dart';
import 'package:mycatering/screen/inputlogin/login/LoginPage.dart';
import 'package:mycatering/screen/inputlogin/auth/auth.dart';
import 'package:mycatering/screen/inputlogin/login/components/LoginBody.dart';


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
