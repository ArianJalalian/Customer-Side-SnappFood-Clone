import 'package:customer_side/Widgets/TextStyle.dart';
import 'package:flutter/material.dart';

import './InformationCard.dart';

class SignUp extends StatelessWidget {
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  RegExp exp = RegExp(r"(\w)");

  String passValidator(String value) {
    if (exp.hasMatch(value) && value.length > 6) return null;
    return "Invalid password";
  }

  String phoneValidator(String value) {
    if (value.length == 11) return null;
    return "Invalid Phone Number";
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
              child: Text(
                "Enter your Information",
                style: MyTextStyle.boldTitleStyle()
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            InformationCard(
              name: "Name",
            ),
            InformationCard(
              name: "Family Name",
            ),
            InformationCard(
              name: "Address",
            ),
            InformationCard(
              name: "Password",
              validator: passValidator,
            ),
            InformationCard(
              name: "Phone Number",
              validator: phoneValidator,
              kb: TextInputType.number,
            ),
            Container(
              padding: EdgeInsets.fromLTRB( MediaQuery.of(context).size.width * 0.18 , 0 , 0, MediaQuery.of(context).size.height * 0.05),
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  width: MediaQuery.of(context).size.width * 0.64,
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.pinkAccent),
                  ),
                  onPressed: () {},
                  child: Text("Agree"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
