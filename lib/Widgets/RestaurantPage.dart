import 'package:customer_side/Widgets/FoodCard.dart';
import 'package:customer_side/Widgets/TextStyle.dart';
import 'package:flutter/material.dart';
import 'package:same_features/Models/Seller.dart';

class RestaurantPage extends StatelessWidget {
  final Seller seller;

  RestaurantPage({this.seller});

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: screen.height * 0.25,
            color: Colors.pink,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(
                    screen.width * 0.02, screen.height * 0.1, 0, 0),
              ),
              Text(
                "McDonald",
                style: MyTextStyle.boldTitleStyle(),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    screen.width * 0.02, screen.height * 0.1, 0, 0),
              ),
              Container(
                height: screen.height * 0.054,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green,
                ),
                padding: EdgeInsets.all(screen.width * 0.01),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    ),
                    Text(
                      "4.8",
                      /*Rating*/
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    screen.width * 0.02, screen.height * 0.1, 0, 0),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey)),
                child: Row(
                  children: <Widget>[
                    Text("Comments"),
                    SizedBox(
                      width: screen.width * 0.01,
                    ),
                    Icon(Icons.comment),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    screen.width * 0.02, screen.height * 0.1, 0, 0),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                onPressed: () {},
                child: Icon(
                  Icons.star_border,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Container(
            height: screen.height * 0.65,
            child: ListView(
              children: <Widget>[
                FoodCard(),
                FoodCard(),
                FoodCard(),
                FoodCard(),
                FoodCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
