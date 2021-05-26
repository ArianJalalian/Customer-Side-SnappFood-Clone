import 'package:flutter/material.dart';
class FavouriteRestaurantButton extends StatefulWidget {
  @override
  _FavouriteRestaurantButtonState createState() =>
      _FavouriteRestaurantButtonState();
}

class _FavouriteRestaurantButtonState extends State<FavouriteRestaurantButton> {
  bool _isFav = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.yellow)),
      onPressed: () {
        // add to favourite restaurants
        setState(() {
          _isFav = !_isFav;
        });
      },
      child:Icon(
        _isFav ? Icons.star : Icons.star_border ,
        color: Colors.black ,
      ) ,
    );
  }
}
