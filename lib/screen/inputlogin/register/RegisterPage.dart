import 'package:flutter/material.dart';
import 'package:mycatering/screen/inputlogin/login/LoginPage.dart';
import 'package:mycatering/screen/inputlogin/register/components/RegisterBody.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: RegisterBody()
        ),
      ),
    );
  }
}
