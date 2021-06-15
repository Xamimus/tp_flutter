import 'package:flutter/material.dart';
import 'package:flutter_tp/components/card/card_list.dart';

class Card extends StatelessWidget {
  Card({Key? key}) : super(key: key);

  final List<String> categories = ["test", "test 2", "oui"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: CardList(
              items: categories,
            )
      )
    );
  }
}