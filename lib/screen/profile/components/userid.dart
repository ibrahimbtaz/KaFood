import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../utils/Constant.dart';

class Userid extends StatelessWidget {
  const Userid({
    Key? key,
  }) : super(key: key);
  //Mengantur Gambar Profile
  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CachedNetworkImage(
            imageUrl: FirebaseAuth.instance.currentUser!.photoURL ??
                "https://cdn-icons-png.flaticon.com/512/1946/1946429.png",
            imageBuilder: (context, imageProvider) => CircleAvatar(
              backgroundColor: whiteColor,
              backgroundImage: imageProvider,
              radius: 80,
            ),
            placeholder: ((context, url) => const SizedBox(
                  child: Center(
                    child: CircularProgressIndicator(
                      color: secondary,
                    ),
                  ),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            FirebaseAuth.instance.currentUser!.displayName ?? "Surya Ibrahim",
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            FirebaseAuth.instance.currentUser!.email ?? "surya@gmail.com",
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
