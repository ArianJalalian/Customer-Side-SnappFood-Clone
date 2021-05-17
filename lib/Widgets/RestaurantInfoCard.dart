import 'package:customer_side/Widgets/TextStyle.dart';
import 'package:flutter/material.dart' ;
class RestaurantInfoCard extends StatelessWidget {

  //final Image image ;
  final title ;
  final subtitle ;
  final rate ;

  RestaurantInfoCard({this.title, this.subtitle, this.rate});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/HomePage/Restaurants/RestaurantPage');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.02) ,
        height: MediaQuery.of(context).size.height * 0.3 ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           Stack(
              children: [
                Container( 
                  //child: Image.asset(name),
                width: double.infinity ,
                height: MediaQuery.of(context).size.height * 0.3 * 0.55 ,
                color: Colors.pink ,
                  //child: image ,
              ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)) ,
                    color: Colors.green,
                  ),
                  margin :EdgeInsets.all(MediaQuery.of(context).size.width * 0.03) ,
                  width: MediaQuery.of(context).size.width* 0.07 ,
                  height: MediaQuery.of(context).size.height* 0.03,
                  child: Center(child: Text(rate.toString())),
                ),
              ],
            ) ,
            Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02 ) ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   Text(
                    title ,
                    style: MyTextStyle.boldTitleStyle(),
                  ),
                  Text(
                    subtitle ,
                    style: MyTextStyle.subtitleStyle() ,
                  ),
                ],
              ),
            ) ,
          ],
        ),
      ),
    );
  }
}
