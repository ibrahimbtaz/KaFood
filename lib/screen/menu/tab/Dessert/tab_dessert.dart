import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/Dessert/title_dessert.dart';

class DessertTab extends StatelessWidget {
  List DessertOnSale = [
    ["Klepon", "36", "dessertklepon-10.png"],
    ["Martabak Manis", "45", "dessertmartabakmanis-6.png"],
    ["Kue Lapis", "44", "dessertkuelapis-9.png"],
    ["Japanese Cheese", "43", "dessertjapanesecheesecake-3.png"],
    ["Kue Pukis", "47", "dessertkuepukis-8.png"],
    ["Red Velvet", "52", "dessertredvelvetstuffednutella-4.png"],
    ["Nutella Brownis", "55", "dessertnutellafudgybrownis-1.png"],
    ["Nutella Lamington", "49", "dessertnutellalamington-5.png"],
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
