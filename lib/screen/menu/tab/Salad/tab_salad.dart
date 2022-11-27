import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/Salad/title_salad.dart';

class SaladTab extends StatelessWidget {
  List SaladOnSale = [
    ["Bound Salad", "36", "Bound Salad-1.png"],
    ["Caesar Salad", "45", "Caesar Salad-2.png"],
    ["Olivier Salad", "84", "Olivier Salad-7.png"],
    ["Rujak Salad", "42", "Rujak Salad-8.png"],
    ["Fruit Salad", "47", "Fruit Salad-3.png"],
    ["Gado Gado", "51", "Gado Gado-6.png"],
    ["Greek Salad", "39", "Greek Salad-5.png"],
    ["Kue Ape", "39", "dessertkueape-7.png"],
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
          return SaladTitle(
            SaladVariant: SaladOnSale[index][0],
            SaladPrice: SaladOnSale[index][1],
            imageSaladName: SaladOnSale[index][2],
          );
        },
      ),
    );
  }
}
