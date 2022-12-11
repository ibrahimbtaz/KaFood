import 'package:flutter/material.dart';
import 'package:mycatering/screen/home/components/HomeContent.dart';
import 'package:mycatering/screen/home/components/HomePage.dart';
import 'package:mycatering/screen/home/models/HomeModel.dart';
import 'package:mycatering/screen/menu/MainMenu.dart';
import 'package:mycatering/utils/constant.dart';

class DetailNewArrival extends StatefulWidget {
  const DetailNewArrival({super.key});

  @override
  State<DetailNewArrival> createState() => _DetailNewArrivalState();
}

class _DetailNewArrivalState extends State<DetailNewArrival> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 25,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size!.width * .070),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Favorite Menu",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 20)),
                InkWell(
                  child: const Text("See More",
                      style: TextStyle(
                          color: primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return FadeTransition(
                            opacity: animation,
                            child: const MainMenu(),
                          );
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            padding: EdgeInsets.only(left: size!.width * .060),
            child: SizedBox(
              height: size!.width * .54,
              child: ListView.builder(
                itemCount: foodList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  FoodModel foodModel = foodFavorite[index];
                  return SizedBox(
                    width: size!.width / 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size!.height * .010,
                      ),
                      child: FoodItem(
                        foodModel: foodModel,
                        tag: foodModel.id.toString(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
