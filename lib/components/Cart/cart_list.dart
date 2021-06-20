import 'package:flutter/material.dart';
import 'package:flutter_tp/repositories/cart_impl_repository.dart';
import 'package:flutter_tp/models/Article.dart';
import 'package:flutter_tp/services/cart/cart_bloc.dart';
import 'cart_item.dart';
import '../../repositories/abstract/cart_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartList extends StatefulWidget {

  static CartRepository repo = CartImplRespository();

  static List<Article> _items = repo.articles;

  const CartList({Key? key}) : super(key: key);

  @override
  _CartListState createState() => _CartListState(_items = _items);
}

class _CartListState extends State<CartList> {

  List<Article> items;

  _CartListState(this.items);

  @override
  void initState() {
    super.initState();
    print(items);
    setState(() => items = this.items);
  }

  @override
  void dispose() {
    print("Dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: this.items.length,
                itemBuilder: (BuildContext context, int index) => CartItem(item: items[index])
    );
  }
}
