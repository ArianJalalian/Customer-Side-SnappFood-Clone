import 'package:customer_side/Widgets/TextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latlong/latlong.dart';
import 'package:same_features/Models/Customer.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  Customer _customer;
  bool _isLocationPicked = false;
  LatLng _location;
  double _radius;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                    _customer.orderList = value;
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
                  title: "Your Address",
                  value: "Vanak sq , ..... ",
                  onSaved: (value) {
                    //seller.address = value;
                  },
                ),
                myTextForm(
                  title: "Your Wallet",
                  prefix: Text(
                    "You have : ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onSaved: (value) {},
                ),
                SizedBox(
                  height: 5 ,
                ) ,
                RaisedButton(
                  padding: EdgeInsets.only(top : 13 , bottom: 13 ) ,
                  onPressed: () {
                    Navigator.pushNamed(context, '/Profile/UserCommentsPage' ) ;
                  },
                  color: Colors.pink,
                  child: Center(
                    child: Text(
                      "Your Comments",
                      style: TextStyle(
                        color: Colors.white ,
                        fontSize: 20 ,
                      ) ,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5 ,
                ) ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        var latlng =
                            await Navigator.pushNamed(context, '/Profile/Map');
                        if (latlng != null) {
                          setState(() {
                            _isLocationPicked = true;
                            _location = latlng;
                          });
                        }
                      },
                      child: Text("Pick a Location"),
                    ),
                    _isLocationPicked
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
                SizedBox(
                  height: 5 ,
                ) ,
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
      {String title,
      String value,
      Function onSaved,
      bool numKey = false,
      Widget prefix}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        cursorColor: Theme.of(context).primaryColor,
        keyboardType: numKey ? TextInputType.number : TextInputType.text,
        initialValue: value,
        decoration: InputDecoration(
          prefix: prefix,
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
