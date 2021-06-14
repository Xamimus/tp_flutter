import 'package:flutter/material.dart';
import 'package:flutter_tp/components/vertical_scrollable_bar.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<String> categories = ["test", "test 2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: VerticalScrollableBar(
              items: categories,
            )
        )
    );
  }
}
