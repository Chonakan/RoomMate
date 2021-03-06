import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:roommate_app_project/FinalHome.dart';
import 'dart:math';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:roommate_app_project/signinfacebook.dart';
import 'package:roommate_app_project/blocs/auth_bloc.dart';
import 'package:roommate_app_project/story.dart';

class Story1 extends StatefulWidget {
  final first;
  Story1({this.first});
  @override
  _Story1State createState() => _Story1State();
}

class _Story1State extends State<Story1> {
  String captions,
      imgurl,
      header,
      subheader,
      storytopic,
      detaillll,
      imgurl2 = "",
      imgurl3 = "",
      imgurl4 = "";
  File file;
  Future<void> chooseImage(ImageSource imageSource) async {
    try {
      var object = await ImagePicker.pickImage(
        source: imageSource,
        maxWidth: 800.0,
        maxHeight: 800.0,
      );
      setState(() {
        file = object;
      });
    } catch (e) {}
  }

  Future<void> showAlert(String title, String message) async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "OK",
                  style: TextStyle(color: Color(0xffFD7778)),
                ),
              )
            ],
          );
        });
  }

  //Upload image to firebase storage
  Future<void> uploadIMGtoStorage() async {
    Random random = Random();
    int i = random.nextInt(100000);
    FirebaseStorage firebaseStorage = FirebaseStorage.instance;
    StorageReference storageReference =
        firebaseStorage.ref().child('Catalog/coverimg $i.jpg');
    StorageUploadTask storageUploadTask = storageReference.putFile(file);

    imgurl = await (await storageUploadTask.onComplete).ref.getDownloadURL();
    print('imgUrl = $imgurl');
    insertvaluetoCloud();
  }

  //insert value to cloud firestore
  Future<void> insertvaluetoCloud() async {
    Firestore firestore = Firestore.instance;

    Map<String, dynamic> map = Map();
    map['pictopic'] = header;
    map['picinfo'] = subheader;
    map['topic'] = storytopic;
    map['details'] = detaillll;
    map['imgUrl'] = imgurl;
    map['imgUrl2'] = imgurl2;
    map['imgUrl3'] = imgurl3;
    map['imgUrl4'] = imgurl4;

    await firestore
        .collection('homepage')
        .document()
        .setData(map)
        .then((value) {
      print('Success to upload');
      MaterialPageRoute route =
          MaterialPageRoute(builder: (value) => FinalHomepage());
      Navigator.of(context).pushAndRemoveUntil(route, (value) => false);
    });
  }

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
    return Scaffold(
      backgroundColor: Color(0xffE3E3E3),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffFD7778),
        child: Icon(Icons.add_photo_alternate),
        onPressed: () {
          chooseImage(ImageSource.gallery);
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Storypage()));
                    },
                  ),
                  SizedBox(width: 210),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: GestureDetector(
                        onTap: () {
                          print('User upload');

                          if (file == null) {
                            showAlert("You didn't choose an image",
                                "Please choose an image to post");
                          } else if (header == null || header.isEmpty) {
                            showAlert("You didn't enter a header",
                                "Please enter your header");
                          } else if (subheader == null || subheader.isEmpty) {
                            showAlert("You didn't enter a subheader",
                                "Please enter your subheader");
                          } else if (storytopic == null || storytopic.isEmpty) {
                            showAlert("You didn't enter a story topic",
                                "Please enter your story topic");
                          } else if (detaillll == null || detaillll.isEmpty) {
                            showAlert("You didn't enter an details",
                                "Please enter your details");
                          } else {
                            uploadIMGtoStorage();
                          }
                        },
                        child: Container(
                          height: 35,
                          width: 90,
                          color: Color(0xff353546),
                          child: Center(
                            child: Text(
                              'Upload',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                widget.first,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff353546))),
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: "Header",
                  ),
                  onChanged: (String string) {
                    header = string.trim();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 40, 15, 0),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff353546))),
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: "Subheading or person name",
                  ),
                  onChanged: (String string) {
                    subheader = string.trim();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 40, 15, 0),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff353546))),
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: "Story topic",
                  ),
                  onChanged: (String string) {
                    storytopic = string.trim();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 40, 15, 0),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff353546))),
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: "Details",
                  ),
                  onChanged: (String string) {
                    detaillll = string.trim();
                    // imgurl2 = string.trim();
                    // imgurl3 = string.trim();
                    // imgurl4 = string.trim();
                  },
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                        height: 200,
                        width: 128,
                        // color: Colors.black26,
                        child: file == null
                            ? Container(
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
                                ),
                              )
                            : Image.file(
                                file,
                                fit: BoxFit.cover,
                              )),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Center(child: Text('Your cover image'))
                ],
              ),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(25),
              //   child: Container(
              //       height: 170,
              //       width: 350,
              //       // color: Colors.redAccent,
              //       child: file == null
              //           ? Center(
              //               child: Text(
              //               'Your cover image will in here',
              //               style: TextStyle(color: Colors.black54),
              //             ))
              //           : Image.file(
              //               file,
              //               fit: BoxFit.cover,
              //             )),
              // ),
              // Container(
              //   height: 330,
              //   width: MediaQuery.of(context).size.width,
              //   child: Image.asset(
              //     'assets/sss.gif',
              //     fit: BoxFit.cover,
              //   ),
              // ),
              // StreamBuilder<FirebaseUser>(
              //     stream: authBloc.currentUser,
              //     builder: (context, snapshot) {
              //       String userpic = snapshot.data.photoUrl;
              //       String name = snapshot.data.displayName;
              //       return Row(
              //         children: [
              //           SizedBox(
              //             width: 10,
              //           ),
              //           CircleAvatar(
              //             backgroundImage:
              //                 NetworkImage(userpic + '?width=500&height500'),
              //             // backgroundImage: AssetImage('assets/profileface.jpg'),
              //             radius: 20,
              //           ),
              //           SizedBox(
              //             width: 15,
              //           ),
              //           Text(
              //             name,
              //             // + snapshot.data.displayName,
              //             style: TextStyle(color: Color(0xff353546)),
              //           ),
              //         ],
              //       );
              //     }),
            ],
          ),
        ),
      ),
    );
  }
}
