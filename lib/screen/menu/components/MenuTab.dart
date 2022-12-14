import 'package:flutter/material.dart';
import 'package:mycatering/utils/constant.dart';

class MenuTab extends StatelessWidget {
  final String iconPath;

  const MenuTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 60,
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
            color: quaternary, borderRadius: BorderRadius.circular(12)),
        child: Image.asset(
          iconPath,
          color: secondary,
        ),
      ),
    );
  }
}
