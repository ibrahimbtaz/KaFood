import 'package:flutter/material.dart';

class Clothes {
  String title;
  String subtitle;
  String price;
  String imageURL;
  List<String> detailUrl;

  Clothes(this.title, this.subtitle, this.price, this.imageURL, this.detailUrl);
  static List<Clothes> generateClothes() {
    return [
      Clothes(
          'Nasi Tumpeng',
          'Food',
          'Rp. 375.000.00/pcs',
          'assets/images/img.png',
          ['assets/images/img.png', 'assets/images/img.png']),
      Clothes(
          'Red Velvet Dessert',
          'Dessert',
          'Rp. 23.000.00/pcs',
          'assets/images/img_5.png',
          ['assets/images/img_5.png', 'assets/images/img_5.png']),
      Clothes(
          'Juice Buah',
          'Drink',
          'Rp. 11.500.00/pcs',
          'assets/images/img_3.png',
          ['assets/images/img_3.png', 'assets/images/img_3.png']),
      Clothes(
          'Coca Cola',
          'Drink',
          'Rp. 9.000.00/pcs',
          'assets/images/img_4.png',
          ['assets/images/img_4.png', 'assets/images/img_4.png']),

    ];
  }
}
