import 'package:cloud_firestore/cloud_firestore.dart';

class ImageRoom {
  static const IMAGE = "Img";

  String _img;

  String get img => _img;

  ImageRoom.fromSnapShot(DocumentSnapshot snapshot) {
    Map data = snapshot.data;

    _img = data[IMAGE];
  }
}
