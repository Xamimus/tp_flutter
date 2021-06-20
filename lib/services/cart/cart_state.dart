part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

class CartInitialState extends CartState {
  List<Article> articles = [];
  double price;

  CartInitialState({
    required this.articles,
    this.price = 0,
  });

  @override
  List<Object> get props => [articles, price];
}
