import 'package:flutter/material.dart';

import 'package:roommate_app_project/welcome.dart';
import 'FinalHome.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Signinstate();
  }
}

class Signinstate extends State<SignInpage> {
  bool monVal = false;

  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String name = '';
  String phone = '';

  @override
  Widget build(BuildContext context) {
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
          Positioned(
            left: 40,
            top: 100,
            child: IconButton(
              icon: Icon(Icons.home),
              iconSize: 30,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Welcomepage()));
              },
            ),
          ),
          /*Positioned(
            left: 100,
            top: 100,
            child: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              iconSize: 30,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Welcomepage()));
              },
            ),
          ),*/
          Padding(
            padding: EdgeInsets.fromLTRB(40, 160, 10, 10),
            child: Text(
              'Sign In',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(25, 220, 30, 10),
              child: ListTile(
                  title: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.red,
                  hintText: "Email Address",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ))),
          Padding(
              padding: const EdgeInsets.fromLTRB(25, 300, 30, 10),
              child: ListTile(
                  title: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.red,
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ))),
          Padding(
            padding: EdgeInsets.fromLTRB(45, 363, 30, 10),
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
            padding: EdgeInsets.fromLTRB(90, 380, 30, 10),
            child: Text(
              'Stay Logged in',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(210, 380, 30, 10),
            child: Text(
              'Forget Your Password',
              style: TextStyle(fontSize: 10),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FinalHomepage()));
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 405, 30, 10),
              child: Container(
                  height: 65,
                  //color: Colors.red,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                      color: Color(0xAAFD7778),
                      child: Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ))),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 475, 40, 10),
            child: Container(
              height: 50,
              width: 280,
              child: SignInButton(
                Buttons.Facebook,
                text: "  Sign up with Google",
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
