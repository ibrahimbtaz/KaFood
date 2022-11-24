import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mycatering/screen/cart/components/CartDB.dart';
import 'package:mycatering/screen/cart/components/CartModel.dart';
import 'package:mycatering/screen/details/components/Counter.dart';
import 'package:mycatering/screen/details/components/DetailNewArrival.dart';
import 'package:mycatering/screen/home/components/HomePage.dart';
import 'package:mycatering/screen/home/models/HomeModel.dart';
import 'package:mycatering/screen/inputlogin/auth/storage_services.dart';
import 'package:mycatering/screen/payment/bloc/cart_bloc.dart';
import 'package:mycatering/screen/payment/cart_screen.dart';
import 'package:mycatering/utils/Constant.dart';

class DetailContent extends StatefulWidget {
  final FoodModel foodModel;
  const DetailContent({super.key, required this.foodModel});

  @override
  State<DetailContent> createState() => _DetailContentState();
}

class _DetailContentState extends State<DetailContent> {
  Color? color;
  bool checkExist = false;
  Color colorChecked = Colors.white;

  Future getColor() async {
    Color? color = await getImagePalette(
      AssetImage(widget.foodModel.image),
    );
    setState(() {
      this.color = color;
    });
  }

  Future read() async {
    checkExist = await CartDB.instance.read(widget.foodModel.name);
    setState(() {});
  }

  Future addData() async {
    CartModel fav;
    fav = CartModel(
        image: widget.foodModel.image.toString(),
        name: widget.foodModel.name.toString(),
        price: widget.foodModel.price.toString(),
        rate: widget.foodModel.rate.toString());
    await CartDB.instance.create(fav);
    setState(() {
      checkExist = true;
    });
    // Navigator.pop(context);
  }

  Future deleteData() async {
    await CartDB.instance.delete(widget.foodModel.name);
    setState(() {
      checkExist = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    read();
    getColor();
  }

  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
          Container(
            padding: const EdgeInsets.only(bottom: 70),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                DetailContent(context),
                const Divider(),
                const DetailNewArrival(),
                // const PopularMenu()
              ],
            ),
          ),
          DetailBottom(context),
        ],
      ),
    );
  }

  Padding DetailContent(BuildContext context) {
    final Storage storage = Storage();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size!.height * .040),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Stack(
            alignment: Alignment.center,
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
                  child: FutureBuilder(
                    future: storage.donwloadURL(
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
                        return const CircularProgressIndicator();
                      }
                      return Container();
                    },
                  )),
            ],
          ),
          SizedBox(
            height: size!.height * .020,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(widget.foodModel.name,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 24, overflow: TextOverflow.ellipsis)),
              ),
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
                      widget.foodModel.rate.toString(),
                      style: GoogleFonts.roboto(
                        color: blackColor,
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
            textAlign: TextAlign.justify,
            style: GoogleFonts.roboto(
              color: blackColor,
              fontWeight: FontWeight.w400,
              fontSize: 16,
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

  SafeArea DetailBottom(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: tertiary.withOpacity(0.9),
              boxShadow: [
                BoxShadow(
                  color: quaternary.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(40),
            ),
            margin: const EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: size!.width * .020),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.translate(
                      offset: const Offset(-5, 0), child: const Counter()),
                  const Spacer(),
                  Transform.translate(
                    offset: const Offset(-5, 0),
                    child: SizedBox(
                      height: 50,
                      width: 140,
                      child: BlocBuilder<CartBloc, CartState>(
                          builder: (context, state) {
                        return ElevatedButton(
                          onPressed: () {
                            checkExist ? deleteData() : addData();
                            checkExist
                                ? SvgPicture.asset(
                                    'assets/icons/cart-outline-icon.svg',
                                    color: blackColor,
                                  )
                                : SvgPicture.asset(
                                    'assets/icons/cart-fill-icon.svg',
                                    color: blackColor,
                                  );
                            context
                                .read<CartBloc>()
                                .add(AddProduct(widget.foodModel));
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => CartScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: secondary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$${widget.foodModel.price.toString()}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: whiteColor,
                                        overflow: TextOverflow.ellipsis),
                              ),
                              const Spacer(),
                              Flexible(
                                child: Text(
                                  "Buy",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontSize: 14, color: whiteColor),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        checkExist ? deleteData() : addData();
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: checkExist
                          ? SvgPicture.asset(
                              'assets/icons/cart-outline-icon.svg',
                              color: blackColor,
                            )
                          : SvgPicture.asset(
                              'assets/icons/cart-fill-icon.svg',
                              color: blackColor,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
