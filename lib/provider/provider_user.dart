import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:mycatering/login/auth.dart';

class UserProvider with ChangeNotifier {
  final Auth _auth = Auth();
  DocumentSnapshot? ds;

  getUserData() {
    _auth.users.doc(_auth.currentUser?.uid).get().then((value) {
      ds = value;
      notifyListeners();
    });
  }
}
