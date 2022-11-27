import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/Juice/title_juice.dart';

class JuiceTab extends StatelessWidget {
  List JuiceOnSale = [
    ["Mango Juice", "14", "juice-mango-8.png"],
    ["Banana Juice", "15", "juice-pisang-4.png"],
    ["Guava Juice", "14", "juice-guava-6.png"],
    ["Orange Juice", "17", "juice-jeruk-5.png"],
    ["Dragon Fruit Juice", "13", "juice-buahnaga-1.png"],
    ["Kiwi Juice", "14", "juice-kiwi-2.png"],
    ["Avocado Juice", "14", "juice-alpukat-3.png"],
    ["Apple Juice", "15", "juice-apple-7.png"],
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
