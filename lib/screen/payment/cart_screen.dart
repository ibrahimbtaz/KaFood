import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mycatering/screen/home/Home.dart';
import 'package:mycatering/screen/payment/bloc/cart_bloc.dart';
import 'package:mycatering/utils/constant.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'cart_product_card.dart';

class CartScreen extends StatelessWidget {
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

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            color: blackColor,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            if (state is CartLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is CartLoaded) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: state.cart
                                .productQuantity(state.cart.generateFoodModel)
                                .keys
                                .length,
                            itemBuilder: (context, index) {
                              return CartProductCard(
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
                              );
                            }),
                      ),
                    ),
                    Column(
                      children: [
                        const Divider(
                          thickness: 2,
                        ),
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
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 1.0, color: Colors.grey),
                              ),
                              child: ElevatedButton(
                                onPressed: () => _showDialog(context),
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: whiteColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'TOTAL',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800,
                                          color:
                                              Color.fromARGB(255, 37, 0, 100),
                                        ),
                                      ),
                                      Text(
                                        '\$${state.cart.totalString}',
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 37, 0, 100),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
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