import 'package:flutter/material.dart';
import 'package:roommate_app_project/location.dart';
import 'FinalHome.dart';
import 'account.dart';
import 'hometips.dart';
import 'search.dart';

class Storepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Storestate();
  }
}

class Storestate extends State<Storepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Furniture store',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Drawerheader.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Text(''),
            ),
            /*ListTile(
              title: Text('Image warehouse'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Warehousepage()));
              },
              trailing: Icon(
                Icons.save,
                color: Color(0xAA595b83),
              ),
            ),*/
            ListTile(
              title: Text('Furniture store'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Storepage()));
              },
              trailing: Icon(
                Icons.store_mall_directory,
                color: Color(0xAA595b83),
              ),
            ),
            ListTile(
              title: Text('Account'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Accountpage()));
              },
              trailing: Icon(
                Icons.person,
                color: Color(0xAA595b83),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.of(context).pop();
              },
              trailing: Icon(
                Icons.home,
                color: Color(0xAA595b83),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xAAFFFFFF),
        //selectedFontSize: 15,
        //unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.home),
                iconSize: 25,
                color: Color(0xAAa11300),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FinalHomepage()));
                },
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Color(0xAA000000)),
              ),
              backgroundColor: Color(0xAA000000)),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.search),
                iconSize: 25,
                color: Color(0xAAa11300),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Searchpage()));
                },
              ),
              title: Text(
                'Search',
                style: TextStyle(color: Color(0xAA000000)),
              ),
              backgroundColor: Color(0xAA000000)),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.star),
                iconSize: 25,
                color: Color(0xAAa11300),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tipspage()));
                },
              ),
              title: Text(
                'Home tips',
                style: TextStyle(color: Color(0xAA000000)),
              ),
              backgroundColor: Color(0xAA000000)),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(50, 50, 10, 0),
            child: Text(
              'Recommend '
              'Funiture store and Location',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(30, 50, 30, 10),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xAA363636),
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(45),
                    image: DecorationImage(
                      image: AssetImage('assets/ikea.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(295, 190, 10, 10),
                child: IconButton(
                  icon: Icon(Icons.location_pin),
                  iconSize: 30,
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Locationpage()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 290, 30, 10),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xAA363636),
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(45),
                    image: DecorationImage(
                      image: AssetImage('assets/sbdesign.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(295, 430, 10, 10),
                child: IconButton(
                  icon: Icon(Icons.location_pin),
                  iconSize: 30,
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Locationpage()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 530, 30, 10),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xAA363636),
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(45),
                    image: DecorationImage(
                      image: AssetImage('assets/index.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(295, 670, 10, 10),
                child: IconButton(
                  icon: Icon(Icons.location_pin),
                  iconSize: 30,
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Locationpage()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 770, 30, 10),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xAA363636),
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(45),
                    image: DecorationImage(
                      image: AssetImage('assets/boonthawon.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(295, 910, 10, 10),
                child: IconButton(
                  icon: Icon(Icons.location_pin),
                  iconSize: 30,
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Locationpage()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 1010, 30, 10),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xAA363636),
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(45),
                    image: DecorationImage(
                      image: AssetImage('assets/jysk.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(295, 1150, 10, 10),
                child: IconButton(
                  icon: Icon(Icons.location_pin),
                  iconSize: 30,
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Locationpage()));
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
