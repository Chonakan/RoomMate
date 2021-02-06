import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:roommate_app_project/models/Homepage_model.dart';
import 'package:roommate_app_project/story1.dart';
import 'package:roommate_app_project/story2.dart';
import 'package:roommate_app_project/story3.dart';
import 'package:roommate_app_project/Iwareh_community.dart';
import 'package:roommate_app_project/FinalHome.dart';
import 'package:roommate_app_project/hometips.dart';

class Storypage extends StatefulWidget {
  @override
  _StorypageState createState() => _StorypageState();
}

class _StorypageState extends State<Storypage> {
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
        backgroundColor: Color(0xffA27F7E),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Center(
                      child: Text(
                    'Choose your topic that you want to post',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              ListView.builder(
                  itemCount: homepageModels.length,
                  itemBuilder: (BuildContext buildContext, int index) {
                    String ftopic = homepageModels[index].topic;
                    String stopic = homepageModels[index].topic2;
                    String ttopic = homepageModels[index].topic3;
                    return Column(
                      children: [
                        SizedBox(
                          height: 140,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Story1(
                                          first: ftopic,
                                        )));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 50,
                              width: 300,
                              color: Color(0xffFFDBDB),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(ftopic),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Story2(
                                          second: stopic,
                                        )));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 50,
                              width: 300,
                              color: Color(0xffFFDBDB),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(stopic),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Story3(
                                          three: ttopic,
                                        )));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 50,
                              width: 300,
                              color: Color(0xffFFDBDB),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(ttopic),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 326,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            'assets/story.gif',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    );
                  }),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(Icons.home),
                    iconSize: 25,
                    color: Color(0xffFD7778),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FinalHomepage()));
                    },
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Color(0xAA000000)),
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(Icons.burst_mode_rounded),
                    iconSize: 25,
                    color: Color(0xffFD7778),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Communitypage()));
                    },
                  ),
                  title: Text(
                    'Iwareh',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Color(0xAA000000)),
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
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Color(0xAA000000)),
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
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Color(0xAA000000)),
            ]));
  }
}
