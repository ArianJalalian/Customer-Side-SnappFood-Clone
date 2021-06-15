import 'package:customer_side/Widgets/TextStyle.dart';
import 'package:flutter/material.dart';
import '../Widgets/CommentCard.dart';
import 'package:same_features/Models/Seller.dart';




class UserCommentsPage extends StatefulWidget {
  @override
  _UserCommentsPageState createState() => _UserCommentsPageState();
}

class _UserCommentsPageState extends State<UserCommentsPage> {
  var Comments = [
    CommentCard( text : "dsasdadsd" , rate :  "5" , restaurantName : "" , restaurantPage : false ),
    CommentCard( text : "dsasdadsd" , rate :  "5" , restaurantName : "" , restaurantPage : false ),
    CommentCard( text : "dsasdadsd" , rate :  "5" , restaurantName : "" , restaurantPage : false ),
    CommentCard( text : "dsasdadsd" , rate :  "5" , restaurantName : "" , restaurantPage : false ),
    CommentCard( text : "dsasdadsd" , rate :  "5" , restaurantName : "" , restaurantPage : false ),
  ] ;

  @override
  Widget build(BuildContext context) {
    final Seller seller = ModalRoute.of(context).settings.arguments as Seller;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink ,
        title: Text(
          "Your Comments" ,
          style: TextStyle(
            color: Colors.white ,
            fontSize: 20 ,
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: ListView(
        children: <Widget>[
          /*...seller.comments.map(
              (comment) {
                return CommentCard(comment: comment) ;
              }
          ) ,*/
          ...Comments ,
        ],
      ),
    );
  }
}
