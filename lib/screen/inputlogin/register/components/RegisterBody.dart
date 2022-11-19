import 'package:flutter/material.dart';
import 'package:mycatering/screen/inputlogin/login/components/EmailField.dart';
import 'package:mycatering/screen/inputlogin/login/components/LoginLogo.dart';
import 'package:mycatering/screen/inputlogin/login/components/PasswordField.dart';
import 'package:mycatering/screen/inputlogin/register/components/MoveLogin.dart';
import 'package:mycatering/screen/inputlogin/register/components/RegisterButton.dart';
import 'package:mycatering/screen/inputlogin/register/components/UsernameField.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
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
            UsernameField(),
            EmailField(),
            PasswordField(),
            RegisterButton(),
            MoveLogin(),
          ],
        ),
      ),
    );
  }
}
