import 'package:flutter/material.dart';
import 'package:flutter_tp/components/CustomButton/custom_button.dart';
//import 'package:flutter_tp/components/vertical_scrollable_bar.dart';

class Details extends StatelessWidget {
  Details({Key? key}) : super(key: key);

  final List<String> categories = ["aller", "aller 2"];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("images/test.jpg"), fit: BoxFit.cover,),
            ),
          ),
          Align(
            alignment: Alignment(-0.9, -0.95),
            child: IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                print("Pressed");
              }
            ),
          ),
          Align(
            alignment: Alignment(0.9, -0.95),
            child: IconButton(
              icon: new Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                print("Pressed");
              }
            ),
          ),
          // Black square centered in stack
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
                        "Nom du produit à rallonge pour voir sur plusieurs ligne",
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
                            "12,00€",
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
                          onPressed: () {
                            print("Pressed");
                          }
                        ),
                        new CustomButton(name: "Buy now", onPress:() => print("BUY"),),
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