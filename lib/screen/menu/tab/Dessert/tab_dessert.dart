import 'package:flutter/material.dart';
import 'package:mycatering/screen/details/Detail.dart';
import 'package:mycatering/screen/home/models/HomeModel.dart';
import 'package:mycatering/screen/menu/tab/Dessert/title_dessert.dart';

class DessertTab extends StatelessWidget {
  List DessertOnSale = [
    ["Klepon", "3.6", "dessertklepon-10.png"],
    ["Martabak Manis", "4.5", "dessertmartabakmanis-6.png"],
    ["Kue Lapis", "4.4", "dessertkuelapis-9.png"],
    ["Japanese Cheese", "4.3", "dessertjapanesecheesecake-3.png"],
    ["Kue Pukis", "4.7", "dessertkuepukis-8.png"],
    ["Red Velvet", "5.2", "dessertredvelvetstuffednutella-4.png"],
    ["Nutella Brownis", "5.5", "dessertnutellafudgybrownis-1.png"],
    ["Nutella Lamington", "4.9", "dessertnutellalamington-5.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 5,
      ),
      child: GridView.builder(
        itemCount: DessertOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 25,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          FoodModel foodModel = dessertList[index];
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
            child: DessertTitle(
              DessertVariant: DessertOnSale[index][0],
              DessertPrice: DessertOnSale[index][1],
              imageDessertName: DessertOnSale[index][2],
            ),
          );
        },
      ),
    );
  }
}
