import 'package:customer_side/Widgets/RestaurantInfoCard.dart';
import 'package:flutter/material.dart';

class RestaurantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink ,
        title: Text(
          "Restaurants",
          style: TextStyle(
            color: Colors.white ,
            fontSize: 20 ,
          ) ,
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Theme.of(context).primaryColor,
                cursorHeight: 24,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search for food",
                ),
              ),
            ),
            //Divider(),
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
