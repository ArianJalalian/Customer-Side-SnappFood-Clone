import 'package:flutter/material.dart';

import 'package:customer_side/Widgets/TextStyle.dart';
import 'package:intl/intl.dart';
import 'package:same_features/Models/User.dart';

class CommentCard extends StatelessWidget {
  bool forTesting;

  CommentCard(this.forTesting);

  /*final User user ;
  CommentCard({this.user});*/
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
        color: Colors.white,
      ),
      height: forTesting
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
              "Ali", // User.name
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
                DateFormat.yMMMd().format(DateTime.now()) +
                    " | " +
                    DateFormat.Hm().format(DateTime.now()),
                style: MyTextStyle.subtitleStyle(),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      "4.2", // Score
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
              "dshfkweijuirejgigohojeigrjvniheuhuhuhuhuuuuuuuuuuuuuuuuullllllllllllllllllllllllllllllllllllu",
            ),
          ),
          if (forTesting) /* has answer*/
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
                      "dshfkweijuirejgigohojeigrj\n\nvniheuhuhuhuhu\nuuuuuuuu\nuuuuuuuullllllllllllllllllllllllllllllllllllu",
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
