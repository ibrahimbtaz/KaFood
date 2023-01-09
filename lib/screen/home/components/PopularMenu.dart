import 'package:flutter/material.dart';

import '../../../utils/constant.dart';
import '../../details/Detail.dart';
import '../../menu/MainMenu.dart';
import '../models/HomeModel.dart';
import 'HomeContent.dart';
import 'HomePage.dart';

class PopularMenu extends StatefulWidget {
  const PopularMenu({super.key});

  @override
  State<PopularMenu> createState() => _PopularMenuState();
}

class _PopularMenuState extends State<PopularMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size!.width * .070),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular Menu",
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
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 25,
            ),
            child: GridView.builder(
              itemCount: foodList.length,
              shrinkWrap: true,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 25,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                FoodModel foodModel = foodList[index];
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
                  child: FoodItem(
                    foodModel: foodModel,
                    tag: foodModel.image,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
