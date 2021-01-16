import 'package:flutter/material.dart';
import 'package:roommate_app_project/services/auth_service.dart';
import 'package:roommate_app_project/Signin2.dart';
import 'package:roommate_app_project/welcome.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  String email = '';
  String password = '';

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
            left: 30,
            top: 70,
            child: IconButton(
              icon: Icon(Icons.home),
              iconSize: 25,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Welcomepage()));
              },
            ),
          ),
          Positioned(
            right: 30,
            top: 70,
            child: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              iconSize: 25,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignIn22page()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(245, 88, 0, 0),
            child: Text(
              'Go to Sign In',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 135, 10, 0),
            child: Text(
              'Sign Up',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          /*Container(
            padding: EdgeInsets.symmetric(vertical: 150.0, horizontal: 50.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(onChanged: (val) {}),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(obscureText: true, onChanged: (val) {}),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(onChanged: (val) {}),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(obscureText: true, onChanged: (val) {}),
                  SizedBox(
                    height: 40,
                  ),
                  RaisedButton(
                    color: Color(0xAA353546),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),*/
          Padding(
              padding: const EdgeInsets.fromLTRB(25, 180, 30, 0),
              child: ListTile(
                  title: TextField(
                onChanged: (val) {},
                decoration: InputDecoration(
                  fillColor: Colors.red,
                  hintText: "First & Last Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ))),
          Padding(
              padding: const EdgeInsets.fromLTRB(25, 250, 30, 0),
              child: ListTile(
                  title: TextField(
                onChanged: (val) {},
                decoration: InputDecoration(
                  fillColor: Colors.red,
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ))),
          Padding(
              padding: const EdgeInsets.fromLTRB(25, 320, 30, 0),
              child: ListTile(
                  title: TextField(
                obscureText: true,
                onChanged: (val) {},
                decoration: InputDecoration(
                  fillColor: Colors.red,
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ))),
          Padding(
              padding: const EdgeInsets.fromLTRB(25, 390, 30, 0),
              child: ListTile(
                  title: TextField(
                onChanged: (val) {},
                decoration: InputDecoration(
                  fillColor: Colors.red,
                  hintText: "Mobile Phone ",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ))),
          /*Padding(
            padding: EdgeInsets.fromLTRB(25, 450, 30, 10),
            child: Checkbox(
              activeColor: Colors.black,
              value: monVal,
              onChanged: (bool value) {
                setState(() {
                  monVal = value;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(70, 470, 20, 10),
            child: Text(
              'Please sign me up for the news',
              style: TextStyle(fontSize: 12),
            ),
          ),*/
          GestureDetector(
            onTap: () async {
              //if (_formKey.currentState.validate()) {

              print(email);
              print(password);

              //}
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 470, 30, 10),
              child: Container(
                  height: 65,
                  //color: Colors.red,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                      color: Color(0xAA353546),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
