import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mycatering/screen/home/models/HomeModel.dart';
import 'package:mycatering/screen/inputlogin/auth/auth.dart';
import 'package:mycatering/screen/payment/bloc/cart_bloc.dart';
import 'package:mycatering/utils/constant.dart';

class CartProductCard extends StatefulWidget {
  final FoodModel foodModel;
  final int quantity;

  const CartProductCard(
      {Key? key, required this.foodModel, required this.quantity})
      : super(key: key);

  @override
  State<CartProductCard> createState() => _CartProductCardState();
}

class _CartProductCardState extends State<CartProductCard> {
  @override
  Widget build(BuildContext context) {
    final Auth auth = Auth();
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          FutureBuilder(
            future: auth.downloadURL(
              widget.foodModel.image,
            ),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData) {
                return SizedBox(
                  height: 60,
                  width: 60,
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
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.foodModel.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '\$${widget.foodModel.price}',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove_circle),
                    onPressed: () {
                      context
                          .read<CartBloc>()
                          .add(RemoveProduct(widget.foodModel));
                    },
                  ),
                  Text(
                    '${widget.quantity}',
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_circle),
                    onPressed: () {
                      context
                          .read<CartBloc>()
                          .add(AddProduct(widget.foodModel));
                    },
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
