import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:roommate_app_project/account.dart';
import 'package:roommate_app_project/searchservice.dart';
import 'package:roommate_app_project/store.dart';
import 'FinalHome.dart';

import 'hometips.dart';

class SearchFirebase extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchFirebase();
  }
}

class _SearchFirebase extends State<SearchFirebase> {
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    _searchController.addListener(_onSearchChanged);
    super.initState();
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  _onSearchChanged() {
    print(_searchController.text);
  }

  var queryResultSet = [];
  var tempSearchStore = [];

  initiateSearch(value) {
    if (value.length == 0) {
      setState(() {
        queryResultSet = [];
        tempSearchStore = [];
      });
    }

    var capitalizedValue =
        value.substring(0, 1).toUpperCase() + value.substring(1);

    if (queryResultSet.length == 0 && value.length == 1) {
      SearchService().searchByname(value).then((QuerySnapshot docs) {
        for (int i = 0; i < docs.documents.length; ++i) {
          queryResultSet.add(docs.documents[i].data);
        }
      });
    } else {
      tempSearchStore = [];
      queryResultSet.forEach((element) {
        if (element['TypeofRoom'].startsWith(capitalizedValue)) {
          setState(() {
            tempSearchStore.add(element);
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          /*TextField(
            controller: _searchcontroller,
            decoration: InputDecoration(prefixIcon: Icon(Icons.home)),
          ),*/
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Column(
              children: <Widget>[
                TextField(
                  onChanged: (val) {
                    initiateSearch(val);
                  },
                  decoration: InputDecoration(
                      prefixIcon: IconButton(
                        color: Colors.grey,
                        icon: Icon(Icons.arrow_back_ios),
                        iconSize: 20,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      contentPadding: EdgeInsets.only(left: 25),
                      hintText: 'Search about Furniture and design .....',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          /*Stack(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Livsearch(),
                    Bedsearch(),
                    Fursearch(),
                    //addData(),
                  ],
                ),
              )
            ],
          ),*/
          GridView.count(
              padding: EdgeInsets.only(left: 10, right: 10),
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              primary: false,
              shrinkWrap: true,
              children: tempSearchStore.map((elemaent) {
                return buildResultCard(elemaent);
              }).toList()),
          /*Stack(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Livsearch(),
                    Bedsearch(),
                    Fursearch(),
                    //addData(),
                  ],
                ),
              )
            ],
          ),*/
        ],
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchFirebase()));
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
    );
  }
}

Widget buildResultCard(data) {
  return /*Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), color: Colors.black),
    child: Container(
      child: Center(
        child: Text(
          data['TypeofRoom'],
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );*/
      Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
    elevation: 2.0,
    child: Container(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(data['imgURL']),
            ),
          ),
        ),
        //child: Image.asset(['imgURL']),
        /*child: Text(
          data['TypeofRoom'],
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),*/
      ),
    ),
  );
}
