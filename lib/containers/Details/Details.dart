import 'package:flutter/material.dart';
import 'package:flutter_tp/components/CustomButton/custom_button.dart';
import 'package:flutter_tp/components/TopBar/top_bar.dart';
import 'package:flutter_tp/containers/Cart/cart.dart';
import 'package:flutter_tp/models/Article.dart';
import 'package:flutter_tp/services/cart/cart_bloc.dart';

class Details extends StatelessWidget {

  Article article;

  Details({Key? key, required this.article}) : super(key: key);

  final List<String> categories = ["aller", "aller 2"];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new NetworkImage(article.image), fit: BoxFit.cover,),
            ),
          ),
          TopBar(
            themeColor: Colors.white,
            elements: <Widget>[
              Text(""),
              Row(
                children: [
                  InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) => Cart())),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                        child: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 25.0
                        ),
                      )
                  )
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: new Container(
              height: 250.0,
              color: Colors.transparent,
              child: new Container(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(50.0),
                    topRight: const Radius.circular(50.0),
                  )
                ),
                child: Column(
                  children: [
                    new Container(
                      child: new Text(
                        article.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                        ),
                        ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //alignment: Alignment(0.0, -0.65) ,
                      children:[
                        new Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: new Text(
                            article.price.toStringAsFixed(2),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 26,)
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: new IconButton(
                            icon: new Icon(Icons.favorite_outlined , color: Colors.red),
                            onPressed: () {
                              print("Pressed");
                            }
                          ),
                        ),
                      ]
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //alignment: Alignment(0.0, -0.65) ,
                      children:[
                        new IconButton(
                          icon: new Icon(Icons.shopping_cart, color: Colors.black),
                          onPressed: () => {
                            //context.read<CartBloc>().add(CartAddEvent(this.article))
                          }
                        ),
                        new CustomButton(name: "BUY NOW", onPress: () => {
                          //context.read<CartBloc>().add(CartAddEvent(this.article))
                          }
                        ),
                      ]
                    ),
                  ]
                ),


              //alignment: Alignment(0.0, -0.35),
              //child: new CustomButton(name: "Buy now", onPress:() => print("BUY"),),
                )
              ),
            ),
        ],
      )
    );
  }
}
