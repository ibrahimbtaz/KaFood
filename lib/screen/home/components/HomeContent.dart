import 'package:flutter/material.dart';

import '../../../utils/Constant.dart';
import '../../inputlogin/auth/auth.dart';
import '../models/HomeModel.dart';

class FoodItem extends StatefulWidget {
  final FoodModel foodModel;
  final String tag;
  const FoodItem({super.key, required this.foodModel, required this.tag});

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  Color? color;

  // Future getColor() async {
  //   Color? color = await getImagePalette(
  //     NetworkImage(widget.foodModel.image),
  //   );
  //   setState(() {
  //     this.color = color;
  //   });
  // }

  @override
  void initState() {
    super.initState();
    // getColor();
  }

  @override
  Widget build(BuildContext context) {
    final Auth auth = Auth();
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
            alignment: Alignment.center,
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
              Hero(
                  tag: widget.tag,
                  child: FutureBuilder(
                    future: auth.downloadURL(
                      widget.foodModel.image,
                    ),
                    builder:
                        (BuildContext context, AsyncSnapshot<String> snapshot) {
                      if (snapshot.connectionState == ConnectionState.done &&
                          snapshot.hasData) {
                        return SizedBox(
                          height: 90,
                          width: 90,
                          child: Image.network(
                            snapshot.data!,
                            fit: BoxFit.cover,
                          ),
                        );
                      }
                      if (snapshot.connectionState == ConnectionState.waiting ||
                          !snapshot.hasData) {
                        return const CircularProgressIndicator(
                          color: secondary,
                        );
                      }
                      return Container();
                    },
                  )),
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
                        fontSize: 16, overflow: TextOverflow.ellipsis),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '\$${widget.foodModel.price.toString()}',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: secondary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
