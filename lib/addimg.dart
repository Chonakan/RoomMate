import 'package:flutter/material.dart';
import 'package:roommate_app_project/addimgfromphone.dart';

class Addimgpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddimgpageState();
  }
}

class AddimgpageState extends State<Addimgpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Iwareh community',
          style: TextStyle(color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PhoneGallary()));
        },
      ),
    );
  }
}
