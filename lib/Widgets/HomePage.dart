import 'package:customer_side/Widgets/TextStyle.dart';
import 'package:flutter/material.dart';
import 'package:same_features/Models/User.dart';

import 'CartPage.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final User _args = ModalRoute
        .of(context)
        .settings
        .arguments as User;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink ,
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.white ,
            fontSize: 20 ,
          ) ,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            roundedBox("Persian", context),
            roundedBox("FastFood", context),
            roundedBox("SeaFood", context),
            roundedBox("Near you", context),
            roundedBox("Your Favourites", context),
          ],
        ),
      ),
    );
  }

  Widget roundedBox(String title, BuildContext ctx) {
    return Center(
      child: Container(
        margin:
        EdgeInsets.fromLTRB(0, MediaQuery
            .of(ctx)
            .size
            .height * 0.05, 0, 0),
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(
            width: MediaQuery
                .of(ctx)
                .size
                .width * 0.7,
            height: MediaQuery
                .of(ctx)
                .size
                .height * 0.2,
          ),
          //margin: EdgeInsets.fromLTRB(0, MediaQuery.of(ctx).size.height * 0.05 , 0 , 0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(ctx, '/HomePage/Restaurants');
            },
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.pink),
            ),
          ),
        ),
      ),
    );
  }
}


