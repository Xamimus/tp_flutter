import 'package:flutter/material.dart';
import 'package:flutter_tp/components/Cart/cart_list.dart';
import 'package:flutter_tp/components/CustomButton/custom_button.dart';
import 'package:flutter_tp/components/TopBar/top_bar.dart';
import 'package:flutter_tp/containers/Delivery/delivery.dart';
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
                )),
                Align(
                  alignment: Alignment(0.0, 1.0),
                  child: new Container(
                      height: 200.0,
                      color: Colors.transparent,
                      child: new Container(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                        decoration: new BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(50.0),
                              topRight: const Radius.circular(50.0),
                            )
                        ),
                        child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //alignment: Alignment(0.0, -0.65) ,
                                  children:[
                                    new Container(
                                      margin: const EdgeInsets.only(top: 40),
                                      child: new Text(
                                          "TOTAL",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 26,)
                                      ),
                                    ),
                                    new Container(
                                      margin: const EdgeInsets.only(top: 40),
                                      child: new Text(
                                          "12€00",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 26,)
                                      ),
                                    ),
                                  ]
                              ),
                              CustomButton(name: "BUY NOW", onPress:() => Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) => Delivery())),)
                            ]
                        ),
                        //alignment: Alignment(0.0, -0.35),
                        //child: new CustomButton(name: "Buy now", onPress:() => print("BUY"),),
                      )
                  ),
                ),
              ],
          )
      )
    );
  }
}
