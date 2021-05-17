import 'package:customer_side/Widgets/FoodCard.dart';
import 'package:customer_side/Widgets/HomePage.dart';
import 'package:customer_side/Widgets/MainPages.dart';
import 'package:customer_side/Widgets/SignIn.dart';
import 'package:customer_side/Widgets/RestaurantPage.dart';
import 'package:customer_side/Widgets/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:same_features/Models/Seller.dart';
import 'package:same_features/Widgets/FirstPage.dart';
import 'package:same_features/Widgets/ThemeData.dart';

import './SignUp.dart';
import './OrderCard.dart';
import 'CartPage.dart';
import 'CommentCard.dart';
import 'CommentPage.dart';
import 'Restaurants.dart';
import 'SignInPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appThemeData() ,
      initialRoute: '/' ,
      routes: {
        '/' : (context) => SignInPage() ,
        '/SignUpPage' : (context) => SignUpPage(),
        '/HomePage' : (context) => HomePage()  ,
        '/MainPages' : (context) => MainPages()  ,
        '/HomePage/Restaurants' : (context) => Restaurants() ,
        '/HomePage/Restaurants/RestaurantPage' : (context) => RestaurantPage() ,
        '/HomePage/Restaurants/RestaurantPage/CommentPage' : (context) => CommentPage() ,
        '/HomePage/CartPage' : (context) => CartPage() ,
      },
      title: "MealApp" ,
      //home : SignInPage(),
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





