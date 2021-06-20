import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tp/components/CustomButton/custom_button.dart';
import 'package:flutter_tp/services/cart/cart_bloc.dart';

class Command extends StatelessWidget {
  Command({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartBloc _cartBloc = BlocProvider.of<CartBloc>(context);
    final articles = _cartBloc.state.props[0];
    final length = articles.length;
    final price = _cartBloc.state.props[1];
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
                "CONFIRMATION DE VOTRE COMMANDE",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Paiment 100% sécurisé par Stripe",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                child: Image.network("https://i0.wp.com/echoppe-a-cafe.com/wp-content/uploads/2020/05/stripe-secure.png"),
              ),
              Divider(
                height: 10,
                thickness: 5,
                indent: 100,
                endIndent: 100,
                color: Colors.black,
              ),
              Text(
                "Vous allez recevoir " + articles.length.toString() + " produits pour un montant de",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                price.toStringAsFixed(2) + "€",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Avec des délais de livraison pouvant varier entre 5 et 15 jours ouvrés",
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic
                ),
                textAlign: TextAlign.center,
              ),
              CustomButton(name: "CONFIRMER", onPress: () => Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) => Command())),),
            ],
          ),
        )
      ),
    );
  }
}
