import 'package:flutter/material.dart';
import 'package:flutter_tp/components/VerticalScrollableBar/vertical_scrollable_bar.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<Object> categories = [
    { "value": "CATEGORY 1" },
    { "value": "CATEGORY 2" },
    { "value": "CATEGORY 3" },
    { "value": "CATEGORY 4" },
  ];

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
