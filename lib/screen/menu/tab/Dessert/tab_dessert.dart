import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/Dessert/title_dessert.dart';

class DessertTab extends StatelessWidget {
  List DessertOnSale = [
    ["Cake Chocolate", "36", "cake-1.png"],
    ["Cake Chocolate", "45", "dessertmartabakmanis-6.png"],
    ["Cake Chocolate", "84", "dessertkuelapis-9.png"],
    ["Cake Chocolate", "95", "dessertjapanesecheesecake-3.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 5,
      ),
      child: GridView.builder(
        itemCount: DessertOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 25,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return DessertTitle(
            DessertVariant: DessertOnSale[index][0],
            DessertPrice: DessertOnSale[index][1],
            imageDessertName: DessertOnSale[index][2],
          );
        },
      ),
    );
  }
}
