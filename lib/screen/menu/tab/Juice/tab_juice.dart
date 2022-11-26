import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/Juice/title_juice.dart';

class JuiceTab extends StatelessWidget {
  List JuiceOnSale = [
    ["Juice", "36", "mango.png"],
    ["Juice", "45", "mango.png"],
    ["Juice", "84", "mango.png"],
    ["Juice", "95", "mango.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 5,
      ),
      child: GridView.builder(
        itemCount: JuiceOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 25,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return JuiceTitle(
            JuiceVariant: JuiceOnSale[index][0],
            JuicePrice: JuiceOnSale[index][1],
            imageJuiceName: JuiceOnSale[index][2],
          );
        },
      ),
    );
  }
}
