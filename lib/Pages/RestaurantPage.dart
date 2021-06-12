import 'package:flutter/material.dart';
import 'package:customer_side/Widgets/FoodCard.dart';
import 'package:customer_side/Widgets/TextStyle.dart';
import 'package:same_features/Models/Seller.dart';
import '../Widgets/FavouriteRestaurantButton.dart';

class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Seller seller = ModalRoute.of(context).settings.arguments as Seller;
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          "McDonalds",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3 * 0.55,
                color: Color.fromRGBO(232, 232, 232, 400),
              ),
              Image(
                image: AssetImage("Images/defaultRestaurant.png"),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3 * 0.55,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "McDonalds",
                  style: MyTextStyle.boldTitleStyle(),
                ),
                Row(
                  children: <Widget>[
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
                            "3.5",
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
                      onPressed: () {
                        Navigator.pushNamed(context,
                            '/HomePage/Restaurants/RestaurantPage/CommentPage');
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey)),
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
                    FavouriteRestaurantButton(),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          screen.width * 0.02, screen.height * 0.1, 0, 0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: screen.height * 0.54,
            child: ListView(
              children: <Widget>[
                FoodCard(),
                FoodCard(),
                FoodCard(),
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

