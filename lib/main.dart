import 'Pages/MainPages.dart';
import 'Pages/RestaurantPage.dart';
import 'package:flutter/material.dart';
import 'package:same_features/Widgets/ThemeData.dart';
import 'Pages/SignInPage.dart';
import 'Pages/UserCommentsPage.dart';
import 'Widgets/SignUp.dart';
import 'Pages/CartPage.dart';
import 'Pages/CommentPage.dart';
import 'Widgets/Map.dart';
import 'Pages/RestaurantsPage.dart';


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
        '/Profile/UserCommentsPage' : (context) => UserCommentsPage() ,
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






