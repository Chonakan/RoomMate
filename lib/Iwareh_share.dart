import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:roommate_app_project/Iwareh_community.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:math';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:roommate_app_project/signinfacebook.dart';
import 'package:roommate_app_project/blocs/auth_bloc.dart';
import 'dart:async';

class IwarehShare extends StatefulWidget {
  @override
  _IwarehShareState createState() => _IwarehShareState();
}

class _IwarehShareState extends State<IwarehShare> {
  String captions, imgUrl;

  //Image picker
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

  //Alert when user don't add image
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
        firebaseStorage.ref().child('ImageCommunity/iwareh $i.jpg');
    StorageUploadTask storageUploadTask = storageReference.putFile(file);

    imgUrl = await (await storageUploadTask.onComplete).ref.getDownloadURL();
    print('imgUrl = $imgUrl');
    insertvaluetoCloud();
  }

  //insert value to cloud firestore
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
    var authBloc = Provider.of<AuthBloc>(context);
    return Scaffold(
      backgroundColor: Colors.black,
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
                      color: Colors.white54,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Communitypage()));
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
                          } else if (captions == null || captions.isEmpty) {
                            showAlert("You didn't enter an caption",
                                "Please enter your caption");
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
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff353546))),
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: "What do you want to share?",
                    icon: Icon(
                      Icons.add_comment,
                      color: Colors.grey,
                    ),
                  ),
                  onChanged: (String string) {
                    captions = string.trim();
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                    height: 350,
                    width: 350,
                    child: file == null
                        ? Center(
                            child: Text(
                            'Your image will in here',
                            style: TextStyle(color: Colors.white54),
                          ))
                        : Image.file(
                            file,
                            fit: BoxFit.cover,
                          )),
              ),
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
