import 'package:flutter/material.dart';
import 'package:mycatering/screen/details/Detail.dart';
import 'package:mycatering/screen/home/models/HomeModel.dart';
import 'package:mycatering/screen/menu/tab/Juice/title_juice.dart';

class JuiceTab extends StatelessWidget {
  List JuiceOnSale = [
    ["Mango Juice", "1.4", "juice-mango-8.png"],
    ["Banana Juice", "1.5", "juice-pisang-4.png"],
    ["Guava Juice", "1.4", "juice-guava-6.png"],
    ["Orange Juice", "1.7", "juice-jeruk-5.png"],
    ["Dragon Fruit Juice", "1.3", "juice-buahnaga-1.png"],
    ["Kiwi Juice", "1.4", "juice-kiwi-2.png"],
    ["Avocado Juice", "1.4", "juice-alpukat-3.png"],
    ["Apple Juice", "1.5", "juice-apple-7.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
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
          FoodModel foodModel = juiceList[index];
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
            child: JuiceTitle(
              JuiceVariant: JuiceOnSale[index][0],
              JuicePrice: JuiceOnSale[index][1],
              imageJuiceName: JuiceOnSale[index][2],
            ),
          );
        },
      ),
    );
  }
}
