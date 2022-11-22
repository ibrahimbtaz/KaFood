import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/Tumpeng/title_tumpeng.dart';


class TumpengTab extends StatelessWidget {
  List TumpengOnSale = [
    ["Tumpeng Megana", "36", Colors.blueGrey, "assets/images/tumpeng.png"],
    ["Tumpeng Pungkur", "45", Colors.blueGrey, "assets/images/tumpeng.png"],
    ["Tumpeng Punar", "84", Colors.blueGrey, "assets/images/tumpeng.png"],
    ["Tumpeng Robyong", "95", Colors.blueGrey, "assets/images/tumpeng.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: TumpengOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          return TumpengTitle(
            TumpengVariant: TumpengOnSale[index][0],
            TumpengPrice: TumpengOnSale[index][1],
            TumpengColor: TumpengOnSale[index][2],
            imageName: TumpengOnSale[index][3],
          );
        },
      ),
    );
  }
}
