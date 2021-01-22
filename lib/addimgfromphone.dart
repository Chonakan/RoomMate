import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart ' as Path;

class PhoneGallary extends StatefulWidget {
  @override
  _PhoneGallaryState createState() => _PhoneGallaryState();
}

class _PhoneGallaryState extends State<PhoneGallary> {
  CollectionReference imgRef;
  //firebase_storage.StorageReference ref;

  List<File> _image = [];
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text('Add your Images'),
        actions: [
          FlatButton(
              onPressed: () {},
              child: Text(
                'Upload',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: GridView.builder(
          itemCount: _image.length + 1,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return index == 0
                ? Center(
                    child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        chooseImage();
                      },
                    ),
                  )
                : Container(
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: FileImage(_image[index - 1]),
                            fit: BoxFit.cover)),
                  );
          }),
    );
  }

  chooseImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image.add(File(pickedFile?.path));
    });
    if (pickedFile.path == null) retriewLostData();
  }

  Future<void> retriewLostData() async {
    final LostData response = await picker.getLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      setState(() {
        _image.add(File(response.file.path));
      });
    } else {
      print(response.file);
    }
  }

  /*Future uploadFile() async {
    for (var img in _image) {
      ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('W_${Path.basename(img.path)}');
      await ref.putFile(img).whenComplete(() async {

      });
    }
  }*/
}
