import 'package:flutter/material.dart';
import 'package:flutter_tp/components/Article/ArticleList/article_list.dart';
import 'package:flutter_tp/components/TopBar/top_bar.dart';
import 'package:flutter_tp/components/VerticalScrollableBar/vertical_scrollable_bar.dart';
import 'package:flutter_tp/containers/Cart/cart.dart';
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
    Article(1, "Article n°1AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article(2, "Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article(3, "Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article(4, "Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article(5, "Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article(6, "Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article(7, "Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article(8, "Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article(9, "Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article(10, "Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
    Article(11, "Article n°1", "Test description", 10.00, "https://cdn.pixabay.com/photo/2021/04/29/11/40/big-ben-6216420_960_720.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
                children: [
                  Expanded(
                    child: TopBar(elements: <Widget>[
                        Text("KdoFavoris", style: TextStyle(color: Colors.black)),
                        Row(
                         children: [
                           InkWell(
                               onTap: () => "Search",
                               child: Container(
                                 margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                 child: Icon(
                                     Icons.search,
                                     color: Colors.black,
                                     size: 25.0
                                 ),
                               )
                           ),
                           InkWell(
                               onTap: () => Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) => Cart())),
                               child: Container(
                                 margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                                 child: Icon(
                                     Icons.shopping_cart,
                                     color: Colors.black,
                                     size: 25.0
                                 ),
                               )
                           )
                         ],
                        )
                    ])
                  ),
                  Expanded(
                    flex: 1,
                    child: VerticalScrollableBar(items: this.categories)
                  ),
                  Expanded(
                    flex: 10,
                    child: ArticleList(articles: this.articles),
                  )
                ]
            )
        )
    );
  }
}
