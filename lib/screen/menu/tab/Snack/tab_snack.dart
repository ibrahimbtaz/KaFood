import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/Snack/title_snack.dart';

class SnackTab extends StatelessWidget {
  List SnackOnSale = [
    ["Snack Box 1", "36", Colors.blueGrey, "assets/images/snack.png"],
    ["Snack Box 2", "45", Colors.blueGrey, "assets/images/snack.png"],
    ["Snack Box 3", "84", Colors.blueGrey, "assets/images/snack.png"],
    ["Snack Box 4", "95", Colors.blueGrey, "assets/images/snack.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: SnackOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          return SnackTitle(
            SnackVariant: SnackOnSale[index][0],
            SnackPrice: SnackOnSale[index][1],
            SnackColor: SnackOnSale[index][2],
            SnackImage: SnackOnSale[index][3],
          );
        },
      ),
    );
  }
}
