import 'package:flutter/material.dart';
import 'cart_item.dart';

class CartList extends StatelessWidget {

  final List<String> items;

  CartList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: this.items.length,
                itemBuilder: (BuildContext context, int index) => CartItem(item: items[index])
    );
  }
}