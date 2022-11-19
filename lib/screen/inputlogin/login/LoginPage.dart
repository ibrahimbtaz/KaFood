import 'package:flutter/material.dart';
import 'package:mycatering/screen/inputlogin/login/components/LoginBody.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: LoginBody()
        ),
      ),
    );
  }
}
