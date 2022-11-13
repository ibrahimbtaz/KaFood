import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mycatering/Pages/home/models/food_model.dart';
import 'package:mycatering/Pages/home/pages/details_page/components/counter.dart';
import 'package:mycatering/Pages/home/pages/details_page/components/producklainnya.dart';
import 'package:mycatering/Pages/home/pages/home_page/home_page.dart';
import 'package:mycatering/models/constants.dart';

import '../components/color_picker.dart';

class Detail_Page extends StatefulWidget {
  final FoodModel foodModel;
  const Detail_Page({super.key, required this.foodModel});

  @override
  State<Detail_Page> createState() => _Detail_PageState();
}

class _Detail_PageState extends State<Detail_Page> {
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined), color: Color(0xfff3f3f3),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart), color: Color(
            0xfff3f3f3))],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size!.height * .030),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: color == null
                          ? Container()
                          : CircleAvatar(
                        backgroundColor: color!.withOpacity(0.4),
                        radius: size!.height * 0.140,
                        child: CircleAvatar(
                          radius: size!.height * 0.120,
                          backgroundColor: color,
                        ),
                      ),
                    ),
                    Hero(
                      tag: widget.foodModel.image,
                      child: Image.asset(
                        widget.foodModel.image,
                        height: size!.height * .220,
                        width: size!.height * .220,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size!.height * .020,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.foodModel.name,
                          style: Theme.of(context).textTheme.bodyText1!.
                          copyWith(
                            fontSize: 30
                          )
                        ),
                        Text(
                          widget.foodModel.weight,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: kBorderColor),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color(0xfff2c94c),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            widget.foodModel.rating.toString(),
                            style: GoogleFonts.roboto(
                              color: kTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size!.height * .028,
                ),
                Text(
                  widget.foodModel.description,
                  style: GoogleFonts.roboto(
                    color: const Color(0xff4f4f4f),
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                    height: 2.0,
                  ),
                ),
                SizedBox(
                  height: size!.height * .040,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "1 Pax :",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 13),
                        ),
                        Text(
                          widget.foodModel.price.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 15),
                        ),
                      ],
                    ),
                    const Counter(),
                    SizedBox(
                      height: 40,
                      width: 90,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: kPrimaryColor,
                          shape: const StadiumBorder(),
                        ),
                        child: Text(
                          "Buy now",
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: size!.height * .041),
          const Divider(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size!.height * .030,
              vertical: size!.height * .012,
            ),
            child: Text(
              "Product Lainnya",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 20,
              ),
            ),
          ),
          const SimilarFoods(),
        ],
      ),
    );
  }
}
