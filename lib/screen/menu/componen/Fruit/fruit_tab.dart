import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/componen/Juice/juice_title.dart';


class FruitTab extends StatelessWidget {
  List FruitOnSale = [
    ["Cake Chocolate", "36", Colors.blueGrey, "lib/images/fruit-salad.png"],
    ["Cake Chocolate", "45", Colors.blueGrey, "lib/images/fruit-salad.png"],
    ["Cake Chocolate", "84", Colors.blueGrey, "lib/images/fruit-salad.png"],
    ["Cake Chocolate", "95", Colors.blueGrey, "lib/images/fruit-salad.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: FruitOnSale.length,

        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {

          return JuiceTile(
            JuiceVariant: FruitOnSale[index][0],
            JuicePrice: FruitOnSale[index][1],
            JuiceColor: FruitOnSale[index][2],
            imageJuiceName: FruitOnSale[index][3],
          );
        },
      ),
    );
  }
}
