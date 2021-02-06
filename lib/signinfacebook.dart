import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:roommate_app_project/blocs/auth_bloc.dart';
import 'UserLogin.dart';
import 'dart:async';
import 'package:roommate_app_project/FinalHome.dart';

class SignInFacebookpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SigninFacebookstate();
  }
}

class SigninFacebookstate extends State<SignInFacebookpage> {
  StreamSubscription<FirebaseUser> loginStateSubscription;

  @override
  void initState() {
    var authBloc = Provider.of<AuthBloc>(context, listen: false);
    loginStateSubscription = authBloc.currentUser.listen((fbUser) {
      if (fbUser != null) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Facebookpage()));
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    loginStateSubscription.cancel();
    super.dispose();
  }

  bool monVal = false;

  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    var authBloc = Provider.of<AuthBloc>(context);
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/login.jpg'),
            fit: BoxFit.cover,
          )),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(65, 200, 65, 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Room',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xAAff3b3d)),
                  ),
                  Text(
                    'Mate',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xAA252530)),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                ' Design your house',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Center(
              child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 350,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    child: SignInButton(Buttons.Facebook,
                        text: "  Sign in with Facebook",
                        onPressed: () => authBloc.loginFacebook()),
                  ),
                ],
              ),
            ],
          )),
        ),
      ],
    ));
  }
}
