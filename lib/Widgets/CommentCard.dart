import 'package:flutter/material.dart';
import 'package:customer_side/Widgets/TextStyle.dart';
import 'package:intl/intl.dart';

import 'package:same_features/Models/Comment.dart';

class CommentCard extends StatelessWidget {
  //final Comment comment ;
  String text ;
  String rate ;
  CommentCard(this.text ,this.rate );
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
        color: Colors.white,
      ),
      height: true //comment.isAnswered()
          ? MediaQuery.of(context).size.height * 0.4
          : MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.03,
                MediaQuery.of(context).size.width * 0.03,
                0,
                MediaQuery.of(context).size.width * 0.01),
            child: Text(
              "Arian" , //comment.name , // User.name
              style: MyTextStyle.boldTitleStyle(),
            ),
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Icon(
                Icons.date_range_outlined,
                color: Colors.grey,
              ),
              Text(
                DateFormat.yMMMd().format(DateTime.now()/*comment.time*/) +
                    " | " +
                    DateFormat.Hm().format(DateTime.now()/*comment.time*/),
                style: MyTextStyle.subtitleStyle(),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      rate , //comment.score , // Score
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
            child: Text(
              text,//comment.commentText ,
            ),
          ),
          if (true/*comment.isAnswered()*/) /*has answer*/
            Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01)) ,
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.pink),
                    ),
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.03),
                    child: Text(
                      "dasasdsdasaddsadasdfsdffdssf",//comment.answer ,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
