import 'package:flutter/material.dart';
import 'package:flutter_tp/components/CustomButton/custom_button.dart';
import 'package:flutter_tp/components/CustomTextField/custom_text_field.dart';
import 'package:flutter_tp/components/TopBar/top_bar.dart';
import 'package:flutter_tp/containers/Command/command.dart';

class Pay extends StatelessWidget {
  Pay({Key? key}) : super(key: key);

  String cardNumber = "**** **** **** 0000";
  String cardOrderName = "TP Flutter";
  String expiryDate = "10/21";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: TopBar(elements: <Widget>[Text("INFORMATION DE PAIEMENT", style: TextStyle(color: Colors.black))])
            ),
            Expanded(
                flex: 10,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Colors.black54,
                          ),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 10.0, bottom: 10.0, top: 10.0),
                                      width: 45,
                                      height: 30,
                                      decoration: new BoxDecoration(
                                        borderRadius: new BorderRadius.circular(10.0),
                                        color: Colors.orangeAccent,
                                      ),
                                    )
                                  ],
                                ),
                                Text(cardNumber, style: TextStyle(fontSize: 25, letterSpacing: 8, color: Colors.white),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Card order name", style: TextStyle(fontSize: 16, color: Colors.grey),),
                                        Text(cardOrderName, style: TextStyle(fontSize: 16, color: Colors.white),),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Expiry Date", style: TextStyle(fontSize: 16, color: Colors.grey),),
                                        Text(expiryDate, style: TextStyle(fontSize: 16, color: Colors.white),),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        )
                    ),
                    CustomTextField(name: "Card order name", onChange: (value) => { cardOrderName = value },),
                    CustomTextField(name: "Card number", onChange: (value) => { cardNumber = value }),
                    CustomTextField(name: "Expiry Date", onChange: (value) => { expiryDate = value },),
                    CustomTextField(name: "Code CVC", onChange: (value) => {print(value)},),
                    CustomButton(name: "UTILISER CETTE CARTE", onPress: () => Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) => Command())),),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
