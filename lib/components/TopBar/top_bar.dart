import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      child: Text(
                          "KdoFavoris",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis
                      )),
                ),
                Row(
                  children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                            onTap: () => "Search",
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                  size: 20.0
                              ),
                            )
                        )
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                            onTap: () => "Panier",
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.black,
                                  size: 20.0
                              ),
                            )
                        )
                    ),
                  ],
                )
              ],
            )
        )
    );
  }
}
