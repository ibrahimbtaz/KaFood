import 'package:flutter/cupertino.dart';

final String tableCart = 'news  ';

class Cart {
  static final List<String> values = [id, image, name, price, rate];

  static final String id = 'id';
  static final String image = 'img';
  static final String name = 'name';
  static final String price = 'price';
  static final String rate = 'rate';
}

class CartModel {
  final int? id;
  final String image;
  final String name;
  final String price;
  final String rate;

  CartModel(
      {this.id,
        required this.image,
        required this.name,
        required this.price,
        required this.rate});

  static CartModel fromJson(Map<String, Object?> json) => CartModel(
    id: json[Cart.id] as int?,
    image: json[Cart.image] as String,
    name: json[Cart.name] as String,
    price: json[Cart.price] as String,
    rate: json[Cart.rate] as String,
  );

  Map<String, Object?> toJson() => {
    Cart.id: id,
    Cart.image: image,
    Cart.name: name,
    Cart.price: price,
    Cart.rate: rate
  };

  CartModel copy(
      {int? id,
        String? imageUrl,
        String? author,
        String? price,
        String? rate}) =>
      CartModel(
          id: id ?? this.id,
          image: imageUrl ?? this.image,
          name: author ?? this.name,
          price: price ?? this.price,
          rate: rate ?? this.rate);
}