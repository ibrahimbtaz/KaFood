import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mycatering/Pages/profile/profile_menu.dart';
import 'package:mycatering/Pages/profile/userid.dart';
import 'package:mycatering/login/auth.dart';

class Body extends StatelessWidget {
  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Userid(),
          const SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Edit Profile",
            icon: "assets/icons/edit.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: signOut,
          ),
        ],
      ),
    );
  }
}
