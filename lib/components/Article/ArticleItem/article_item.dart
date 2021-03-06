import 'package:flutter/material.dart';
import 'package:flutter_tp/containers/Details/Details.dart';
import 'package:flutter_tp/models/Article.dart';
import 'package:flutter_tp/services/cart/cart_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleItem extends StatelessWidget {

  final Article article;

  ArticleItem({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) => Details(article: article))),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5.0,
                  child: Column(
                    children: [
                      Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                            child: Image.network(
                              article.image,
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.fill,
                            ),
                          )
                      ),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0, bottom: 5.0),
                                child: Text(
                                    article.name,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis
                                )),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
                                      child: Text(
                                          article.price.toStringAsFixed(2) + "???",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                          overflow: TextOverflow.ellipsis
                                      )),
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: InkWell(
                                        onTap: () => {context.read<CartBloc>().add(CartAddEvent(this.article))},
                                        child: Container(
                                          margin: EdgeInsets.only(right: 10.0),
                                          child: Icon(
                                              Icons.shopping_cart,
                                              color: Colors.black,
                                              size: 20.0
                                          ),
                                        )
                                    )
                                ),
                              ]
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
          )
      )

    );
  }
}
