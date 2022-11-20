import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mycatering/screen/details/components/Counter.dart';
import 'package:mycatering/screen/details/components/DetailNewArrival.dart';
import 'package:mycatering/screen/home/components/HomePage.dart';
import 'package:mycatering/screen/home/components/PopularMenu.dart';
import 'package:mycatering/screen/home/models/HomeModel.dart';
import 'package:mycatering/utils/Constant.dart';

class DetailContent extends StatefulWidget {
  final FoodModel foodModel;
  const DetailContent({super.key, required this.foodModel});

  @override
  State<DetailContent> createState() => _DetailContentState();
}

class _DetailContentState extends State<DetailContent> {
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.foodModel.name,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 20, color: blackColor, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          color: blackColor,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: 26,
            ),
            color: blackColor,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.info,
                size: 30,
              ),
              color: blackColor),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              DetailContent(context),
              const Divider(),
              const DetailNewArrival(),
              const PopularMenu()
            ],
          ),
          DetailBottom(context),
        ],
      ),
    );
  }

  Padding DetailContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size!.height * .040),
      child: Column(
        children: [
          const SizedBox(height: 20),
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
              // Hero(
              //   tag: widget.foodModel.image,
              //   child: Image.asset(
              //     widget.foodModel.image,
              //     height: size!.height * .220,
              //     width: size!.height * .220,
              //   ),
              // ),
            ],
          ),
          SizedBox(
            height: size!.height * .020,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.foodModel.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 30)),
              Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  color: whiteColor,
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
            height: size!.height * .020,
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
            height: size!.height * .020,
          ),
        ],
      ),
    );
  }

  Column DetailBottom(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 80,
          decoration: BoxDecoration(
            color: tertiary.withOpacity(0.8),
            boxShadow: [
              BoxShadow(
                color: quaternary.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(30),
          ),
          margin: const EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: size!.width * .020),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Counter(),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.foodModel.price.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 18, color: whiteColor),
                        ),
                        Text(
                          "Order Now",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 16, color: whiteColor),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/cart-outline-icon.svg',
                      color: blackColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

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
}
