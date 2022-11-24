import 'package:flutter/material.dart';
import 'package:mycatering/screen/details/Detail.dart';
import 'package:mycatering/screen/home/components/HomeContent.dart';
import 'package:mycatering/screen/home/components/HomePage.dart';
import 'package:mycatering/screen/home/models/HomeModel.dart';

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
              Text("See More",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 16)),
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
