import 'package:flutter/material.dart';
import 'package:roommate_app_project/Bedroomcatalog.dart';
import 'package:roommate_app_project/Databasemenager/Databasemenager.dart';

import 'Livingroomcatalog.dart';
import 'kitchenroomcatalog.dart';

class Bodydynamicdesign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Dynamicdesign();
  }
}

class Dynamicdesign extends State<Bodydynamicdesign> {
  List homedatalist = [];
  @override
  void initState() {
    super.initState();
    fetchDatabaseList();
  }

  fetchDatabaseList() async {
    dynamic resultant = await DatabaseManager().gethomelist();

    if (resultant == null) {
      print('Unable to retrieve');
    } else {
      setState(() {
        homedatalist = resultant;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: homedatalist.length,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 30, 200, 12),
                    child: Text(
                      homedatalist[index]['Topic'],
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff000000),
                        //fontFamily: "RobotoMono",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 295,
                    //color: Colors.red,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bedroompage()));
                                },
                                child: Container(
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
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          homedatalist[index]['imgUrl']),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(homedatalist[index]['pictopic']),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: homedatalist[index]['picinfo'],
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
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Livingroompage()));
                                },
                                child: Container(
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
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/livingroom.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text('Livingroom'),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Suggestion',
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
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Kitchenpage()));
                                },
                                child: Container(
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
                                    image: DecorationImage(
                                      image: AssetImage('assets/kitchen.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text('Kitchenroom'),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Suggestion',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            }));
  }
}
