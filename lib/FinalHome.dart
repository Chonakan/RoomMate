import 'package:flutter/material.dart';
import 'package:roommate_app_project/hometips.dart';
import 'package:roommate_app_project/location.dart';
import 'package:roommate_app_project/story.dart';
import 'UserLogin.dart';
import 'DH.dart';
import 'package:roommate_app_project/Iwareh_community.dart';

class FinalHomepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FinalHomepage();
  }
}

class _FinalHomepage extends State<FinalHomepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
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
              title: Text('Furniture store'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Locationpage()));
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
                    MaterialPageRoute(builder: (context) => Facebookpage()));
              },
              trailing: Icon(
                Icons.perm_contact_calendar_rounded,
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
      body: DynamicHomepage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        //selectedFontSize: 15,
        //unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.home),
                iconSize: 25,
                color: Color(0xffFD7778),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FinalHomepage()));
                },
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Color(0xAA000000)),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.burst_mode_rounded),
                iconSize: 25,
                color: Color(0xffFD7778),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Communitypage()));
                },
              ),
              title: Text(
                'Iwareh',
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Color(0xAA000000)),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.post_add_rounded),
                iconSize: 25,
                color: Color(0xffFD7778),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Storypage()));
                },
              ),
              title: Text(
                'Add your story',
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Color(0xAA000000)),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.star),
                iconSize: 25,
                color: Color(0xffFD7778),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tipspage()));
                },
              ),
              title: Text(
                'Home tips',
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Color(0xAA000000)),
        ],
      ),
    );
  }
}
