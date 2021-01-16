import 'package:flutter/material.dart';
import 'package:roommate_app_project/authenticate/register.dart';

class SignUppage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Signupstate();
  }
}

class Signupstate extends State<SignUppage> {
  bool monVal = false;

  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String name = '';
  String phone = '';

  @override
  Widget build(BuildContext context) {
    return Register();
  }
}
