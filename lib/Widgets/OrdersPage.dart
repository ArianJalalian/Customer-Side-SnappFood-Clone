import 'package:flutter/material.dart';

import 'OrderCard.dart';
class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink ,
        title: Text(
          "Orders",
          style: TextStyle(
            color: Colors.white ,
            fontSize: 20 ,
          ) ,
        ),
      ),
      body : SingleChildScrollView(
        child: Column(
          children: <Widget>[
            OrderCard(date: DateTime.now() , address: "dsadasd", restaurantName: "KFC", price: "45",isCart: false ) ,
            OrderCard(date: DateTime.now() , address: "dsadasd", restaurantName: "KFC", price: "45",isCart: false ) ,
            OrderCard(date: DateTime.now() , address: "dsadasd", restaurantName: "KFC", price: "45",isCart: false ) ,
            OrderCard(date: DateTime.now() , address: "dsadasd", restaurantName: "KFC", price: "45",isCart: false ) ,
          ],
        ),
      ),
    ) ;
  }
}
