import 'package:flutter/material.dart';

import 'account.dart';

import 'store.dart';

class Warehousepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Warehousestate();
  }
}

class Warehousestate extends State<Warehousepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Save Image',
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
            ListTile(
              title: Text('Image warehouse'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Warehousepage()));
              },
              trailing: Icon(
                Icons.save,
                color: Color(0xAA595b83),
              ),
            ),
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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 35, 10, 10),
                  child: Container(
                    alignment: Alignment.topCenter,
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage(''))),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
