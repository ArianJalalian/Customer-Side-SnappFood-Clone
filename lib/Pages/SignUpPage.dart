import 'package:customer_side/Widgets/SignUp.dart';
import 'package:flutter/material.dart';
import '../Widgets/SignUp.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SignUp(
      onSubmit : (){
        // server
        Navigator.pop(context) ;
      },
    );
  }
}
