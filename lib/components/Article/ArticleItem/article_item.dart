import 'package:flutter/material.dart';
import 'package:flutter_tp/models/Article.dart';

class ArticleItem extends StatelessWidget {

  final Article article;

  ArticleItem({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
        margin: const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Column(
            children: [
              Image.network(article.image),
              Text(article.name),
              Text(article.price.toStringAsFixed(2)),
            ],
          ),
        )
      )
    );
  }
}
