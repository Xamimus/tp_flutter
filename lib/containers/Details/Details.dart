import 'package:flutter/material.dart';
import 'package:flutter_tp/components/vertical_scrollable_bar.dart';

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
          new Center(
            child: IconButton(
              color: Colors.white,
              icon: Text("Test"),
              onPressed: () {
                print("Pressed");
              }
            ),
          )
        ],
      )
    );
  }
}