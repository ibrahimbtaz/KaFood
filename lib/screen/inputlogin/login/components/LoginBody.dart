import 'package:flutter/material.dart';
import 'package:mycatering/screen/inputlogin/login/components/EmailField.dart';
import 'package:mycatering/screen/inputlogin/login/components/LoginButton.dart';
import 'package:mycatering/screen/inputlogin/login/components/LoginFacebook.dart';
import 'package:mycatering/screen/inputlogin/login/components/LoginGoogle.dart';
import 'package:mycatering/screen/inputlogin/login/components/LoginLogo.dart';
import 'package:mycatering/screen/inputlogin/login/components/MoveRegister.dart';
import 'package:mycatering/screen/inputlogin/login/components/PasswordField.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            LoginLogo(),
            EmailField(),
            PasswordField(),
            LoginButton(),
            LoginGoogle(),
            LoginFacebook(),
            MoveRegister(),
          ],
        ),
      ),
    );
  }
}
