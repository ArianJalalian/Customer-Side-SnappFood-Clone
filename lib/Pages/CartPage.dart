import 'package:flutter/material.dart';

import '../Widgets/OrderCard.dart';
class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink ,
        title: Text(
          "Cart",
          style: TextStyle(
            color: Colors.white ,
            fontSize: 20 ,
          ) ,
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              OrderCard(date: DateTime.now() , address: "dsadasd", restaurantName: "KFC", price: "45",isCart: true ) ,
              OrderCard(date: DateTime.now() , address: "dsadasd", restaurantName: "KFC", price: "45",isCart: true ) ,
              OrderCard(date: DateTime.now() , address: "dsadasd", restaurantName: "KFC", price: "45",isCart: true ) ,
              OrderCard(date: DateTime.now() , address: "dsadasd", restaurantName: "KFC", price: "45",isCart: true ) ,
            ],
          ),
        ),
    ) ;
  }
}
