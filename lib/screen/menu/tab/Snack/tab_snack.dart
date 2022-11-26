import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/Snack/title_snack.dart';

class SnackTab extends StatelessWidget {
  List SnackOnSale = [
    ["Snack", "36", "snack.png"],
    ["Snack", "45", "ricebox-beefslice-2.png"],
    ["Snack", "84", "ricebox-chickensambalgeprek-8.png"],
    ["Snack", "95", "ricebox-tenderloineggstra-7.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 5,
      ),
      child: GridView.builder(
        itemCount: SnackOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 25,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return SnackTitle(
            SnackVariant: SnackOnSale[index][0],
            SnackPrice: SnackOnSale[index][1],
            imageSnackName: SnackOnSale[index][2],
          );
        },
      ),
    );
  }
}
