import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/Fruit/title_fruit.dart';

class FruitTab extends StatelessWidget {
  List FruitOnSale = [
    ["Fruit", "36", Colors.blueGrey, "assets/images/fruit-salad.png"],
    ["Fruit", "45", Colors.blueGrey, "assets/images/fruit-salad.png"],
    ["Fruit", "84", Colors.blueGrey, "assets/images/fruit-salad.png"],
    ["Fruit", "95", Colors.blueGrey, "assets/images/fruit-salad.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: FruitOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          return FruitTitle(
            FruitVariant: FruitOnSale[index][0],
            FruitPrice: FruitOnSale[index][1],
            FruitColor: FruitOnSale[index][2],
            imageFruitName: FruitOnSale[index][3],
          );
        },
      ),
    );
  }
}
