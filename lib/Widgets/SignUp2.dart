
import 'package:flutter/material.dart';
import 'package:same_features/Widgets/TextStyle.dart';
import 'package:same_features/Models/FoodType.dart';
import 'package:same_features/Models/User.dart';

class SignUpPage2 extends StatefulWidget {
  final Function onSubmit ;
  SignUpPage2({Key key, this.onSubmit}) : super(key: key);
  @override
  _SignUpPage2State createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  var _formKey = GlobalKey<FormState>();
  String name;
  String lastName;
  String address;
  String email;
  String phoneNumber;
  String password;
  bool _passwordState = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body: Center(
          child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Text(
                          "Your Information",
                          style: MyTextStyle.boldTitleStyle(),
                        ),
                      ),
                      myTextFormField(
                        context: context,
                        label: "Your name",
                        onSaved: (value) {
                          name = value;
                        },
                        error: "Enter your name",
                      ),
                      myTextFormField(
                        context: context,
                        label: "Your phone number",
                        numKey: true,
                        onSaved: (value) {
                          phoneNumber = value;
                        },
                        error: "Enter your phone number",
                      ),
                      myTextFormField(
                        context: context,
                        label: "Your Last name",
                        onSaved: (value) {
                          lastName = value;
                        },
                        error: "Enter your Last name",
                      ),
                      myTextFormField(
                        context: context,
                        label: "Your address",
                        onSaved: (value) {
                          address = value;
                        },
                        error: "Enter your address",
                      ),
                      myPasswordField(context: context),
                      myButton(),
                    ],
                  ),
                ),
              ))),
    );
  }

  Widget myTextFormField({
    BuildContext context,
    Function onSaved,
    String label,
    String error,
    bool numKey = false,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        keyboardType: numKey ? TextInputType.phone : TextInputType.text,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          labelText: label,
        ),
        onSaved: onSaved,
        validator: (value) {
          if (value == "" || value == null) return error;
          return null;
        },
      ),
    );
  }

  Widget myPasswordField({BuildContext context}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        obscureText: _passwordState,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          labelText: "Password",
          suffixIcon: GestureDetector(
            child: Icon(
              Icons.remove_red_eye,
              color: (_passwordState)
                  ? Colors.grey
                  : Theme.of(context).primaryColor,
            ),
            onTap: () {
              setState(() {
                _passwordState = !_passwordState;
              });
            },
          ),
        ),
        onSaved: (value) {
          password = value;
        },
        validator: (value) {
          if (value == "") return "Enter password";
          if (value.length < 6) return "Password is too short";
          return null;
        },
      ),
    );
  }



  Widget myButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: ElevatedButton(
        child: Text("Sign Up"),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save() ;
            Navigator.pop(context) ;
            //widget.onSubmit() ;
          }
        },
      ),
    );
  }
}