import 'package:flutter/material.dart';
import 'package:flutter_tp/containers/Cart/cart.dart';

// ignore: must_be_immutable
class TopBar extends StatelessWidget {

  final List<Widget> elements;
  Color themeColor;

  TopBar({Key? key, required this.elements, this.themeColor = Colors.black }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
          iconTheme: IconThemeData(
            color: themeColor, //change your color here
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
