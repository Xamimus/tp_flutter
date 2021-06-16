import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String name;
  bool obscure;

  CustomTextField({Key? key, required this.name, this.obscure = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: TextField(
        onChanged: (value) => print(value),
        obscureText: obscure,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.black54, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.black54, width: 1.0),
          ),
          labelText: name,
          labelStyle: TextStyle(fontSize: 12.0, color: Colors.black),
        ),
      ),
    );
  }
}
