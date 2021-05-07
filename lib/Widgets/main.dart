import 'package:customer_side/Widgets/FoodCard.dart';
import 'package:customer_side/Widgets/HomePage.dart';
import 'package:flutter/material.dart';

import './SignUp.dart';
import './OrderCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

      ),
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // This widget is the root of your application.
  final cards
  = {
    OrderCard(address: "vanak sq",
      date: DateTime.now(),
      price: 20,
      restaurantName: "McDonalds",),
    OrderCard(address: "vanak sq",
      date: DateTime.now(),
      price: 20,
      restaurantName: "McDonalds",),
    OrderCard(address: "vanak sq",
      date: DateTime.now(),
      price: 20,
      restaurantName: "McDonalds",),
    OrderCard(address: "vanak sq",
      date: DateTime.now(),
      price: 20,
      restaurantName: "McDonalds",),
    OrderCard(address: "vanak sq",
      date: DateTime.now(),
      price: 20,
      restaurantName: "McDonalds",),
    OrderCard(address: "vanak sq",
      date: DateTime.now(),
      price: 20,
      restaurantName: "McDonalds",),

  };

  @override
  Widget build(BuildContext context) {
    return HomePage() ;
  }
}





