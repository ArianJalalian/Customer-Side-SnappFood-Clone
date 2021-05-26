import 'package:flutter/material.dart';
import 'package:same_features/Models/User.dart';

import 'TextStyle.dart';
class ProfilePage extends StatelessWidget {
  User user;

  String name;

  String lastName;

  String PhoneNumber;

  String address; // multiple addresses
  String password;

  final RegExp exp = RegExp(r"(\w)");
  final formKey = GlobalKey<FormState>();
  final Function onSubmit ;

  ProfilePage({Key key, this.onSubmit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Center(
                child: Text("Profile",
                    style: MyTextStyle.boldTitleStyle()),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    nameCard(context),
                    lastNameCard(context),
                    phoneNumber(context),
                    passwordCard(context),
                    Container(
                      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(
                          width: MediaQuery.of(context).size.width * 0.64,
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.pinkAccent),
                          ),
                          onPressed: () {
                            if (formKey.currentState.validate()) {
                              formKey.currentState.save();
                              user = User(
                                  name: name,
                                  password: password,
                                  phoneNumber: PhoneNumber);
                              onSubmit(user) ;
                            }
                          },
                          child: Text("Agree"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget nameCard(context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.05, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            child: TextFormField(
              cursorColor: Theme.of(context).primaryColor,
              onSaved: (value) {
                name = value;
              },
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "Name",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) return "Invalid";
                return null;
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ],
      ),
    );
  }

  Widget lastNameCard(context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.05, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            child: TextFormField(
              cursorColor: Theme.of(context).primaryColor,
              onSaved: (value) {
                lastName = value;
              },
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "Last Name",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) return "Invalid";
                return null;
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ],
      ),
    );
  }

  Widget phoneNumber(context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.05, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            child: TextFormField(
              cursorColor: Theme.of(context).primaryColor,
              onSaved: (value) {
                PhoneNumber = value;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone_enabled),
                labelText: "Phone Number",
              ),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    value.length < 11) // + doesn't exists at the time
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('a Valid Phone Number has 11 digits')));
                return null;
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ],
      ),
    );
  }

  Widget passwordCard(context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.05, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            child: TextFormField(
              cursorColor: Theme.of(context).primaryColor,
              onSaved: (value) {
                password = value;
              },
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.vpn_key_outlined),
                labelText: "Password",
              ),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    value.length < 6 ||
                    !exp.hasMatch(value))
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          'a Valid Password has at least 6 characters and must include 0-9 or alphabets ')));
                return null;
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ],
      ),
    );
  }
}
