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

class Story2 extends StatefulWidget {
  final second;
  Story2({this.second});
  @override
  _Story2State createState() => _Story2State();
}

class _Story2State extends State<Story2> {
  String imgurl, designer, subheader, storytopic, detaillll, imgurl2 = "";

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
    map['picinfo'] = designer;
    map['year'] = subheader;
    map['pictopic'] = storytopic;
    map['details'] = detaillll;
    map['imgUrl'] = imgurl;
    map['designerpic'] = imgurl2;

    await firestore
        .collection('homepage2')
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
                          } else if (designer == null || designer.isEmpty) {
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
                widget.second,
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
                    labelText: "Story topic or Trand name",
                  ),
                  onChanged: (String string) {
                    designer = string.trim();
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
                    labelText: "Subheading",
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
                    labelText: "Designer or Username",
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
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
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
                        height: 5,
                      ),
                      Center(child: Text('Your cover image'))
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Container(
                            height: 150,
                            width: 150,
                            child: file == null
                                ? CircleAvatar(
                                    radius: 70,
                                    backgroundColor: Color(0xAA363636),
                                  )
                                : Image.file(
                                    file,
                                    fit: BoxFit.cover,
                                  )),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(child: Text('Your person image'))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
