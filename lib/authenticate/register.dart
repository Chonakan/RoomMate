import 'package:flutter/material.dart';
import 'package:roommate_app_project/services/auth_service.dart';
import 'package:roommate_app_project/welcome.dart';
import 'package:roommate_app_project/Signin2.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
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
              label: Text('Sign In'))
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
          /*Positioned(
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
          ),*/
          ListView(
            children: <Widget>[
              /*Padding(
                padding: EdgeInsets.fromLTRB(245, 88, 0, 0),
                child: Text(
                  'Go to Sign In',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),*/
              Padding(
                padding: EdgeInsets.fromLTRB(40, 130, 10, 0),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 50.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                          validator: (val) =>
                              val.isEmpty ? "Enter your email" : null,
                          onChanged: (val) {
                            setState(() => email = val);
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          obscureText: true,
                          validator: (val) => val.length < 6
                              ? "Enter a password 6+ chars long"
                              : null,
                          onChanged: (val) {
                            setState(() => password = val);
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(onChanged: (val) {}),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(onChanged: (val) {}),
                      SizedBox(
                        height: 50,
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
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            dynamic result = await _auth
                                .registerWithEmailAndPassword(email, password);
                            if (result == null) {
                              setState(
                                  () => error = "please supply a valid email");
                            }
                          }
                        },
                      )*/
                    ],
                  ),
                ),
              ),

              /*Padding(
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
              ))),*/
              GestureDetector(
                onTap: () async {
                  if (_formKey.currentState.validate()) {
                    dynamic result = await _auth.registerWithEmailAndPassword(
                        email, password);
                    if (result == null) {
                      setState(() => error = "please supply a valid email");
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignIn22page()));
                  }
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
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
          )
        ],
      ),
    );
  }
}
