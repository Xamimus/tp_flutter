part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class CartInitialEvent extends CartEvent {}

class CartGetEvent extends CartEvent {
  CartGetEvent();
}

class CartAddEvent extends CartEvent {
  final Article article;

  CartAddEvent(this.article);
}

class CartRemoveEvent extends CartEvent {
  final Article article;

  CartRemoveEvent(this.article);
}

class CartCountEvent extends CartEvent {}
