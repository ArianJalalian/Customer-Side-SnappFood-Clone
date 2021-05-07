import 'package:customer_side/Widgets/TextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InformationCard extends StatelessWidget {
  final String name ;
  final String hint ;
  Function validator ;
  TextInputType kb ;
  InformationCard({this.name , this.kb , this.validator , this.hint , Key key}) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.05, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name ,
            style: MyTextStyle.textStyle() ,
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            child: Form(
              key: key,
              child: TextFormField(
                keyboardType: kb ,
                decoration: InputDecoration(
                  hintText: hint,
                ),
                validator: validator ,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ],
      ),
    );
  }
}
