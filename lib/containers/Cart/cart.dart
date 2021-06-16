import 'package:flutter/material.dart';
import 'package:flutter_tp/components/Cart/cart_list.dart';
import 'package:flutter_tp/components/TopBar/top_bar.dart';

class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);

  final List<String> categories = ["test", "test 2", "oui"];

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
                  child: CartList(
                    items: categories,
                  ))
              ],
          )
      )
    );
  }
}
