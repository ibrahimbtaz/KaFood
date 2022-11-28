import 'package:flutter/material.dart';
import 'package:mycatering/screen/details/Detail.dart';
import 'package:mycatering/screen/home/models/HomeModel.dart';
import 'package:mycatering/screen/menu/tab/Salad/title_salad.dart';

class SaladTab extends StatelessWidget {
  List SaladOnSale = [
    ["Bound Salad", "3.6", "Bound Salad-1.png"],
    ["Caesar Salad", "4.5", "Caesar Salad-2.png"],
    ["Olivier Salad", "3.4", "Olivier Salad-7.png"],
    ["Rujak Salad", "4.2", "Rujak Salad-8.png"],
    ["Fruit Salad", "4.7", "Fruit Salad-3.png"],
    ["Gado Gado", "5.1", "Gado Gado-6.png"],
    ["Greek Salad", "3.9", "Greek Salad-5.png"],
    ["Kue Ape", "3.9", "dessertkueape-7.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 5,
      ),
      child: GridView.builder(
        itemCount: SaladOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 25,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          FoodModel foodModel = saladList[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return FadeTransition(
                      opacity: animation,
                      child: MyDetailPage(
                        foodModel: foodModel,
                      ),
                    );
                  },
                ),
              );
            },
            child: SaladTitle(
              SaladVariant: SaladOnSale[index][0],
              SaladPrice: SaladOnSale[index][1],
              imageSaladName: SaladOnSale[index][2],
            ),
          );
        },
      ),
    );
  }
}
