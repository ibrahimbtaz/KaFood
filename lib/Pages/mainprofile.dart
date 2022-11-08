import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mycatering/asset/asset.dart';
import 'package:mycatering/login/auth.dart';
import 'package:mycatering/login/login_register_page.dart';
import 'package:mycatering/provider/provider_user.dart';
import 'package:provider/provider.dart';

class MainProfile extends StatelessWidget {
  MainProfile({Key? key}) : super(key: key);

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Future.delayed(const Duration(seconds: 1));
    const snackBar = SnackBar(
      duration: Duration(seconds: 2),
      content: Text("Log Out"),
      backgroundColor: Colors.red,
    );
    await Auth().signOut();
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
            height: 5,
          ),
          Text(
            FirebaseAuth.instance.currentUser!.email ?? "",
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _signOutButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: maincolor,
        textStyle: const TextStyle(
            color: white, fontSize: 16, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      onPressed: signOut,
      child: const Text('Sign Out'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserProvider>(context);
    if (userData.ds == null) {
      userData.getUserData();
    }
    final Auth auth = Auth();
    return Scaffold(
        appBar: AppBar(
          title: _title(),
        ),
        body: StreamBuilder<DocumentSnapshot>(
          stream: auth.users.doc(auth.currentUser?.uid).snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            // if (snapshot.connectionState == ConnectionState.waiting) {
            //   return Text("Loading");
            // }

            // if (!snapshot.data!.exists) {
            //   return LoginPage();
            // }

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: Image.network(FirebaseAuth
                                        .instance.currentUser!.photoURL ??
                                    "")
                                .image,
                            radius: 60,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            FirebaseAuth.instance.currentUser!.displayName ??
                                "",
                            // _userData.ds!['username'],
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            FirebaseAuth.instance.currentUser!.email ?? "",
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 48,
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            margin: const EdgeInsets.only(top: 20),
                            width: double.infinity,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                textStyle: const TextStyle(
                                    color: white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                side: const BorderSide(
                                    color: maincolor, width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.edit,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text("Edit Profile",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 48,
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            margin: const EdgeInsets.only(top: 20),
                            width: double.infinity,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                textStyle: const TextStyle(
                                    color: white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                side: const BorderSide(
                                    color: maincolor, width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.settings,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text("Settings",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 48,
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            margin: const EdgeInsets.only(top: 20),
                            width: double.infinity,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                textStyle: const TextStyle(
                                    color: white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                side: const BorderSide(
                                    color: maincolor, width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: signOut,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.logout,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text("Log out",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}

/**/