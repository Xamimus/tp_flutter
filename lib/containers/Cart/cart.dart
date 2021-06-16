import 'package:flutter/material.dart';
import 'package:flutter_tp/components/Cart/cart_list.dart';
import 'package:flutter_tp/components/TopBar/top_bar.dart';
import 'package:flutter_tp/models/Article.dart';

class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);

  final List<Article> articles = [
    Article(1, "Article n°1AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article(2, "Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article(3, "Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article(4, "Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article(5, "Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
   ];


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
                    items: articles,
                  ))
              ],
          )
      )
    );
  }
}
