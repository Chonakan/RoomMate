import 'package:flutter/material.dart';
import 'package:roommate_app_project/account.dart';
import 'package:roommate_app_project/store.dart';
import 'FinalHome.dart';
import 'hometips.dart';

class Searchpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Searchstate();
  }
}

class Searchstate extends State<Searchpage> {
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
                /*Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300],
                            offset: Offset(2, 1),
                            blurRadius: 5)
                      ]),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Color(0xAA353546),
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                          hintText: "Search about Furniture or Design...",
                          border: InputBorder.none),
                    ),
                  ),
                ),*/
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300],
                            offset: Offset(2, 1),
                            blurRadius: 5)
                      ]),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Color(0xAA353546),
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                          hintText: "Search about Furniture or Design...",
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                child: Container(
                  child: Icon(Icons.favorite, color: Colors.redAccent),
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/imgSearch1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(230, 10, 10, 10),
                  child: Container(
                    child: Icon(Icons.favorite, color: Colors.redAccent),
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/imgSearch7.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(230, 195, 10, 10),
                  child: Container(
                    child: Icon(Icons.favorite, color: Colors.redAccent),
                    height: 310,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/imgSearch9.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 275, 10, 10),
                child: Container(
                  child: Icon(Icons.favorite, color: Colors.redAccent),
                  height: 228,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/imgSearch5.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 520, 10, 10),
                child: Container(
                  height: 200,
                  width: 700,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/imgSearch10.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(230, 995, 10, 10),
                child: Container(
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/imgSearch3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(15, 735, 10, 10),
                  child: Container(
                    height: 185,
                    width: 198,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/imgSearch8.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(15, 935, 10, 10),
                  child: Container(
                    height: 310,
                    width: 198,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/imgSearch4.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(230, 735, 10, 10),
                child: Container(
                  height: 248,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/imgSearch6.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
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
    );
  }
}

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}
