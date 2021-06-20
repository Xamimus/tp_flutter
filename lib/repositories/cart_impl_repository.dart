import 'package:flutter_tp/models/Article.dart';
import 'package:flutter_tp/models/Cart.dart';
import "abstract/cart_repository.dart";

class CartImplRespository extends CartRepository {

  List<Article> _articles = [];

  double _price = 0;

  @override
  List<Article> get articles => _articles;

  @override
  double get price => _price;

  set price(double price) {
    _price = price;
  }

  @override
  addArticle(Article article) => _articles.add(article);

  @override
  removeArticle(Article article) => _articles.remove(article);

  @override
  countTotal() => {
    _price = 0,
    _articles.forEach((article) {
    _price += article.price;
    })
  };


}
