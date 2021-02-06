import 'package:flutter/material.dart';
import 'package:roommate_app_project/comment.dart';
import 'FinalHome.dart';
import 'package:roommate_app_project/Iwareh_share.dart';
import 'hometips.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:roommate_app_project/signinfacebook.dart';
import 'package:roommate_app_project/blocs/auth_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:roommate_app_project/FinalHome.dart';
import 'package:roommate_app_project/story.dart';

class Communitypage extends StatefulWidget {
  final pic;
  final names;
  Communitypage({this.pic, this.names});
  @override
  State<StatefulWidget> createState() {
    return CommunityState();
  }
}

class CommunityState extends State<Communitypage> {
  StreamSubscription<FirebaseUser> homeStateSubscription;
  String captions, imgUrl;
  TextEditingController captioncontroller = TextEditingController();

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

  Future<void> insertvaluetoCloud() async {
    Firestore firestore = Firestore.instance;

    Map<String, dynamic> map = Map();
    map['caption'] = captions;
    map['pathImg'] = imgUrl;

    await firestore
        .collection('Iwareh_community')
        .document()
        .setData(map)
        .then((value) {
      print('Success to upload');
      MaterialPageRoute route =
          MaterialPageRoute(builder: (value) => Communitypage());
      Navigator.of(context).pushAndRemoveUntil(route, (value) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    // var authBloc = Provider.of<AuthBloc>(context);
    CollectionReference reference =
        Firestore.instance.collection('Iwareh_community');
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('IWAREH COMMUNITY'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FinalHomepage()));
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffFD7778),
          child: Icon(Icons.emoji_people),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => IwarehShare()));
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff000000),
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
                style: TextStyle(color: Color(0xAA000000)),
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
                style: TextStyle(color: Color(0xAA000000)),
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
                style: TextStyle(color: Color(0xAA000000)),
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
                style: TextStyle(color: Color(0xAA000000)),
              ),
              // backgroundColor: Color(0xAA000000)
            ),
          ],
        ),
        body: StreamBuilder(
            stream: reference.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return Center(
                    child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ));
              return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot community = snapshot.data.documents[index];
                  String picture = community['pathImg'];
                  return Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            // backgroundImage: NetworkImage(
                            //     snapshot.data.photoUrl +
                            //         '?width=500&height500'),
                            backgroundImage:
                                AssetImage('assets/profileface.jpg'),
                            radius: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Post by Chonakan Chumtap',
                            // + snapshot.data.displayName,
                            style: TextStyle(color: Colors.white60),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Row(
                            children: [
                              IconButton(
                                iconSize: 20,
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text('Are you sure'),
                                          content: Text('to delete this post?'),
                                          actions: [
                                            FlatButton(
                                              onPressed: () {
                                                snapshot.data.documents[index]
                                                    .reference
                                                    .delete()
                                                    .then((value) {
                                                  print('Success to delete');
                                                  Navigator.of(context).pop();
                                                });
                                              },
                                              child: Text(
                                                "Yes",
                                                style: TextStyle(
                                                    color: Color(0xffFD7778)),
                                              ),
                                            ),
                                            FlatButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "No",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffFD7778)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      });
                                },
                                icon: Icon(Icons.delete_forever),
                                color: Colors.white60,
                              ),
                              // IconButton(
                              //   iconSize: 20,
                              //   onPressed: () {
                              //     showDialog(
                              //         context: context,
                              //         builder: (BuildContext context) {
                              //           return Dialog(
                              //             child: ListView(
                              //               shrinkWrap: true,
                              //               children: [
                              //                 Padding(
                              //                   padding:
                              //                       const EdgeInsets.all(5.0),
                              //                   child: TextField(
                              //                     controller: captioncontroller,
                              //                     decoration: InputDecoration(
                              //                       focusedBorder:
                              //                           UnderlineInputBorder(
                              //                               borderSide: BorderSide(
                              //                                   color: Color(
                              //                                       0xff353546))),
                              //                       labelStyle: TextStyle(
                              //                           color: Colors.grey),
                              //                       labelText: "Edit caption",
                              //                     ),
                              //                     onChanged: (String string) {
                              //                       captions = string.trim();
                              //                     },
                              //                   ),
                              //                 ),
                              //                 Padding(
                              //                   padding:
                              //                       const EdgeInsets.all(8.0),
                              //                   child: FlatButton(
                              //                     onPressed: () {
                              //                       // snapshot
                              //                       //     .data
                              //                       //     .documents[index]
                              //                       //     .reference
                              //                       //     .updateData(captions);
                              //                     },
                              //                     color: Colors.black,
                              //                     child: Text(
                              //                       "Update caption",
                              //                       style: TextStyle(
                              //                           color:
                              //                               Color(0xffFD7778)),
                              //                     ),
                              //                   ),
                              //                 ),
                              //               ],
                              //             ),
                              //           );
                              //         });
                              //   },
                              //   icon: Icon(Icons.edit),
                              //   color: Colors.white60,
                              // ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Comment(
                                        commentpic: picture,
                                      )));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 300,
                            width: MediaQuery.of(context).size.width,
                            child: Image.network(
                              picture,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Text(
                              community['caption'],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                },
              );
            }));
  }
}
