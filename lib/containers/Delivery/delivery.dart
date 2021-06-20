import 'package:flutter/material.dart';
import 'package:flutter_tp/components/CustomButton/custom_button.dart';
import 'package:flutter_tp/components/CustomTextField/custom_text_field.dart';
import 'package:flutter_tp/components/TopBar/top_bar.dart';
import 'package:flutter_tp/containers/Pay/pay.dart';

class Delivery extends StatelessWidget {
  Delivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TopBar(elements: <Widget>[Text("ADRESSE DE LIVRAISON", style: TextStyle(color: Colors.black))])
            ),
            Expanded(
              flex: 10,
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                      child: Text("A QUELLE ADRESSE DEVONS-NOUS VOUS LIVRER ?", style: TextStyle(fontSize: 20))
                  ),
                  CustomTextField(name: "N°, Étage, Lieu-dit ...", onChange: (value) => {print(value)},),
                  CustomTextField(name: "Adresse", onChange: (value) => {print(value)},),
                  CustomTextField(name: "Complément d'adresse", onChange: (value) => {print(value)},),
                  CustomTextField(name: "Code Postal", onChange: (value) => {print(value)},),
                  CustomTextField(name: "Ville", onChange: (value) => {print(value)},),
                  CustomButton(name: "UTILISER CETTE ADRESSE", onPress: () => Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) => Pay())),),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
