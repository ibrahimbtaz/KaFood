part of 'cart_bloc.dart';

@immutable
abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class LoadCart extends CartEvent {}

class AddProduct extends CartEvent {
  final FoodModel foodModel;

  const AddProduct(this.foodModel);

  @override
  List<Object> get props => [foodModel];
}

class RemoveProduct extends CartEvent {
  final FoodModel foodModel;

  const RemoveProduct(this.foodModel);

  @override
  List<Object> get props => [foodModel];
}

