import 'package:flutter/material.dart';
import 'cart_item.dart';
import 'package:bloc/bloc.dart'

class CartList extends StatefulWidget {
  final List<String> items;

  const CartList({Key? key, required this.items,}) : super(key: key);

  @override
  _CartListState createState() => _CartListState(items: items);
}

class _CartListState extends State<CartList> {

  final List<String> _items;

  const _CartListState({Key? key, required this.items,}) : super(key: key);

  @override
  void initState() {
    print("InitState");
    super.initState();

    setState(() => _items = );

    context.read<IncrementBloc>().add(IncrementInitialEvent());

    // CODE

    setState(() => {});

    // CODE
  }

  @override
  void dispose() {
    print("Dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: this.items.length,
                itemBuilder: (BuildContext context, int index) => CartItem(item: items[index])
    );
  }
}
