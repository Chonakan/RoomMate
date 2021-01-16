import 'package:flutter/material.dart';
import 'package:roommate_app_project/FinalHome.dart';

import 'Tipliv1.dart';

class Livingroompage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Livingroomstate();
  }
}

class Livingroomstate extends State<Livingroompage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FinalHomepage()))),
          title: Text(
            "Livingroom Catalog and Tips",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                  child: Container(
                    height: 555,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xAAc9c9c9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(45),
                  child: Container(
                    height: 230,
                    width: 158,
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
                      image: DecorationImage(
                        image: AssetImage('assets/livingroom.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(220, 100, 10, 10),
                  child: Text(
                    'Livingroom',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(230, 140, 10, 10),
                  child: Text(
                    'Catalog',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 320, 10, 10),
                  child: Text(
                    'Livingroom Reference',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Tipliv1page()));
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 660, 20, 10),
                    child: Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xAA040038),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'ตัวอย่างการตกแต่งในสไตล์ต่างๆ',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 350, 10, 10),
                  child: Container(
                    width: double.maxFinite,
                    height: 285,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 150,
                                width: 245,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      blurRadius: 4.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image: AssetImage('assets/L1.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.5,
                              ),
                              Text('ลองแต่งห้องแบบโทนสีขาว..ดูโล่งดีค่ะ'),
                              SizedBox(
                                height: 5.5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Post by jyxjay',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 150,
                                width: 245,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      blurRadius: 4.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image: AssetImage('assets/L4.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.5,
                              ),
                              Text(
                                  'ซื้อโต๊ะไม้มาแต่งเพิ่ม สีคู่กับหมอนพอดีเลย'),
                              SizedBox(
                                height: 5.5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Post by DormFast8',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 150,
                                width: 245,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      blurRadius: 4.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image: AssetImage('assets/L3.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.black54,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.black54,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.black54,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.5,
                              ),
                              Text('ลองเปลี่ยนแนวมาเป็น minimal ครับ'),
                              SizedBox(
                                height: 5.5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Post by Emag51',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 150,
                                width: 245,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      blurRadius: 4.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image: AssetImage('assets/L5.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.black54,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.5,
                              ),
                              Text('เพิ่งย้ายบ้านครับเลยจัดแบบ Loft สะหน่อย'),
                              SizedBox(
                                height: 5.5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Post by Gunnvrs',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 150,
                                width: 245,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      blurRadius: 4.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image: AssetImage('assets/L2.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.black54,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.black54,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.black54,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.5,
                              ),
                              Text('ห้องนั่งเล่นในคอนโดเล็กๆแต่มีความสุข'),
                              SizedBox(
                                height: 5.5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Post by Jirachai jotaro',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
