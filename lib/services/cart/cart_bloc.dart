import 'dart:async';
import 'dart:ffi';

import 'package:flutter_tp/models/Article.dart';

import '../../repositories/abstract/cart_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository _cartRepository;

  CartBloc(this._cartRepository) : super(CartInitialState(articles: []));

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    if (event is CartInitialEvent) {
      yield CartInitialState(articles: []);
    } else if (event is CartAddEvent) {
      /* Article article = Article(1, "name", "description", 5, "image") */;
      /* _cartRepository.addArticle(); */
      print(event);

      yield CartInitialState(
        articles: _cartRepository.articles,
      );
    }
  }
}
