import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:roommate_app_project/FinalHome.dart';
import 'package:roommate_app_project/models/Oftheyears_model.dart';

class Ofyear1page extends StatefulWidget {
  final imgbg;
  final topic;
  final designer;
  final data;
  final designerpic;
  final ofyears;

  Ofyear1page(
      {this.imgbg,
      this.topic,
      this.designer,
      this.data,
      this.designerpic,
      this.ofyears});

  @override
  State<StatefulWidget> createState() {
    return Ofyear1State();
  }
}

class Ofyear1State extends State<Ofyear1page> {
  List<OftheyearsModel> oftheyearsmodels = List();

  @override
  void initState() {
    super.initState();
    readAllData();
  }

  Future<void> readAllData() async {
    Firestore firestore = Firestore.instance;
    CollectionReference collectionReference =
        firestore.collection("Oftheyears");
    await collectionReference.snapshots().listen((response) {
      List<DocumentSnapshot> snapshots = response.documents;
      for (var snapshot in snapshots) {
        print('Topic = ${snapshot.data['Topic']}');

        OftheyearsModel oftheyearsModel =
            OftheyearsModel.fromMap(snapshot.data);
        setState(() {
          oftheyearsmodels.add(oftheyearsModel);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: oftheyearsmodels.length,
        itemBuilder: (BuildContext buildContext, int index) {
          return Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width * 1.872,
                width: MediaQuery.of(context).size.width * 1.872,
                child: Image.network(
                  widget.imgbg,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 50, 10, 10),
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.blueGrey),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FinalHomepage()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(45, 390, 0, 0),
                child: Container(
                    height: 345,
                    width: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(30)))),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(55, 425, 15, 0),
                child: Container(
                  height: 300,
                  width: 480,
                  child: ListView(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 10, 0),
                            child: Text(
                              widget.ofyears,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(55, 0, 10, 0),
                            child: RichText(
                                text: TextSpan(
                              text: widget.designer,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.25),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            )),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 30, 10, 0),
                            child: Text(
                              widget.topic,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.fromLTRB(30, 30, 10, 10),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  widget.designerpic,
                                ),
                              )),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                    child: RichText(
                                        text: TextSpan(
                                      text: widget.designer,
                                      style: TextStyle(
                                          color:
                                              Color(0x0017ff).withOpacity(0.4),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    )),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: RichText(
                                    text: TextSpan(
                                  text: oftheyearsmodels[index].work,
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.25),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                )),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 30, 45, 25),
                            child: Text(
                              widget.data,
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
