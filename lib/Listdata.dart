import 'package:cloud_firestore/cloud_firestore.dart';

class ImageDesign {
  final String name;
  final String url;

  ImageDesign({
    this.name,
    this.url,
  });

  factory ImageDesign.fromDocument(DocumentSnapshot doc) {
    return ImageDesign(name: doc['design'], url: doc['photoUrl']);
  }
}
