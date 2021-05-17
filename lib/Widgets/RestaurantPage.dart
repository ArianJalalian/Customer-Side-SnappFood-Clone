import 'package:flutter/material.dart';

import 'package:customer_side/Widgets/FoodCard.dart';
import 'package:customer_side/Widgets/TextStyle.dart';

import 'package:same_features/Models/Seller.dart';

class RestaurantPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final Seller seller = ModalRoute.of(context).settings.arguments as Seller ;
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: screen.height * 0.25,
            color: Colors.pink,
          ),
          Container( 
            margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /*Padding(
                  padding: EdgeInsets.fromLTRB(
                      screen.width * 0.02, screen.height * 0.1, 0, 0),
                ),*/
                Text(
                  seller.name ,
                  style: MyTextStyle.boldTitleStyle(),
                ),
                /*Padding(
                  padding: EdgeInsets.fromLTRB(
                      screen.width * 0.02, screen.height * 0.1, 0, 0),
                ),*/
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
                            seller.rating ,
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
                        Navigator.pushNamed(context, '/HomePage/Restaurants/RestaurantPage/CommentPage') ;
                      },
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
                      onPressed: () {
                        // add to favourite restaurants
                      },
                      child: Icon(
                        Icons.star_border,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: screen.height * 0.57,
            child: ListView(
              children: <Widget>[
                ...seller.menu.map(
                    (food) {
                      return FoodCard(food: food) ;
                    }
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
