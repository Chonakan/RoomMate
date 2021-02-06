import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'catalog.dart';
import 'package:roommate_app_project/models/Homepage_model.dart';
import 'DH2.dart';
import 'DH3.dart';

class DynamicHomepage extends StatefulWidget {
  @override
  _DynamicHomepageState createState() => _DynamicHomepageState();
}

class _DynamicHomepageState extends State<DynamicHomepage> {
  List<HomepageModel> homepageModels = List();

  @override
  void initState() {
    super.initState();
    readAllData();
  }

  Future<void> readAllData() async {
    Firestore firestore = Firestore.instance;
    CollectionReference collectionReference = firestore.collection("hometopic");
    await collectionReference.snapshots().listen((response) {
      List<DocumentSnapshot> snapshots = response.documents;
      for (var snapshot in snapshots) {
        print('Topic = ${snapshot.data['Topic']}');

        HomepageModel homepageModel = HomepageModel.fromMap(snapshot.data);
        setState(() {
          homepageModels.add(homepageModel);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: Firestore.instance.collection("homepage").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(
                  child: CircularProgressIndicator(
                backgroundColor: Colors.black,
              ));
            return Stack(
              children: <Widget>[
                ListView.builder(
                    itemCount: homepageModels.length,
                    itemBuilder: (BuildContext buildContext, int index) {
                      return Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 30, 200, 15),
                            child: Text(
                              homepageModels[index].topic,
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            height: 295,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.documents.length,
                              itemBuilder: (context, index) {
                                DocumentSnapshot homepage =
                                    snapshot.data.documents[index];
                                String imgbg = homepage['imgUrl'];
                                String imgbg2 = homepage['imgUrl2'];
                                String imgbg3 = homepage['imgUrl3'];
                                String imgbg4 = homepage['imgUrl4'];
                                String topiccatalog = homepage['pictopic'];
                                String info = homepage['picinfo'];
                                String topics = homepage['topic'];
                                String details = homepage['details'];
                                String head = homepage['topic'];
                                return Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Catalog(
                                                        img: imgbg,
                                                        catalog: topiccatalog,
                                                        detail: details,
                                                        topic: topics,
                                                        heads: head,
                                                        infos: info,
                                                        img2: imgbg2,
                                                        img3: imgbg3,
                                                        img4: imgbg4,
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
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            image: DecorationImage(
                                              image: NetworkImage(imgbg),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(topics,
                                                  style:
                                                      TextStyle(fontSize: 0.1)),
                                              Text(details,
                                                  style:
                                                      TextStyle(fontSize: 0.1)),
                                              Text(homepage['imgUrl2'],
                                                  style:
                                                      TextStyle(fontSize: 0.1)),
                                              Text(homepage['imgUrl3'],
                                                  style:
                                                      TextStyle(fontSize: 0.1)),
                                              Text(homepage['imgUrl4'],
                                                  style:
                                                      TextStyle(fontSize: 0.1)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 13,
                                      ),
                                      Text(topiccatalog),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      RichText(
                                          text: TextSpan(
                                        text: (homepage['picinfo']),
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.4)),
                                      )),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 30, 100, 15),
                            child: Text(
                              homepageModels[index].topic2,
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Dynamic2Homepage(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 30, 90, 15),
                            child: Text(
                              homepageModels[index].topic3,
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Dynamic3Homepage(),
                          SizedBox(
                            height: 20,
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.fromLTRB(25, 30, 100, 15),
                          //   child: Text(
                          //     homepageModels[index].topic4,
                          //     style: TextStyle(
                          //       fontSize: 25,
                          //       color: Color(0xff000000),
                          //       fontWeight: FontWeight.bold,
                          //     ),
                          //   ),
                          // ),
                        ],
                      );
                    }),
              ],
            );
          }),
    );
  }
}
