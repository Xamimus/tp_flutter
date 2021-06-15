import 'package:flutter/material.dart';
import 'package:flutter_tp/components/Article/ArticleList/article_list.dart';
import 'package:flutter_tp/components/VerticalScrollableBar/vertical_scrollable_bar.dart';
import 'package:flutter_tp/models/Article.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<Object> categories = [
    { "value": "CATEGORY 1" },
    { "value": "CATEGORY 2" },
    { "value": "CATEGORY 3" },
    { "value": "CATEGORY 4" },
  ];

  final List<Article> articles = [
    Article("Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article("Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article("Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article("Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article("Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article("Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article("Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article("Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article("Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article("Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article("Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: VerticalScrollableBar(items: this.categories)
                  ),
                  Expanded(
                    flex: 5,
                    child: ArticleList(articles: this.articles),
                  )
                ]
            )
        )
    );
  }
}
