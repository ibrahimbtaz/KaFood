import 'package:flutter/material.dart';
import 'package:mycatering/screen/menu/tab/RiceBox/title_snack.dart';

class RiceboxTab extends StatelessWidget {
  List RiceboxOnSale = [
    ["Beef Sambal Matah", "36", "ricebox-BeefSambalgeprek-1.png"],
    ["Beef Slice", "45", "ricebox-beefslice-2.png"],
    ["Chicken Sambal Matah", "44", "ricebox-chickensambalgeprek-8.png"],
    ["Tenderloin Eggstra", "42", "ricebox-tenderloineggstra-7.png"],
    ["Beef Sosis", "41", "ricebox-beefsosis-3.png"],
    ["Chicken Eggstra", "43", "ricebox-chickeneggstra-4.png"],
    ["Dory Sambal Matah", "47", "ricebox-dorysambalgeprek-5.png"],
    ["Saikoro Rice", "49", "ricebox-saikororice-6.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 5,
      ),
      child: GridView.builder(
        itemCount: RiceboxOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 25,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return RiceboxTitle(
            RiceboxVariant: RiceboxOnSale[index][0],
            RiceboxPrice: RiceboxOnSale[index][1],
            imageRiceboxName: RiceboxOnSale[index][2],
          );
        },
      ),
    );
  }
}
