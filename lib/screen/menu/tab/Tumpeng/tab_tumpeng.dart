import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/Tumpeng/title_tumpeng.dart';

class TumpengTab extends StatelessWidget {
  List TumpengOnSale = [
    ["Tumpeng Mini 1", "36", "tumpengmini-1-removebg-preview.png"],
    ["Tumpeng Mini 2", "45", "tumpengmini-2-removebg-preview.png"],
    ["Tumpeng Mini 3", "52", "tumpengmini-3-removebg-preview.png"],
    ["Tumpeng Mini 4", "50", "tumpengmini-4-removebg-preview.png"],
    ["Tumpeng Mini 5", "49", "tumpengmini-5-removebg-preview.png"],
    ["Tumpeng Mini 6", "44", "tumpengmini-6-removebg-preview.png"],
    ["Tumpeng Mini 7", "48", "tumpengmini-7-removebg-preview.png"],
    ["Tumpeng Mini 8", "41", "tumpengmini-8-removebg-preview.png"],
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
