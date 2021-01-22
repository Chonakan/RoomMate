import 'package:flutter/material.dart';
import 'authenticate/Signup.dart';
import 'Signin2.dart';

class Welcomepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Welcomestate();
  }
}

class Welcomestate extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/login.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(95, 120, 0, 10),
                  child: Text(
                    'RoomMate \n Design your house',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 65,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignIn22page()));
                  },
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
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUppage()));
                  },
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
