import 'package:customer_side/Widgets/TextStyle.dart';
import 'package:flutter/material.dart';

import 'CommentCard.dart';

import 'package:same_features/Models/Seller.dart';
import 'package:same_features/Models/Comment.dart';



class CommentPage extends StatefulWidget {
  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  var _formKey = GlobalKey<FormState>();
  String _commentText ;
  String _value = "1" ;
  var Comments = [
    CommentCard("dsasdadsd" , "5"),
    CommentCard("sdasdasad", "5"),
    CommentCard("sdadsad", "5"),
    CommentCard("Sdasads", "5"),
    CommentCard("sadsadsadsda", "5"),
  ] ;

  @override
  Widget build(BuildContext context) {
    final Seller seller = ModalRoute.of(context).settings.arguments as Seller;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink ,
        title: Text(
          "Comment" ,
          style: TextStyle(
            color: Colors.white ,
            fontSize: 20 ,
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Comment : ",
                  style: MyTextStyle.boldTitleStyle(),
                ),
                DropdownButton<String>(
                  value: _value ,
                  onChanged: (newValue){
                    setState(() {
                      _value = newValue ;
                    });
                  },
                  items: <String>["1", "2", "3", "4", "5"]
                      .map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem<String>(
                      value: value ,
                      child: Row(
                        children: <Widget>[
                          Text(value),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ) ,
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Form(
                  key: _formKey ,
                  child: TextFormField(
                    validator: (text) {
                      if (text.isEmpty || text == null)
                        return "You did not enter something";
                      return null;
                    },
                    maxLines: 5,
                    onSaved: (text){
                      _commentText = text ;
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        Comments.add(CommentCard(_commentText ,_value)) ;
                        _formKey.currentState.reset();
                        _value = "1" ;
                      }
                    });
                  },
                  child: Icon(Icons.send) ,
                ),
              ],
            ),
          ),
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
