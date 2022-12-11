import 'package:flutter/material.dart';
import 'package:mycatering/screen/details/Detail.dart';
import 'package:mycatering/screen/home/models/HomeModel.dart';
import 'package:mycatering/screen/menu/tab/Tumpeng/title_tumpeng.dart';

class TumpengTab extends StatelessWidget {
  List TumpengOnSale = [
    ["Tumpeng Mini 1", "7.6", "tumpengmini-1-removebg-preview.png"],
    ["Tumpeng Mini 2", "6.5", "tumpengmini-2-removebg-preview.png"],
    ["Tumpeng Mini 3", "7.2", "tumpengmini-3-removebg-preview.png"],
    ["Tumpeng Mini 4", "8.0", "tumpengmini-4-removebg-preview.png"],
    ["Tumpeng Mini 5", "6.9", "tumpengmini-5-removebg-preview.png"],
    ["Tumpeng Mini 6", "8.4", "tumpengmini-6-removebg-preview.png"],
    ["Tumpeng Mini 7", "7.8", "tumpengmini-7-removebg-preview.png"],
    ["Tumpeng Mini 8", "8.1", "tumpengmini-8-removebg-preview.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
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
          FoodModel foodModel = tumpengList[index];
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
            child: TumpengTitle(
              TumpengVariant: TumpengOnSale[index][0],
              TumpengPrice: TumpengOnSale[index][1],
              imageTumpengName: TumpengOnSale[index][2],
            ),
          );
        },
      ),
    );
  }
}
