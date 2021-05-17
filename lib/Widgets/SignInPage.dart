import 'package:customer_side/Widgets/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:same_features/Models/User.dart';

class SignInPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MyFirstPageInit(
      onSignIn: (User user) {
        //
        Navigator.of(context).pushNamedAndRemoveUntil("/MainPages", (route) => false , arguments: user ) ;
      },
      onSignUp: (){
        Navigator.pushNamed(context, "/SignUpPage" ) ;
      },
    );
  }
}
