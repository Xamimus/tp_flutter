import 'package:flutter/material.dart';
import 'package:flutter_tp/components/CustomButton/custom_button.dart';
import 'package:flutter_tp/components/CustomTextField/custom_text_field.dart';
import 'package:flutter_tp/components/TopBar/top_bar.dart';

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
                  CustomTextField(name: "N°, Étage, Lieu-dit ..."),
                  CustomTextField(name: "Adresse"),
                  CustomTextField(name: "Complément d'adresse"),
                  CustomTextField(name: "Code Postal"),
                  CustomTextField(name: "Ville"),
                  CustomButton(name: "UTILISER CETTE ADRESSE"),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
