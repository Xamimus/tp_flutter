import 'package:flutter/material.dart';

class VerticalScrollableBar extends StatelessWidget {

  final List<dynamic> items;

  VerticalScrollableBar({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: this.items.length,
                itemBuilder: (BuildContext context, int index) =>
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 50.0),
                    child: InkWell(
                      onTap: () => print('Test'),
                      child: Text(
                        items[index]["value"],
                        style: const TextStyle(
                          fontSize: 18,
                          fontFamily: 'sans-serif'
                        ),
                      )
                    ),
                  )
            )
          )
      );
  }
}
