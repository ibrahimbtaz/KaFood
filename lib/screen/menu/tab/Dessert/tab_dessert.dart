import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/Dessert/title_dessert.dart';

class DessertTab extends StatelessWidget {
  List DessertOnSale = [
    // ["Cake Chocolate", "36", Colors.blueGrey, "assets/images/cake-1.png"],
    // ["Cake Chocolate", "45", Colors.blueGrey, "assets/images/cake-1.png"],
    // ["Cake Chocolate", "84", Colors.blueGrey, "assets/images/cake-1.png"],
    // ["Cake Chocolate", "95", Colors.blueGrey, "assets/images/cake-1.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: DessertOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          return DessertTitle(
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
