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
    await Future.delayed(Duration(seconds: 1));
    final snackBar = SnackBar(
      duration: const Duration(seconds: 2),
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
          SizedBox(
            height: 10,
          ),
          Text(
            FirebaseAuth.instance.currentUser!.displayName ?? "",
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
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
        textStyle:
            TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      onPressed: signOut,
      child: Text('Sign Out'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _userData = Provider.of<UserProvider>(context);
    if (_userData.ds == null) {
      _userData.getUserData();
    }
    final Auth _auth = Auth();
    return Scaffold(
        appBar: AppBar(
          title: _title(),
        ),
        body: StreamBuilder<DocumentSnapshot>(
          stream: _auth.users.doc(_auth.currentUser?.uid).snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            // if (snapshot.connectionState == ConnectionState.waiting) {
            //   return Text("Loading");
            // }

            // if (!snapshot.data!.exists) {
            //   return LoginPage();
            // }

            return Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
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
                            backgroundImage: Image.network(
                                    FirebaseAuth.instance.currentUser!.photoURL ??
                                        "")
                                .image,
                            radius: 60,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            FirebaseAuth.instance.currentUser!.displayName ?? "",
                            // _userData.ds!['username'],
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
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
                    SizedBox(height: 40,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 48,
                            padding: EdgeInsets.only(left: 50, right: 50),
                            margin: EdgeInsets.only(top: 20),
                            width: double.infinity,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                textStyle: TextStyle(
                                    color: white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                    side: BorderSide(color: maincolor, width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.edit, color: Colors.black,),
                                  SizedBox(width: 30,),
                                  const Text("Edit Profile",
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
                            padding: EdgeInsets.only(left: 50, right: 50),
                            margin: EdgeInsets.only(top: 20),
                            width: double.infinity,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                textStyle: TextStyle(
                                    color: white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                    side: BorderSide(color: maincolor, width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.settings, color: Colors.black,),
                                  SizedBox(width: 30,),
                                  const Text("Settings",
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
                            padding: EdgeInsets.only(left: 50, right: 50),
                            margin: EdgeInsets.only(top: 20),
                            width: double.infinity,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                textStyle: TextStyle(
                                    color: white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                    side: BorderSide(color: maincolor, width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: signOut,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.logout, color: Colors.black,),
                                  SizedBox(width: 30,),
                                  const Text("Log out",
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