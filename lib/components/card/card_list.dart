import 'package:flutter/material.dart';
import 'card_item.dart';

class CardList extends StatelessWidget {

  final List<String> items;

  CardList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: this.items.length,
                itemBuilder: (BuildContext context, int index) => CardItem(item: items[index])
    );
  }
}
