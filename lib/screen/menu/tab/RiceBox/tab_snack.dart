import 'package:flutter/material.dart';
import 'package:mycatering/screen/details/Detail.dart';
import 'package:mycatering/screen/home/models/HomeModel.dart';
import 'package:mycatering/screen/menu/tab/RiceBox/title_snack.dart';

class RiceboxTab extends StatelessWidget {
  List RiceboxOnSale = [
    ["Beef Sambal Matah", "3.6", "ricebox-BeefSambalgeprek-1.png"],
    ["Beef Slice", "4.5", "ricebox-beefslice-2.png"],
    ["Chicken Sambal Matah", "4.4", "ricebox-chickensambalgeprek-8.png"],
    ["Tenderloin Eggstra", "4.2", "ricebox-tenderloineggstra-7.png"],
    ["Beef Sosis", "4.1", "ricebox-beefsosis-3.png"],
    ["Chicken Eggstra", "4.3", "ricebox-chickeneggstra-4.png"],
    ["Dory Sambal Matah", "4.7", "ricebox-dorysambalgeprek-5.png"],
    ["Saikoro Rice", "4.9", "ricebox-saikororice-6.png"],
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
          FoodModel foodModel = riceboxList[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return FadeTransition(
                      opacity: animation,
                      child: MyDetailPage(
                        foodModel: foodModel,
                      ),
                    );
                  },
                ),
              );
            },
            child: RiceboxTitle(
              RiceboxVariant: RiceboxOnSale[index][0],
              RiceboxPrice: RiceboxOnSale[index][1],
              imageRiceboxName: RiceboxOnSale[index][2],
            ),
          );
        },
      ),
    );
  }
}
