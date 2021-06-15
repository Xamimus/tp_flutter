import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {

  final List<String> items;

  BottomContainer({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: this.items.length,
                itemBuilder: (BuildContext context, int index) => Text(items[index])
            )
          )
      );
  }
}
