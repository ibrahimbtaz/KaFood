import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/Juice/title_juice.dart';

class JuiceTab extends StatelessWidget {
  List juiceOnSale = [
    // ["Mango Juice", "36", Colors.blueGrey, "assets/images/mango.png"],
    // ["Orange Juice", "45", Colors.blueGrey, "assets/images/mango.png"],
    // ["Guava Juice", "84", Colors.blueGrey, "assets/images/mango.png"],
    // ["Apple Juice", "95", Colors.blueGrey, "assets/images/mango.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: juiceOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          return JuiceTitle(
            JuiceVariant: juiceOnSale[index][0],
            JuicePrice: juiceOnSale[index][1],
            JuiceColor: juiceOnSale[index][2],
            imageJuiceName: juiceOnSale[index][3],
          );
        },
      ),
    );
  }
}
