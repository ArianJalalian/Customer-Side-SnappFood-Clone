import 'package:customer_side/Widgets/TextStyle.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigation(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            roundedBox("Persian", context),
            roundedBox("FastFood", context),
            roundedBox("SeaFood", context),
            roundedBox("Near you", context),
          ],
        ),
      ),
    );
  }

  Widget roundedBox(String title, BuildContext ctx) {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, MediaQuery.of(ctx).size.height * 0.05 , 0, 0),
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(
            width: MediaQuery.of(ctx).size.width * 0.7,
            height: MediaQuery.of(ctx).size.height * 0.2,
          ),
          //margin: EdgeInsets.fromLTRB(0, MediaQuery.of(ctx).size.height * 0.05 , 0 , 0),
          child: ElevatedButton(
            onPressed: () {} ,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.pink) ,
            ),
          ),
        ),
      ),
    );
  }
}

class MyBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 100,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_basket_outlined,
            color: Colors.pink,
          ),
          title: Text(
            "Cart",
            style: TextStyle(color: Colors.pink),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.pink,
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.pink),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.list_alt_outlined,
            color: Colors.pink,
          ),
          title: Text(
            "Orders",
            style: TextStyle(color: Colors.pink),
          ),
        ),
      ],
    );
  }
}
