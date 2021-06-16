import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String name;

  CustomButton({Key? key, required this.name }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(side: BorderSide(
              color: Colors.black87,
              width: 1,
              style: BorderStyle.solid
          ), borderRadius: BorderRadius.circular(15.0)),
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
          primary: Colors.white,
          backgroundColor: Colors.black87,
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () => print("Pressed"),
        child: Text(name),
      ),
    );
  }
}
