import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Dynamic3Homepage extends StatefulWidget {
  @override
  _Dynamic3HomepageState createState() => _Dynamic3HomepageState();
}

class _Dynamic3HomepageState extends State<Dynamic3Homepage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Firestore.instance.collection("homepage3").snapshots(),
        builder: (context, snapshot) {
          return Container(
            width: double.maxFinite,
            height: 295,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10),
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                DocumentSnapshot homepage = snapshot.data.documents[index];
                return Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 130,
                        width: 130,
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
                            image: NetworkImage(homepage['imgUrl']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(homepage['pictopic']),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                          text: TextSpan(
                        text: (homepage['picinfo']),
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
