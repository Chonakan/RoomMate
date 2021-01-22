import 'package:flutter/material.dart';
import 'package:roommate_app_project/authenticate/register.dart';
import 'package:roommate_app_project/Signin2.dart';

class SignUppage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Signupstate();
  }
}

class Signupstate extends State<SignUppage> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn22page(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}
