import 'package:flutter/material.dart';

import 'CommentCard.dart';

class CommentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey ,
      body: ListView(
        children: <Widget>[
          CommentCard(true) ,
          CommentCard(false) ,
          CommentCard(true) ,
          CommentCard(false) ,
          CommentCard(false) ,
          CommentCard(false) ,
          CommentCard(true) ,

        ],
      ) ,
    ) ;
  }
}
