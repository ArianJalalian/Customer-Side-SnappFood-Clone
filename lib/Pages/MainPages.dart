import 'package:customer_side/Widgets/Profile.dart';
import 'package:flutter/material.dart';
import 'CartPage.dart';
import 'HomePage.dart';
import 'OrdersPage.dart';

class MainPages extends StatefulWidget {
  @override
  _MainPagesState createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  List _widgets = [
    CartPage() ,
    HomePage() ,
    OrdersPage() ,
    Profile() ,
  ] ;
  int _selectedIndex = 1 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigation() ,
      body: Center(
        child: _widgets.elementAt(_selectedIndex),
      ),
    );
  }
  void _onItemTapped(index){
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget MyBottomNavigation() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex ,
      onTap: _onItemTapped ,
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
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline ,
            color: Colors.pink,
          ),
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.pink),
          ),
        ),
      ],
    );
  }
}
