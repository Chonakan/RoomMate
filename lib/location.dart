import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:roommate_app_project/FinalHome.dart';
import 'package:roommate_app_project/Iwareh_community.dart';
import 'package:roommate_app_project/hometips.dart';
import 'package:roommate_app_project/map.dart';

class Locationpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LocationState();
  }
}

class LocationState extends State<Locationpage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Furniture store',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: StreamBuilder(
            stream: Firestore.instance.collection("LocationStore").snapshots(),
            builder: (context, snapshot) {
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot locations = snapshot.data.documents[index];
                    var lati = locations['lat'];
                    var longi = locations['long'];
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: ListTile(
                            tileColor: Color(0xAAffffff),
                            leading:
                                Icon(Icons.star_rate, color: Color(0xAAF9C700)),
                            title: Text(
                              locations['name'],
                              style: TextStyle(fontSize: 18),
                            ),
                            subtitle: new RichText(
                              text: new TextSpan(
                                text: locations['time'],
                                style: TextStyle(color: Colors.black54),
                                children: <TextSpan>[
                                  new TextSpan(
                                      text: lati.toString(),
                                      style: new TextStyle(fontSize: 0.1)),
                                  new TextSpan(
                                      text: longi.toString(),
                                      style: new TextStyle(fontSize: 0.1)),
                                ],
                              ),
                            ),
                            //Text(locations['time']),
                            dense: true,
                            trailing: Icon(
                              Icons.location_pin,
                              color: Colors.redAccent,
                            ),

                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Mapstore(
                                            latt: lati,
                                            lng: longi,
                                          )));
                            },
                          ),
                        ),
                      ],
                    );
                  });
            }));
  }
}
