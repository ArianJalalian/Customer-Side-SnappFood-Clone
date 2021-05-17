import 'package:flutter/material.dart';

import 'package:customer_side/Widgets/TextStyle.dart';

import 'package:same_features/Models/Food.dart';

class FoodCard extends StatelessWidget {
  final Food food ;
  FoodCard({this.food});
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      food.name,
                      style: MyTextStyle.boldTitleStyle(),
                    ),
                    Text(
                      food.desc ,
                      style: MyTextStyle.subtitleStyle(),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.515,
                ),
                Container(
                  //child: food.hasPhoto() ? Center(child: Text("IMAGE")) : Center(child: Text("Default Image")),
                  width:MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ) ,
                Text(
                  "${food.price} \$",
                  style: MyTextStyle.boldTitleStyle(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                ) ,
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.pink),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ) ,
              ],
            ) ,
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
    );
  }
}
