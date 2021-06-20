import 'package:flutter/material.dart';
import 'package:flutter_tp/components/CustomButton/custom_button.dart';

class EndCommand extends StatelessWidget {
  EndCommand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "FÉLICITATIONS",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Divider(
                  height: 10,
                  thickness: 5,
                  indent: 100,
                  endIndent: 100,
                  color: Colors.black,
                ),
                Text(
                  "TP Flutter va prendre en compte votre commande dans quelques minutes",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Son objectif est de finaliser votre commande dans l’heure.",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "(Du lundi au vendredi de 8h00 à 19H00)",
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(name: "SUIVRE MA COMMANDE", onPress: () => Navigator.of(context).popUntil((route) => route.isFirst)),
              ],
            ),
          )
      ),
    );
  }
}
