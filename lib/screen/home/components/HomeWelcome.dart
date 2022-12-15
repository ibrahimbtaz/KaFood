import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: secondary.withOpacity(0.4),
                child: CachedNetworkImage(
                  imageUrl: FirebaseAuth.instance.currentUser!.photoURL ??
                      "https://cdn-icons-png.flaticon.com/512/1946/1946429.png",
                  imageBuilder: (context, imageProvider) => CircleAvatar(
                    backgroundColor: whiteColor,
                    backgroundImage: imageProvider,
                    radius: 20,
                  ),
                  placeholder: ((context, url) => const SizedBox(
                        child: Center(
                          child: CircularProgressIndicator(
                            color: secondary,
                          ),
                        ),
                      )),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome to KaFood",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    FirebaseAuth.instance.currentUser!.displayName ??
                        "Surya Ibrahim",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: secondary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
