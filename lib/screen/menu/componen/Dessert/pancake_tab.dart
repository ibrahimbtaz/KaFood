import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/componen/Fruit/fruit_tile.dart';
import 'package:mycatering/screen/menu/componen/Juice/juice_title.dart';


class DessertTab extends StatelessWidget {
  List DessertOnSale = [
    ["Cake Chocolate", "36", Colors.blueGrey, "lib/images/cake2.png"],
    ["Cake Chocolate", "45", Colors.blueGrey, "lib/images/cake2.png"],
    ["Cake Chocolate", "84", Colors.blueGrey, "lib/images/cake2.png"],
    ["Cake Chocolate", "95", Colors.blueGrey, "lib/images/cake2.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: DessertOnSale.length,

        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {

          return DessertTile(
            DessertVariant: DessertOnSale[index][0],
            DessertPrice: DessertOnSale[index][1],
            DessertColor: DessertOnSale[index][2],
            imageDessertName: DessertOnSale[index][3],
          );
        },
      ),
    );
  }
}
