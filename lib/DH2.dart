import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:roommate_app_project/oftheyear1.dart';

class Dynamic2Homepage extends StatefulWidget {
  @override
  _Dynamic2HomepageState createState() => _Dynamic2HomepageState();
}

class _Dynamic2HomepageState extends State<Dynamic2Homepage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Firestore.instance.collection("homepage2").snapshots(),
        builder: (context, snapshot) {
          return Container(
            width: double.maxFinite,
            height: 295,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                DocumentSnapshot homepage = snapshot.data.documents[index];
                String bg = homepage['imgUrl'];
                String head = homepage['pictopic'];
                String name = homepage['picinfo'];
                String detail = homepage['details'];
                String person = homepage['designerpic'];
                String years = homepage['year'];
                return Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Ofyear1page(
                                    imgbg: bg,
                                    topic: head,
                                    designer: name,
                                    data: detail,
                                    designerpic: person,
                                    ofyears: years,
                                  )));
                        },
                        child: Container(
                          height: 200,
                          width: 128,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xAA363636),
                                offset: const Offset(3.0, 4.0),
                                blurRadius: 5.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(22),
                            image: DecorationImage(
                              image: NetworkImage(bg),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                detail,
                                style: TextStyle(fontSize: 0.1),
                              ),
                              Text(
                                years,
                                style: TextStyle(fontSize: 0.1),
                              ),
                              Text(
                                person,
                                style: TextStyle(fontSize: 0.1),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(head),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                          text: TextSpan(
                        text: (name),
                        style: TextStyle(color: Colors.black.withOpacity(0.4)),
                      )),
                    ],
                  ),
                );
              },
            ),
          );
        });
  }
}
