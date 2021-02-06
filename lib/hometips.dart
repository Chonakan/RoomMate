import 'package:flutter/material.dart';
import 'package:roommate_app_project/models/HomeTips_model.dart';
import 'FinalHome.dart';
import 'package:roommate_app_project/Iwareh_community.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:roommate_app_project/story.dart';

class Tipspage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Tipsstate();
  }
}

class Tipsstate extends State<Tipspage> {
  List<HometipsModel> hometipsModels = List();

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
        HometipsModel hometipsModel = HometipsModel.fromMap(snapshot.data);
        setState(() {
          hometipsModels.add(hometipsModel);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Home Decoration Tips',
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.home),
                iconSize: 25,
                color: Color(0xffFD7778),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FinalHomepage()));
                },
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
              // backgroundColor: Color(0xAA000000)
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.burst_mode_rounded),
                iconSize: 25,
                color: Color(0xffFD7778),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Communitypage()));
                },
              ),
              title: Text(
                'Iwareh',
                style: TextStyle(color: Colors.black),
              ),
              // backgroundColor: Color(0xAA000000)
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.post_add_rounded),
                iconSize: 25,
                color: Color(0xffFD7778),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Storypage()));
                },
              ),
              title: Text(
                'Add your story',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.star),
                iconSize: 25,
                color: Color(0xffFD7778),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tipspage()));
                },
              ),
              title: Text(
                'Home tips',
                style: TextStyle(color: Colors.black),
              ),
              // backgroundColor: Color(0xAA000000)
            ),
          ],
        ),
        body: StreamBuilder(
            stream: Firestore.instance.collection("hometips").snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return Center(
                    child: CircularProgressIndicator(
                  backgroundColor: Colors.black,
                ));
              return Stack(
                children: <Widget>[
                  ListView.builder(
                      itemCount: hometipsModels.length,
                      itemBuilder: (BuildContext buildContext, int index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  hometipsModels[index].tipstopic1,
                                  style: TextStyle(
                                      fontSize: 120,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          hometipsModels[index].tipstopic2,
                                          style: TextStyle(
                                              fontSize: 23,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          hometipsModels[index].tipstopic3,
                                          style: TextStyle(
                                              fontSize: 23,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        );
                      }),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 180, 0, 0),
                    child: ListView.builder(
                        itemCount: snapshot.data.documents.length,
                        itemBuilder: (context, index) {
                          DocumentSnapshot homepage =
                              snapshot.data.documents[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 300,
                                  width: double.maxFinite,
                                  color: Color(0xAAffdabf),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: 212,
                                        child: Image.network(
                                          homepage['imgUrl'],
                                          height: 300,
                                          width: 230,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 20, 10, 10),
                                        child: Text(
                                          homepage['topicdetail'],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            10, 55, 180, 10),
                                        child: Text(
                                          homepage['Details'],
                                          style: TextStyle(
                                            fontSize: 12.75,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                    height: 300,
                                    width: double.maxFinite,
                                    color: Color(0xAAd4d4d4),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                        right: 212,
                                        child: Image.network(
                                          homepage['imgUrl2'],
                                          height: 300,
                                          width: 200,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            210, 20, 10, 10),
                                        child: Text(
                                          homepage['topicdetail2'],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            210, 75, 10, 10),
                                        child: Text(
                                          homepage['Details2'],
                                          style: TextStyle(
                                            fontSize: 12.75,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ]))
                              ],
                            ),
                          );
                        }),
                  )
                ],
              );
            }));
  }
}
