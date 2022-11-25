import 'package:flutter/material.dart';

import 'tumpeng_tile.dart';

class DonutTab extends StatelessWidget {
  List tumpengOnSale = [
    ["Tumpeng Megana", "36", Colors.blueGrey, "lib/images/img_2.png"],
    ["Tumpeng Pungkur", "45", Colors.blueGrey, "lib/images/img_2.png"],
    ["Tumpeng Punar", "84", Colors.blueGrey, "lib/images/img_2.png"],
    ["Tumpeng Robyong", "95", Colors.blueGrey, "lib/images/img_2.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: tumpengOnSale.length,

        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {

          return TumpengTile(
            tumpengVariant: tumpengOnSale[index][0],
            tumpengPrice: tumpengOnSale[index][1],
            tumpengColor: tumpengOnSale[index][2],
            imageName: tumpengOnSale[index][3],
          );
        },
      ),
    );
  }
}
