import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:provider/provider.dart';
import 'package:roommate_app_project/signinfacebook.dart';
import 'package:roommate_app_project/blocs/auth_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:roommate_app_project/FinalHome.dart';

class Facebookpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FacebookState();
  }
}

class FacebookState extends State<Facebookpage> {
  StreamSubscription<FirebaseUser> homeStateSubscription;

  @override
  void initState() {
    var authBloc = Provider.of<AuthBloc>(context, listen: false);
    homeStateSubscription = authBloc.currentUser.listen((fbUser) {
      if (fbUser == null) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => SignInFacebookpage()));
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    homeStateSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var authBloc = Provider.of<AuthBloc>(context);
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login.jpg'), fit: BoxFit.cover),
          ),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FinalHomepage()));
                },
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 10, 10),
                child: Text('Back to Homepage')),
          ],
        ),
        Center(
            child: StreamBuilder<FirebaseUser>(
                stream: authBloc.currentUser,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) return CircularProgressIndicator();

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      /*SizedBox(
                        height: 20,
                      ),*/
                      CircleAvatar(
                        // backgroundImage: NetworkImage(
                        //     snapshot.data.photoUrl + '?width=500&height500'),
                        backgroundImage: AssetImage('assets/profileface.jpg'),
                        radius: 80,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        snapshot.data.displayName,
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        snapshot.data.email,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SignInButton(Buttons.Facebook,
                          text: "  Sign out of Facebook",
                          onPressed: () => authBloc.logout()),
                    ],
                  );
                })),
      ],
    ));
  }
}
