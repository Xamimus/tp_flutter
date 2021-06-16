part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class CartInitialEvent extends CartEvent {}

class CartAddEvent extends CartEvent {
  final Article article;

  CartAddEvent(this.article);
}

class CartRemoveEvent extends CartEvent {}

class CartCountEvent extends CartEvent {}
