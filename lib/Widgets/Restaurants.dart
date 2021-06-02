import 'package:customer_side/Widgets/OrderCard.dart';
import 'package:customer_side/Widgets/RestaurantInfoCard.dart';
import 'package:flutter/material.dart';

class Restaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RestaurantInfoCard(title: "McDonald", rate: 5 , subtitle: "pizza , burger , ...",),
            RestaurantInfoCard(title: "McDonald", rate: 5 , subtitle: "pizza , burger , ...",),
            RestaurantInfoCard(title: "McDonald", rate: 5 , subtitle: "pizza , burger , ...",),
            RestaurantInfoCard(title: "McDonald", rate: 5 , subtitle: "pizza , burger , ...",),
            RestaurantInfoCard(title: "McDonald", rate: 5 , subtitle: "pizza , burger , ...",),
            RestaurantInfoCard(title: "McDonald", rate: 5 , subtitle: "pizza , burger , ...",),
          ],
        ),
      ),
    );
  }
}
