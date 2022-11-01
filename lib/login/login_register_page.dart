import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mycatering/Pages/activitymain.dart';
import 'package:mycatering/asset/asset.dart';
import 'package:mycatering/main.dart';
import 'package:mycatering/setup/onboarding.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = '';
  bool isLogin = true;
  bool obscureText = true;
  Map userdata = {};

  GoogleSignInAccount? _currentAccount;

  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
      Fluttertoast.showToast(
          msg: "Login Succes",
          textColor: white,
          backgroundColor: Colors.grey,
          fontSize: 14);
    } on FirebaseAuthException catch (e) {
      setState(() {
        final snackBar = SnackBar(
          duration: const Duration(seconds: 2),
          content: Text("Please Fill in Your Email and Password"),
          backgroundColor: Colors.red,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        return;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
      Fluttertoast.showToast(
          msg: "Login Succes",
          textColor: white,
          backgroundColor: Colors.grey,
          fontSize: 14);
    } on FirebaseAuthException catch (e) {
      setState(() {
        final snackBar = SnackBar(
          duration: const Duration(seconds: 2),
          content: Text("Please Fill in Your Email and Password"),
          backgroundColor: Colors.red,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        return;
      });
    }
  }

  Widget _logo() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Center(
        child: Image(
          width: 260,
          height: 260,
          image: AssetImage("lib/asset/logo.png"),
          // repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }

  Widget _entryFieldUsername(
    String title,
    TextEditingController controller,
  ) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 10), blurRadius: 50, color: Color(0xffEEEEEE)),
        ],
      ),
      child: TextField(
        cursorColor: maincolor,
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: maincolor,
          ),
          hintText: "Enter Username",
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        controller: controller,
      ),
    );
  }

  Widget _entryFieldEmail(
    String title,
    TextEditingController controller,
  ) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 10), blurRadius: 50, color: Color(0xffEEEEEE)),
        ],
      ),
      child: TextField(
        cursorColor: maincolor,
        decoration: InputDecoration(
          icon: Icon(
            Icons.email,
            color: maincolor,
          ),
          hintText: "Enter Email",
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        controller: controller,
      ),
    );
  }

  Widget _entryFieldPassword(
    String title,
    TextEditingController controller,
  ) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 56,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Color(0xffEEEEEE)),
          ]),
      child: TextField(
        obscureText: obscureText,
        cursorColor: maincolor,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            child: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
              color: maincolor,
            ),
          ),
          icon: Icon(
            Icons.lock,
            color: maincolor,
          ),
          hintText: "Enter Password",
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        controller: controller,
      ),
    );
  }

  Widget _submitButton() {
    return Container(
      height: 56,
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: maincolor,
          textStyle: TextStyle(
              color: white, fontSize: 16, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: isLogin
            ? signInWithEmailAndPassword
            : createUserWithEmailAndPassword,
        child: Text(isLogin ? 'Login' : 'Sign Up'),
      ),
    );
  }

  Widget _loginOrRegisterButton() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
            isLogin ? "Don't Have Any Account? " : "Already Have an Account? "),
        TextButton(
          onPressed: () {
            setState(() {
              isLogin = !isLogin;
            });
          },
          child: Text(
            isLogin ? 'Sign Up' : 'Login',
            style: TextStyle(color: maincolor),
          ),
        ),
      ]),
    );
  }

  Future<void> google() async {
    try {
      await Future.delayed(Duration(seconds: 1));
      await Auth().signInWithGoogle();
      Fluttertoast.showToast(
          msg: "Login Succes",
          textColor: white,
          backgroundColor: Colors.grey,
          fontSize: 14);
    } on FirebaseAuthException catch (e) {
      setState(() {
        final snackBar = SnackBar(
          duration: const Duration(seconds: 2),
          content: Text("Please Fill in Your Email and Password"),
          backgroundColor: Colors.red,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        return;
      });
    }
  }

  Future<void> facebook() async {
    try {
      await Future.delayed(Duration(seconds: 1));
      await Auth().signInWithFacebook();
      Fluttertoast.showToast(
          msg: "Login Succes",
          textColor: white,
          backgroundColor: Colors.grey,
          fontSize: 14);
    } on FirebaseAuthException catch (e) {
      setState(() {
        final snackBar = SnackBar(
          duration: const Duration(seconds: 2),
          content: Text("Please Fill in Your Email and Password"),
          backgroundColor: Colors.red,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        return;
      });
    }
  }

  Widget _google() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: maincolor, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: google,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("lib/asset/google.png"),
              width: 28,
            ),
            const SizedBox(
              width: 15,
            ),
            const Text("Sign in with Google",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }

  Widget _facebook() {
    return Container(
      margin: EdgeInsets.only(top: 6),
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: maincolor, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: facebook,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("lib/asset/fb.png"),
              width: 28,
            ),
            const SizedBox(
              width: 15,
            ),
            const Text("Sign in with Facebook",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: isLogin
              ? Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _logo(),
                      _entryFieldEmail('email', _controllerEmail),
                      _entryFieldPassword('password', _controllerPassword),
                      _submitButton(),
                      _google(),
                      _facebook(),
                      _loginOrRegisterButton(),
                    ],
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _logo(),
                      _entryFieldUsername('username', _controllerUsername),
                      _entryFieldEmail('email', _controllerEmail),
                      _entryFieldPassword('password', _controllerPassword),
                      _submitButton(),
                      _loginOrRegisterButton(),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
