import 'package:customer_side/Widgets/FoodCard.dart';
import 'file:///C:/Users/HP/Desktop/customer_side/lib/Pages/HomePage.dart';
import 'file:///C:/Users/HP/Desktop/customer_side/lib/Pages/MainPages.dart';
import 'package:customer_side/Widgets/SignIn.dart';
import 'file:///C:/Users/HP/Desktop/customer_side/lib/Pages/RestaurantPage.dart';
import 'file:///C:/Users/HP/Desktop/customer_side/lib/Pages/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:same_features/Models/Seller.dart';
import 'package:same_features/Widgets/FirstPage.dart';
import 'package:same_features/Widgets/ThemeData.dart';

import 'Widgets/SignUp.dart';
import 'Widgets/OrderCard.dart';
import 'Pages/CartPage.dart';
import 'Widgets/CommentCard.dart';
import 'Pages/CommentPage.dart';
import 'Widgets/Map.dart';
import 'Pages/RestaurantsPage.dart';
import 'Pages/SignInPage.dart';
import 'Widgets/SignUp.dart';

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
        '/SignUpPage' : (context) => SignUp(),
        '/Profile/Map' : (context) => IntialMapPage() ,
        '/MainPages' : (context) => MainPages()  ,
        '/HomePage/Restaurants' : (context) => RestaurantsPage() ,
        '/HomePage/Restaurants/RestaurantPage' : (context) => RestaurantPage() ,
        '/HomePage/Restaurants/RestaurantPage/CommentPage' : (context) => CommentPage() ,
        '/HomePage/CartPage' : (context) => CartPage() ,
      },
      title: "MealApp" ,
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





