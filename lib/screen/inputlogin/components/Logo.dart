import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: const Center(
        child: Image(
          width: 260,
          height: 260,
          image: AssetImage("assets/images/logo.png"),
          // repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }
}