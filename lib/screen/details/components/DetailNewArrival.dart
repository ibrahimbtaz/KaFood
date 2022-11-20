import 'package:flutter/material.dart';
import 'package:mycatering/screen/home/components/HomeContent.dart';
import 'package:mycatering/screen/home/components/HomePage.dart';
import 'package:mycatering/screen/home/models/HomeModel.dart';

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
        vertical: 10,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size!.width * .070),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Other Product",
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
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 25,
            ),
            padding: EdgeInsets.only(left: size!.width * .060),
            child: SizedBox(
              height: size!.width * .50,
              child: ListView.builder(
                itemCount: foodList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  FoodModel foodModel = foodList[index];
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
