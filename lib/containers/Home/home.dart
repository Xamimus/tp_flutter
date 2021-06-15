import 'package:flutter/material.dart';
import 'package:flutter_tp/components/card/bottom_container.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<String> categories = ["test", "test 2", "youpi"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: BottomContainer(
              items: categories,
            )
        )
    );
  }
}
