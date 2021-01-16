import 'package:flutter/material.dart';
import 'package:roommate_app_project/store.dart';

class Accountpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Accountstate();
  }
}

class Accountstate extends State<Accountpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Chaiwoot Iam-aram',
          style: TextStyle(color: Colors.redAccent, fontSize: 17),
        ),
        centerTitle: true,
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
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/login.jpg'), fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/tbprofile.jpg'),
                  radius: 70,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 250, 10, 10),
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 20, 320, 130),
              child: Container(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                decoration: new BoxDecoration(
                  color: Color(0xAA353546),
                  shape: BoxShape.circle,
                ),
              ),
              height: 200,
              width: 400,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(110, 283, 10, 10),
            child: Text('Chaiwoot Iam-aram',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 340, 10, 10),
            child: Text('Email: ',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(110, 340, 10, 10),
            child: Text('6121910836@cdti.ac.th ',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 370, 10, 10),
            child: Text('Password:',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(140, 370, 10, 10),
            child: Text('******************** ',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 400, 10, 10),
            child: Text('Mobile Phone:',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(165, 400, 10, 10),
            child: Text('099-191-1899',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                )),
          ),
        ],
      ),
    );
  }
}
