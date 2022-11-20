import 'package:flutter/material.dart';
import 'package:mycatering/screen/details/components/DetailContent.dart';
import 'package:mycatering/screen/home/models/HomeModel.dart';

class MyDetailPage extends StatelessWidget {
  final FoodModel foodModel;
  const MyDetailPage({super.key, required this.foodModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: DetailContent(
      foodModel: foodModel,
    )));
  }
}
