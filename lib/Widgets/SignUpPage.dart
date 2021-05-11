import 'package:customer_side/Widgets/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:same_features/Models/User.dart';
import '../DummyData/Users.dart';
import 'SignUp.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SignUp(
      onSubmit : (User user){
        // server
        Navigator.pop(context) ;
      },
    );
  }
}
