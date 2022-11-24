import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:mycatering/screen/home/models/HomeModel.dart';
import 'package:mycatering/screen/payment/model/cart_model.dart';


part 'cart_event.dart';
part 'cart_state.dart';
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading()) {
    on<LoadCart>(_onLoadCart);
    on<AddProduct>(_onAddProduct);
    on<RemoveProduct>(_onRemoveProduct);
  }

  void _onLoadCart(
      LoadCart event,
      Emitter<CartState> emit,
      ) async {
    emit(CartLoading());
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(CartLoaded());
    } catch (_) {
      emit(CartError());
    }
  }

  void _onAddProduct(
      AddProduct event,
      Emitter<CartState> emit,
      ) {
    if (this.state is CartLoaded) {
      try {
        emit(
          CartLoaded(
            cart: Cart(
              generateFoodModel: List.from((this.state as CartLoaded).cart.generateFoodModel)
                ..add(event.foodModel),
            ),
          ),
        );
      } on Exception {
        emit(CartError());
      }
    }
  }

  void _onRemoveProduct(
      RemoveProduct event,
      Emitter<CartState> emit,
      ) {
    if (this.state is CartLoaded) {
      try {
        emit(
          CartLoaded(
            cart: Cart(
              generateFoodModel: List.from((this.state as CartLoaded).cart.generateFoodModel)
                ..remove(event.foodModel),
            ),
          ),
        );
      } on Exception {
        emit(CartError());
      }
    }
  }
}