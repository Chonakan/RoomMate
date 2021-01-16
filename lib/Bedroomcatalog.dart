import 'package:flutter/material.dart';
import 'package:roommate_app_project/FinalHome.dart';
import 'package:roommate_app_project/Tipbed1.dart';

class Bedroompage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Bedroomstate();
  }
}

class Bedroomstate extends State<Bedroompage> {
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
            "Bedroom Catalog and Tips",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                  child: Container(
                    height: 555,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xAAffe1bf),
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
                        image: AssetImage('assets/bedroom.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(220, 100, 10, 10),
                  child: Text(
                    'Bedroom',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
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
                    'Bedroom Reference',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Tipbed1page()));
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 660, 20, 10),
                    child: Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xAAe09f53),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'Tips ในการจัดห้องนอนให้ดียิ่งขึ้น',
                          style: TextStyle(fontSize: 20),
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
                                    image: AssetImage('assets/B3.jpg'),
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
                              Text('การใช้สีที่ฉูดฉาดช่วยให้ห้องดูสดใส'),
                              SizedBox(
                                height: 5.5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Post by Chonakan Chumtap',
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
                                    image: AssetImage('assets/B4.png'),
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
                              Text('ห้องสีขาวช่วยทำให้ห้องดูกว้าง'),
                              SizedBox(
                                height: 5.5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Post by Pon morin',
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
                                    image: AssetImage('assets/B2.jpg'),
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
                              Text('ห้องสีเขียวเพิ่มความเป็นธรรมชาติ'),
                              SizedBox(
                                height: 5.5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Post by Chaiwoot Iamaram',
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
                                    image: AssetImage('assets/B5.jpg'),
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
                              Text('จัดแสงในห้องนอนทำให้ห้องดูน่ารักได้นะ'),
                              SizedBox(
                                height: 5.5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Post by jxyjay',
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
                                    image: AssetImage('assets/B7.jpg'),
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
                              Text('จัดห้องแนวเจ้าหญิงด้วยสีชมพู'),
                              SizedBox(
                                height: 5.5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Post by Saris zoom',
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
