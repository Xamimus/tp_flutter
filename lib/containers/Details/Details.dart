import 'package:flutter/material.dart';
import 'package:flutter_tp/components/TopBar/top_bar.dart';
import 'package:flutter_tp/containers/Cart/cart.dart';
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
