import 'package:flutter/material.dart';
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
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(50.0),
                    topRight: const Radius.circular(50.0),
                  )
                ),
              alignment: Alignment(0.0, -0.65) ,
              child: new Text(
                "Nom du produit à rallonge pour voir sur plusieurs ligne",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
                ),
              )
            ),
          ),
        ],
      )
    );
  }
}