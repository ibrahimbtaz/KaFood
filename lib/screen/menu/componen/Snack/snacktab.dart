import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/componen/Juice/juice_title.dart';


class SnackTab extends StatelessWidget {
  List SnackOnSale = [
    ["Snack Box 1", "36", Colors.blueGrey, "lib/images/box.png"],
    ["Snack Box 2", "45", Colors.blueGrey, "lib/images/box.png"],
    ["Snack Box 3", "84", Colors.blueGrey, "lib/images/box.png"],
    ["Snack Box 4", "95", Colors.blueGrey, "lib/images/box.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: SnackOnSale.length,

        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {

          return JuiceTile(
            JuiceVariant: SnackOnSale[index][0],
            JuicePrice: SnackOnSale[index][1],
            JuiceColor: SnackOnSale[index][2],
            imageJuiceName: SnackOnSale[index][3],
          );
        },
      ),
    );
  }
}
