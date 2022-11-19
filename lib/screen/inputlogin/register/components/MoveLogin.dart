import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mycatering/screen/inputlogin/login/LoginPage.dart';
import 'package:mycatering/screen/inputlogin/login/components/LoginBody.dart';
import 'package:mycatering/utils/Constant.dart';

class MoveLogin extends StatefulWidget {
  const MoveLogin({super.key});

  @override
  State<MoveLogin> createState() => _MoveLoginState();
}

class _MoveLoginState extends State<MoveLogin> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Already Have an Account? "),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: Text('Login',
                style: const TextStyle(color: primary),
              ),
            ),
          ]),
    );
  }
}
