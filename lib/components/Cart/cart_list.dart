import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tp/repositories/cart_impl_repository.dart';
import 'package:flutter_tp/models/Article.dart';
import 'package:flutter_tp/services/cart/cart_bloc.dart';
import 'cart_item.dart';
import '../../repositories/abstract/cart_repository.dart';

class CartList extends StatefulWidget {

  static CartRepository repo = CartImplRespository();

  static List<Article> _items = [];

  const CartList({Key? key}) : super(key: key);

  @override
  _CartListState createState() => _CartListState(_items = _items);
}

class _CartListState extends State<CartList> {

  dynamic items;

  _CartListState(this.items);

  @override
  void initState() {
    super.initState();
    final CartBloc _cartBloc = BlocProvider.of<CartBloc>(context);
    // On a pas trouvé le moyen d'accèder au state du bloc de manière propre
    setState(() => items = _cartBloc.state.props[0]);
    print(this.items);
  }

  @override
  void dispose() {
    print("Dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final CartBloc _counterBloc = BlocProvider.of<CartBloc>(context);
    if (items.length == 0) {
      return Center(
        child: Text("Panier vide", style: TextStyle(fontSize: 20),)
      );
    } else {
      return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: this.items.length,
          itemBuilder: (BuildContext context, int index) => CartItem(item: items[index])
      );
    }
  }
}
