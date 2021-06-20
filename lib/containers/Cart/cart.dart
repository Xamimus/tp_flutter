import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tp/components/Cart/cart_list.dart';
import 'package:flutter_tp/components/CustomButton/custom_button.dart';
import 'package:flutter_tp/components/TopBar/top_bar.dart';
import 'package:flutter_tp/containers/Delivery/delivery.dart';
import 'package:flutter_tp/services/cart/cart_bloc.dart';

class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final CartBloc _cartBloc = BlocProvider.of<CartBloc>(context);
    final dynamic price = _cartBloc.state.props[1];

    return Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: TopBar(
                      elements: []
                  )
                ),
                Expanded(
                  flex: 10,
                  child: CartList()),
                Align(
                  alignment: Alignment(0.0, 1.0),
                  child: new Container(
                      height: 200.0,
                      color: Colors.transparent,
                      child: new Container(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                        decoration: new BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(50.0),
                              topRight: const Radius.circular(50.0),
                            )
                        ),
                        child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //alignment: Alignment(0.0, -0.65) ,
                                  children:[
                                    new Container(
                                      margin: const EdgeInsets.only(top: 40),
                                      child: new Text(
                                          "TOTAL",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 26,)
                                      ),
                                    ),
                                    new Container(
                                      margin: const EdgeInsets.only(top: 40),
                                      child: new Text(
                                          price.toStringAsFixed(2),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 26,)
                                      ),
                                    ),
                                  ]
                              ),
                              CustomButton(name: "BUY NOW", onPress:() => Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) => Delivery())),)
                            ]
                        ),
                        //alignment: Alignment(0.0, -0.35),
                        //child: new CustomButton(name: "Buy now", onPress:() => print("BUY"),),
                      )
                  ),
                ),
              ],
          )
      )
    );
  }
}
