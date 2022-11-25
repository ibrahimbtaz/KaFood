import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/componen/Juice/juice_title.dart';


class JuiceTab extends StatelessWidget {
  List juiceOnSale = [
    ["Mango Juice", "36", Colors.blueGrey, "lib/images/mango.png"],
    ["Orange Juice", "45", Colors.blueGrey, "lib/images/mango.png"],
    ["Guava Juice", "84", Colors.blueGrey, "lib/images/mango.png"],
    ["Apple Juice", "95", Colors.blueGrey, "lib/images/img_2.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: juiceOnSale.length,

        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {

          return JuiceTile(
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
