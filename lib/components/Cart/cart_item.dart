import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tp/services/cart/cart_bloc.dart';

import 'package:flutter_tp/models/Article.dart';

class CartItem extends StatefulWidget {
  final Article item;

  const CartItem({Key? key, required this.item,}) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState(item: item);
}

class _CartItemState extends State<CartItem> {

  Article item;

  _CartItemState({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Expanded(
              child: Row(children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(1),
                    width: 110,
                    height: 100,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage('https://cdn.pixabay.com/photo/2021/04/09/22/03/strawberries-6165597_960_720.jpg'),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )
                ]
              ),
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          child: Text(
                            item.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    child: Row(
                                        children: [
                                          TextButton(
                                              onPressed: () => {context.read<CartBloc>().add(CartRemoveEvent(this.item))},
                                              child: Text("-")
                                          ),
                                          Text("1"),
                                          TextButton(
                                              onPressed: () => {context.read<CartBloc>().add(CartAddEvent(this.item))},
                                              child: Text("+")
                                          ),
                                        ]
                                    )),
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10.0),
                                    child: Text(item.price.toStringAsFixed(2) + "€"),
                                  )
                              ),
                            ]
                        ),
                      ]
                  ),
              )
            ],
          ),
        )
      )
    );
  }

  
}
