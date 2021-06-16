import 'package:flutter_tp/models/Article.dart';
import 'package:flutter_tp/models/Cart.dart';
import "abstract/cart_repository.dart";

class CartImplRespository extends CartRepository {

  List<Article> _articles = [];

  int _price = 0; 

  @override
  List<Article> get articles => _articles;

  @override
  addArticle(Article article) => _articles.add(article);

  @override
  removeArticle(Article article) => _articles.remove(article);

  @override
  countTotal(Cart cart) => _articles.forEach((article) { cart.price += article.price; });
}
