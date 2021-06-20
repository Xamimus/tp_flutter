import 'dart:async';

import 'package:flutter_tp/models/Article.dart';
import 'package:flutter_tp/repositories/cart_impl_repository.dart';

import '../../repositories/abstract/cart_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartImplRespository _cartRepository;

  CartBloc(this._cartRepository) : super(CartInitialState(articles: _cartRepository.articles));

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    if (event is CartInitialEvent) {
      yield CartInitialState(articles: _cartRepository.articles);
    } else if (event is CartGetEvent) {
      yield CartInitialState(
        articles: _cartRepository.articles,
      );
    } else if (event is CartAddEvent) {

      _cartRepository.addArticle(event.article);
      print(_cartRepository.articles);

      yield CartInitialState(
        articles: _cartRepository.articles,
      );
    } else if (event is CartRemoveEvent) {

      _cartRepository.removeArticle(event.article);
      _cartRepository.articles.forEach((element) {print(element.name);});

      yield CartInitialState(
        articles: _cartRepository.articles,
      );
    }
  }
}
