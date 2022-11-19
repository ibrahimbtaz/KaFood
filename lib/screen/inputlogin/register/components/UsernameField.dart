import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mycatering/utils/Constant.dart';

class UsernameField extends StatefulWidget {
  const UsernameField({super.key});

  @override
  State<UsernameField> createState() => _UsernameFieldState();
}

class _UsernameFieldState extends State<UsernameField> {
  final TextEditingController _controllerUsername = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[200],
        boxShadow: const [
          BoxShadow(
              offset: Offset(0, 10), blurRadius: 50, color: Color(0xffEEEEEE)),
        ],
      ),
      child: TextField(
        cursorColor: primary,
        decoration: const InputDecoration(
          icon: Icon(
            Icons.person,
            color: primary,
          ),
          hintText: "Enter Username",
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        controller: _controllerUsername,
      ),
    );
  }
}