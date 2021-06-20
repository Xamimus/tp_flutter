import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tp/containers/Pay/pay.dart';
import 'package:flutter_tp/repositories/abstract/cart_repository.dart';
import 'package:flutter_tp/repositories/cart_impl_repository.dart';
import 'package:flutter_tp/services/cart/cart_bloc.dart';
import 'containers/Home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    CartImplRespository cartRepository = CartImplRespository();

    return MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>(
          create: (context) => CartBloc(cartRepository),
        )
      ],
      child: MaterialApp(
      title: 'TP boutique Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Pay(),
    ));
  }
}
