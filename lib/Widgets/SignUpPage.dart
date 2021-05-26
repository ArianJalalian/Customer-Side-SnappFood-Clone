import 'package:customer_side/Widgets/SignIn.dart';
import 'package:customer_side/Widgets/SignUp2.dart';
import 'package:flutter/material.dart';
import 'package:same_features/Models/User.dart';
import 'SignUp.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SignUpPage2(
      onSubmit : (){
        // server
        Navigator.pop(context) ;
      },
    );
  }
}
