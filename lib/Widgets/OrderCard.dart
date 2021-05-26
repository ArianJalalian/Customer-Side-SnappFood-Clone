import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import './TextStyle.dart';
import './Receipt.dart';

class OrderCard extends StatelessWidget {
  final restaurantName;

  final date;

  final address;

  final price;
  final isCart;

  OrderCard(
      {this.date, this.address, this.price, this.restaurantName, this.isCart});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isCart
            ? Recepit.MyReceipt(context)
            : Navigator.pushNamed(
                context, '/HomePage/Restaurants/RestaurantPage');
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * (0.05),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * (0.05),
                ),
                ClipRRect(
                  child: Image(
                    image: AssetImage('Images/defaultFood.jpg') ,
                    width: MediaQuery.of(context).size.width * (0.20),
                    height: MediaQuery.of(context).size.width * (0.20),
                  ) ,
                  borderRadius: BorderRadius.all(Radius.circular(10)) ,
                ) ,
                SizedBox(
                  width: MediaQuery.of(context).size.width * (0.05),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurantName,
                      style: MyTextStyle.boldTitleStyle(),
                    ),
                    dateSub(),
                    locsub(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * (0.025),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Sum",
                  style: MyTextStyle.titleStyle(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * (0.55),
                ),
                Text(
                  "$price \$",
                  style: MyTextStyle.titleStyle(),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * (0.06),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(
                        width: 1,
                        color: Colors.black87,
                      ),
                    ),
                    onPressed: () {
                      isCart ? null : Recepit.MyReceipt(context);
                    },
                    child: Text(
                      isCart ? "Remove" : "Receipt",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.pinkAccent),
                    ),
                    onPressed: () {},
                    child: Text(
                      isCart ? "Buy" : "Order Again",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget dateSub() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.date_range_outlined,
          color: Colors.grey,
        ),
        Text(
          DateFormat.yMMMd().format(date) +
              " | " +
              DateFormat.Hm().format(date),
          style: MyTextStyle.subtitleStyle(),
        ),
      ],
    );
  }

  Widget locsub() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.place,
          color: Colors.grey,
        ),
        Text(
          address,
          style: MyTextStyle.subtitleStyle(),
        ),
      ],
    );
  }
}
