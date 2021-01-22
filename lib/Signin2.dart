import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roommate_app_project/welcome.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:roommate_app_project/blocs/auth_bloc.dart';
import 'UserLogin.dart';
import 'dart:async';
import 'authenticate/Signup.dart';

class SignIn22page extends StatefulWidget {
  final Function toggleView;
  SignIn22page({this.toggleView});

  @override
  State<StatefulWidget> createState() {
    return Signin22state();
  }
}

class Signin22state extends State<SignIn22page> {
  /*bool isLoggedIn = false;

  FirebaseAuth _auth = FirebaseAuth.instance;
  //FacebookLogin _facebookLogin = FacebookLogin();*/

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
        appBar: AppBar(
          backgroundColor: Color(0xAAFBF7F6),
          elevation: 0,
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  widget.toggleView();
                },
                icon: Icon(Icons.person),
                label: Text('Register'))
          ],
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/login.jpg'),
                fit: BoxFit.cover,
              )),
            ),
            Positioned(
              left: 40,
              top: 80,
              child: IconButton(
                icon: Icon(Icons.home),
                iconSize: 30,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Welcomepage()));
                },
              ),
            ),
            /*Padding(
              padding: EdgeInsets.fromLTRB(165, 118, 0, 0),
              child: Text(
                'You do not have an account?',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              right: 30,
              top: 100,
              child: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                iconSize: 30,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUppage()));
                },
              ),
            ),*/
            Padding(
              padding: EdgeInsets.fromLTRB(50, 140, 10, 10),
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(45, 318, 30, 10),
              child: Checkbox(
                activeColor: Colors.grey,
                value: monVal,
                onChanged: (bool value) {
                  setState(() {
                    monVal = value;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(90, 335, 30, 10),
              child: Text(
                'Stay Logged in',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(240, 335, 30, 10),
              child: Text(
                'Forget Your Password',
                style: TextStyle(fontSize: 10),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Center(
                  child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 180,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 50.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(onChanged: (val) {
                                setState(() => email = val);
                              }),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                  obscureText: true,
                                  onChanged: (val) {
                                    setState(() => password = val);
                                  }),
                              SizedBox(
                                height: 20,
                              ),

                              /*RaisedButton(
                    color: Color(0xAA353546),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )*/
                            ],
                          ),
                        ),
                      ),
                      /*ListTile(
                          title: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.red,
                          hintText: "Email Address",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)),
                        ),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                          title: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.red,
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)),
                        ),
                      )),
                      SizedBox(
                        height: 35,
                      ),*/
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                          height: 65,
                          width: 320,
                          //color: Colors.red,
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Container(
                              color: Color(0xAAFD7778),
                              child: Center(
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))),
                      /*Container(
                  height: 50,
                  width: 300,
                  child: SignInButton(
                    Buttons.Email,
                    text: "  Get going with Email",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FinalHomepage()));
                    },
                  ),
                ),*/

                      /*Container(
                  height: 50,
                  width: 300,
                  child: SignInButton(
                    Buttons.Google,
                    text: "  Sign in with Google",
                    onPressed: () {},
                  ),
                ),*/
                      SizedBox(
                        height: 5,
                      ),
                      /*Container(
                  height: 50,
                  width: 280,
                  child: isLoggedIn
                      ? SignInButton(
                          Buttons.FacebookNew,
                          text: "  Sign in with Facebook",
                          onPressed: () {
                            _loginFB();
                          },
                        )
                      : SignInButton(
                          Buttons.FacebookNew,
                          text: "Logout",
                          onPressed: () {
                            _logoutFB();
                          },
                        ),
                ),*/
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
