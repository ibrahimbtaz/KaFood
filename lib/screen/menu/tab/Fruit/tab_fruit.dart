import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/Fruit/title_fruit.dart';

class FruitTab extends StatelessWidget {
  List FruitOnSale = [
    ["Fruit", "36", "fruit-salad.png"],
    ["Fruit", "45", "fruit-salad.png"],
    ["Fruit", "84", "fruit-salad.png"],
    ["Fruit", "95", "fruit-salad.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 5,
      ),
      child: GridView.builder(
        itemCount: FruitOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 25,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return FruitTitle(
            FruitVariant: FruitOnSale[index][0],
            FruitPrice: FruitOnSale[index][1],
            imageFruitName: FruitOnSale[index][2],
          );
        },
      ),
    );
  }
}
