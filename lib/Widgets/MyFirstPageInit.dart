import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:same_features/Widgets/TextStyle.dart';
import 'package:same_features/Models/User.dart';

class MyFirstPageInit extends StatelessWidget {
  final Function onSignIn;
  final Function onSignUP;
  MyFirstPageInit({Key key, this.onSignIn, this.onSignUP}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Welcome To My App",
                style: MyTextStyle.boldTitleStyle(),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: MyForm(
                onSignIn: onSignIn,
                onSignUP: onSignUP,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  final Function onSignIn;
  final Function onSignUP;
  MyForm({Key key, this.onSignIn, this.onSignUP}) : super(key: key);
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var _formKey = GlobalKey<FormState>();
  bool _passwordState = true;
  String _phoneNumber;
  String _password;
  Function onSignIn;
  Function onSignUP;
  @override
  Widget build(BuildContext context) {
    onSignUP = widget.onSignUP;
    onSignIn = widget.onSignIn;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          phoneNumberField(),
          passwordField(),
          ElevatedButton(
            onPressed: (){
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                onSignIn(
                    User(
                      phoneNumber: _phoneNumber,
                      password: _password,
                    )
                );
              }
            },
            child: Text("sign in"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have account?"),
              TextButton(
                child: Text("make one"),
                onPressed: (){
                  onSignUP();
                },
              )
            ],
          )
        ],
      ),
    );
  }

  Widget phoneNumberField() {
    return TextFormField(
      cursorColor: Theme.of(context).primaryColor,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: "Phone Number",
        prefixIcon: Icon(Icons.phone),
      ),
      onSaved: (value) {
        _phoneNumber = value;
      },
      validator: (value){
        if (value == "")
          return "Enter Phone Number";
        return null;
      },
    );
  }

  Widget passwordField() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: TextFormField(
        obscureText: _passwordState,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          labelText: "Password",
          prefixIcon: Icon(Icons.vpn_key_outlined),
          suffixIcon: GestureDetector(
            child: Icon(
              Icons.remove_red_eye,
              color: (_passwordState) ? Colors.grey : Theme.of(context).primaryColor,
            ),
            onTap: (){
              setState(() {
                _passwordState = !_passwordState;
              });
            },
          ),
        ),
        onSaved: (value){
          _password = value;
        },
        validator: (value){
          if (value == "")
            return "Enter password";
          return null;
        },
      ),
    );
  }
}
