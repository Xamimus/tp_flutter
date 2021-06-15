import 'package:flutter/material.dart';
import 'package:flutter_tp/components/Article/ArticleItem/article_item.dart';
import 'package:flutter_tp/models/Article.dart';

class ArticleList extends StatelessWidget {

  final List<Article> articles;

  ArticleList({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(this.articles.length, (index) =>
            ArticleItem(article: this.articles[index])
          ),
        )
      )
    );
  }
}
