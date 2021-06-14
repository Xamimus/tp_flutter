import 'package:flutter/material.dart';

class VerticalScrollableBar extends StatelessWidget {

  final List<String> items;

  VerticalScrollableBar({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: this.items.length,
                itemBuilder: (BuildContext context, int index) => Text(items[index])
            )
          )
      );
  }
}
