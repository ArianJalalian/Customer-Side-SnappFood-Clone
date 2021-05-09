import 'package:customer_side/Widgets/FoodCard.dart';
import 'package:customer_side/Widgets/HomePage.dart';
import 'package:customer_side/Widgets/RestaurantPage.dart';
import 'package:flutter/material.dart';
import 'package:same_features/Models/Seller.dart';
import 'package:same_features/Widgets/FirstPage.dart';
import 'package:same_features/Widgets/ThemeData.dart';

import './SignUp.dart';
import './OrderCard.dart';
import 'CommentCard.dart';
import 'CommentPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Seller seller =  Seller(55456 , "McDonald" ,"455" , "2154685") ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appThemeData() ,
      title: 'Flutter Demo',
      home: RestaurantPage() ,
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





