import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManager {
  final CollectionReference databaselist =
      Firestore.instance.collection('homepagedatalist');

  Future<void> createData(String topic, String pictopic, String picinfo,
      String imgurl, String uid) async {
    return await databaselist.document(uid).setData({
      'Topic': topic,
      'pictopic': pictopic,
      'picinfo': picinfo,
      'imgUrl': imgurl,
    });
  }

  Future gethomelist() async {
    List itemsList = [];
    try {
      await databaselist.getDocuments().then((querySnapshot) {
        querySnapshot.documents.forEach((element) {
          itemsList.add(element.data);
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
