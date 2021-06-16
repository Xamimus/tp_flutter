import 'package:flutter_tp/models/Article.dart';

import 'package:flutter_tp/models/Article.dart';
import 'package:flutter_tp/models/Cart.dart';

abstract class CartRepository {
  List<Article> get articles;

  addArticle(Article article);
  removeArticle(Article article);
  countTotal(Cart cart);
}