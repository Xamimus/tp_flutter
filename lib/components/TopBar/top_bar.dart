import 'package:flutter/material.dart';
import 'package:flutter_tp/containers/Cart/cart.dart';

// ignore: must_be_immutable
class TopBar extends StatelessWidget {

  final List<Widget> elements;

  TopBar({Key? key, required this.elements}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: InkWell(
            child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: elements
                )
            ),
          )

    );
  }
}
