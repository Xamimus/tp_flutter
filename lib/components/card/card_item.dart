import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {

  final String item;

  CardItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Container(
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
          child: Padding(
            padding: EdgeInsets.all(10),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(3),
                        width: 200,
                        height: 50,
                        child: Text("Nom du produit à rallonge pour voir sur plusieurs lignes"),
                      )
                    ] 
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(0),
                        width: 137,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text("-")
                                ),
                                Text("1"),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("+")
                                ),
                              ]
                            )
                          ]
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(3),
                        width: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(item)
                          ]
                        ),
                      ),
                    ] 
                  ),
                ]
              ),
            ],
          ),
            )
        )
      )
      )
    );
  }
}
