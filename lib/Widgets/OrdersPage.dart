import 'package:flutter/material.dart';

import 'OrderCard.dart';
class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          OrderCard(date: DateTime.now() , address: "dsadasd", restaurantName: "KFC", price: "45",) ,
          OrderCard(date: DateTime.now() , address: "dsadasd", restaurantName: "KFC", price: "45",) ,
          OrderCard(date: DateTime.now() , address: "dsadasd", restaurantName: "KFC", price: "45",) ,
          OrderCard(date: DateTime.now() , address: "dsadasd", restaurantName: "KFC", price: "45",) ,
        ],
      ),
    ) ;
  }
}