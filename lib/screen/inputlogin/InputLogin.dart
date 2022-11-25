import 'package:flutter/material.dart';
import 'package:mycatering/screen/home/Home.dart';
import 'package:mycatering/screen/inputlogin/components/MethodLogin.dart';
import 'package:mycatering/screen/inputlogin/auth/auth.dart';


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
          return const MyHomePage();
        } else {
          return const MethodLogin();
        }
      },
    );
  }
}
