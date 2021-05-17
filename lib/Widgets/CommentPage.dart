import 'package:flutter/material.dart';

import 'CommentCard.dart';

import 'package:same_features/Models/Seller.dart';

class CommentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Seller seller  = ModalRoute.of(context).settings.arguments as Seller ;
    return Scaffold(
      backgroundColor: Colors.grey ,
      body: ListView(
        children: <Widget>[
          ...seller.comments.map(
              (comment) {
                return CommentCard(comment: comment) ;
              }
          ) ,
        ],
      ) ,
    ) ;
  }
}
