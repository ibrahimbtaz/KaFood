import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/Tumpeng/title_tumpeng.dart';

class TumpengTab extends StatelessWidget {
  List TumpengOnSale = [
    ["Tumpeng", "36", "tumpeng.png"],
    ["Tumpeng", "45", "tumpengmini-2-removebg-preview.png"],
    ["Tumpeng", "84", "tumpengmini-4-removebg-preview.png"],
    ["Tumpeng", "95", "tumpengmini-6-removebg-preview.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 5,
      ),
      child: GridView.builder(
        itemCount: TumpengOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 25,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return TumpengTitle(
            TumpengVariant: TumpengOnSale[index][0],
            TumpengPrice: TumpengOnSale[index][1],
            imageTumpengName: TumpengOnSale[index][2],
          );
        },
      ),
    );
  }
}
