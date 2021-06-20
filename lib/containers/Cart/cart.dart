import 'package:flutter/material.dart';
import 'package:flutter_tp/components/Cart/cart_list.dart';
import 'package:flutter_tp/components/TopBar/top_bar.dart';
import 'package:flutter_tp/models/Article.dart';
import 'package:flutter_tp/repositories/abstract/cart_repository.dart';
import 'package:flutter_tp/repositories/cart_impl_repository.dart';

class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: TopBar(
                      elements: []
                  )
                ),
                Expanded(
                  flex: 10,
                  child: CartList())
              ],
          )
      )
    );
  }
}
