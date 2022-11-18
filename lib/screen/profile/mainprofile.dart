import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mycatering/screen/inputlogin/auth/auth.dart';
import 'package:mycatering/screen/profile/components/body.dart';
import 'package:mycatering/utils/Constant.dart';

class MainProfile extends StatelessWidget {
  final User? user = Auth().currentUser;

  MainProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Body()],
        ),
      ),
    );
  }

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _signOutButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        textStyle: const TextStyle(
            color: whiteColor, fontSize: 16, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      onPressed: signOut,
      child: const Text('Sign Out'),
    );
  }

  Widget _title() {
    return const Text('MainProfile');
  }

  Widget _userUid() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage:
                Image.network(FirebaseAuth.instance.currentUser!.photoURL ?? "")
                    .image,
            radius: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            FirebaseAuth.instance.currentUser!.displayName ?? "",
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            FirebaseAuth.instance.currentUser!.email ?? "",
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

/**/