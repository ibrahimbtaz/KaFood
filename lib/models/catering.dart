import 'package:flutter/material.dart';

class Helm {
  final String image, name, nickname;
  final double prize;
  late bool isFavorite;
  late double rating;

  Helm({
    required this.image, 
    required this.name, 
    required this.nickname, 
    required this.prize, 
    required this.rating
});

  // ignore: non_constant_identifier_names
  final HelmList = [
    Helm(
      image: "img_2",
      name: "Bell Visor Sports", 
      nickname:"Bell", 
      prize: 320.000,  
      rating: 4.8,
      )
  ];
}
