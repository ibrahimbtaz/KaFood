import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mycatering/screen/inputlogin/register/RegisterPage.dart';
import 'package:mycatering/utils/Constant.dart';

class MoveRegister extends StatefulWidget {
  const MoveRegister({super.key});

  @override
  State<MoveRegister> createState() => _MoveRegisterState();
}

class _MoveRegisterState extends State<MoveRegister> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Don't Have Any Account? "),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ),
                );
              },
              child: Text(
                'Sign Up',
                style: const TextStyle(color: primary),
              ),
            ),
          ]),
    );
  }
}
