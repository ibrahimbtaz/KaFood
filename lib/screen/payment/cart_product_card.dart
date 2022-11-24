import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mycatering/screen/home/models/HomeModel.dart';
import 'package:mycatering/screen/payment/bloc/cart_bloc.dart';

class CartProductCard extends StatelessWidget {
  final FoodModel foodModel;
  final int quantity;

  const CartProductCard(
      {Key? key, required this.foodModel, required this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Image.asset(
            foodModel.image,
            width: 100,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodModel.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '\$${foodModel.price}',
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
                      context.read<CartBloc>().add(RemoveProduct(foodModel));
                    },
                  ),
                  Text(
                    '$quantity',
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_circle),
                    onPressed: () {
                      context.read<CartBloc>().add(AddProduct(foodModel));
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
