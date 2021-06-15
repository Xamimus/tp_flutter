import 'package:flutter/material.dart';
import 'containers/Home/home.dart';
import 'containers/Card/card.dart' as CardComponent;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CardComponent.Card(),
    );
  }
}
