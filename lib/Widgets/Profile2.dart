import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latlong/latlong.dart';
import 'package:same_features/Models/Customer.dart';
import 'package:same_features/Models/User.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final GlobalKey formKey = GlobalKey<FormState>();

  Customer customer;
  bool isLocationPicked = false;
  LatLng location;
  double radius;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 20 , color: Colors.white),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image(
                    image: AssetImage("Images/defaultProfile.jpg"),
                    width: 120,
                    height: 120,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Edit Your Profile Picture"),
                ),
                myTextForm(
                  title: "Your name",
                  value: "Arian",
                  onSaved: (value) {
                    customer.orderList = value;
                  },
                ),
                myTextForm(
                  title: "Your phone",
                  value: "09123456789",
                  onSaved: (value) {
                    //customer.phoneNumber = value;
                  },
                  numKey: true,
                ),
                myTextForm(
                  title: "Your Last Name",
                  value: "Jalalian",
                  onSaved: (value) {
                    //seller.restaurantName = value;
                  },
                ),
                myTextForm(
                  title: "Your address",
                  value: "Vanak sq , ..... ",
                  onSaved: (value) {
                    //seller.address = value;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        var latlng = await Navigator.pushNamed(
                            context, '/Profile/Map');
                        if (latlng != null) {
                          setState(() {
                            isLocationPicked = true;
                            location = latlng;
                          });
                        }
                      },
                      child: Text("Pick a Location"),
                    ),
                    isLocationPicked
                        ? Icon(
                            Icons.check,
                            color: Colors.green,
                          )
                        : Icon(
                            Icons.clear,
                            color: Colors.red,
                          ),
                  ],
                ),
                ElevatedButton(
                  child: Text("Save"),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myTextForm(
      {String title, String value, Function onSaved, bool numKey = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        cursorColor: Theme.of(context).primaryColor,
        keyboardType: numKey ? TextInputType.number : TextInputType.text,
        initialValue: value,
        decoration: InputDecoration(
          labelText: title,
        ),
        onSaved: onSaved,
        validator: (String string) {
          if (string == "") return "You need to enter something";
          return null;
        },
      ),
    );
  }
}
