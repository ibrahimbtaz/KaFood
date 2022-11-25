import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mycatering/screen/inputlogin/auth/auth.dart';
import 'package:mycatering/utils/Constant.dart';

class LoginFacebook extends StatefulWidget {
  const LoginFacebook({super.key});

  @override
  State<LoginFacebook> createState() => _LoginFacebookState();
}

class _LoginFacebookState extends State<LoginFacebook> {
  Future<void> facebook() async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      await Auth().signInWithFacebook();
    } on FirebaseAuthException {
      setState(() {
        const snackBar = SnackBar(
          duration: Duration(seconds: 2),
          content: Text("Please Fill in Your Email and Password"),
          backgroundColor: Colors.red,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        return;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6),
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: whiteColor, width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: primary, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: facebook,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage("assets/images/fb.png"),
              width: 28,
            ),
            SizedBox(
              width: 15,
            ),
            Text("Sign in with Facebook",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
