import 'package:flutter/material.dart';
import 'package:mycatering/screen/home/models/food_model.dart';
import 'package:mycatering/utils/Constant.dart';

class FoodItem extends StatefulWidget {
  final FoodModel foodModel;
  final String tag;
  const FoodItem({super.key, required this.foodModel, required this.tag});

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  Color? color;
  Future getColor() async {
    Color? color = await getImagePalette(
      AssetImage(widget.foodModel.image),
    );
    setState(() {
      this.color = color;
    });
  }

  @override
  void initState() {
    super.initState();
    getColor();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: quaternary,
        border: Border.all(color: quaternary),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //images
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: color == null
                    ? Container()
                    : CircleAvatar(
                        radius: 60,
                        backgroundColor: color!.withOpacity(0.4),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: color,
                        ),
                      ),
              ),
              // Hero(
              //   tag: widget.tag,
              //   child: Image.asset(
              //     widget.foodModel.image,
              //     height: 90,
              //     width: 90,
              //   ),
              // ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    widget.foodModel.name,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 18, overflow: TextOverflow.ellipsis),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  widget.foodModel.price.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
