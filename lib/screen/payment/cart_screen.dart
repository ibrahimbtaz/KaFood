import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mycatering/screen/home/Home.dart';
import 'package:mycatering/screen/home/components/HomeNotify.dart';
import 'package:mycatering/screen/payment/bloc/cart_bloc.dart';
import 'package:mycatering/utils/constant.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'components/cart_product_card.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    void _showDialog(BuildContext context) {
      Alert(
        context: context,
        type: AlertType.success,
        title: "Pembayaran berhasil",
        desc: "Selamat Pembelian berhasil",
        buttons: [
          DialogButton(
            color: secondary,
            child: const Text(
              "Selanjutnya",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(seconds: 2),
                  backgroundColor: secondary,
                  content: Text('Purchase Has Been Successful'),
                ),
              );
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => const MyHomePage(),
                ),
              );
            },
          )
        ],
      ).show();
      return;
    }

    bool isLoading = false;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Checkout'.toUpperCase(),
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: secondary, fontSize: 16),
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
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return FadeTransition(
                            opacity: animation, child: const NotifikasiPage());
                      },
                    ),
                  );
                },
                icon: const Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.black,
                  size: 24,
                )),
          ],
        ),
        body: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            if (state is CartLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: secondary,
                ),
              );
            }
            if (state is CartLoaded) {
              return Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: state.cart
                                    .productQuantity(
                                        state.cart.generateFoodModel)
                                    .keys
                                    .length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 6,
                                      horizontal: 20,
                                    ),
                                    child: Container(
                                      height: 70,
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                        color: quaternary,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                      child: CartProductCard(
                                        foodModel: state.cart
                                            .productQuantity(
                                                state.cart.generateFoodModel)
                                            .keys
                                            .elementAt(index),
                                        quantity: state.cart
                                            .productQuantity(
                                                state.cart.generateFoodModel)
                                            .values
                                            .elementAt(index),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 14),
                          decoration: BoxDecoration(
                              color: quaternary,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, -15),
                                  blurRadius: 20,
                                  color:
                                      const Color(0xFFDADADA).withOpacity(0.15),
                                )
                              ]),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'SUBTOTAL',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          '\$${state.cart.subtotalString}',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    // Row(
                                    //   mainAxisAlignment:
                                    //       MainAxisAlignment.spaceBetween,
                                    //   children: [
                                    //     const Text(
                                    //       'DELIVERY FREE',
                                    //       style: TextStyle(
                                    //         fontSize: 15,
                                    //         fontWeight: FontWeight.w700,
                                    //       ),
                                    //     ),
                                    //     Text(
                                    //       '\$${state.cart.freeDeliveryString}',
                                    //       style: const TextStyle(
                                    //         fontWeight: FontWeight.w700,
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Stack(
                                children: [
                                  Container(
                                    height: 45,
                                    decoration: const BoxDecoration(
                                        // borderRadius: BorderRadius.circular(20),
                                        // border:
                                        //     Border.all(width: 1.0, color: quaternary),
                                        ),
                                    child: ElevatedButton(
                                      onPressed: () => _showDialog(context),
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: secondary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 25),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Checkout'.toUpperCase(),
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: whiteColor,
                                              ),
                                            ),
                                            Text(
                                              '\$${state.cart.totalString}',
                                              style: const TextStyle(
                                                color: whiteColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            } else {
              return const Text('Something went wrong');
            }
          },
        ));
  }
}
