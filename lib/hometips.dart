import 'package:flutter/material.dart';
import 'FinalHome.dart';
import 'searchVer.2.dart';

class Tipspage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Tipsstate();
  }
}

class Tipsstate extends State<Tipspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Home Decoration Tips',
            style: TextStyle(color: Colors.black, fontSize: 17),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FinalHomepage()));
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
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 10, 10),
                  child: Text(
                    '5',
                    style: TextStyle(
                        fontSize: 120,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(120, 60, 10, 10),
                  child: Text(
                    'เทคนิคการจัดตกแต่งบ้าน',
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(110, 100, 10, 10),
                  child: Text(
                    'ให้ได้สัดส่วน สวยงามน่าอยู่',
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 190, 0, 0),
                  child: Center(
                    child: Container(
                        height: 300,
                        width: double.maxFinite,
                        color: Color(0xAAffe0bd),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 212,
                              child: Image.asset(
                                'assets/hometips1.jpg',
                                height: 300,
                                width: 230,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                              child: Text(
                                '1.การจัดโซนบ้านให้เป็นสัดส่วน',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 55, 10, 10),
                              child: Text(
                                '  บ้าน ควรมีการวางแผนผังของบบ้าน \nตำแหน่งของห้อง และการใช้ประโยชน์ \nของแต่ละพื้นที่ให้เหมาะสม เช่น \nห้องรับแขก  ควรอยู่ด้านหน้าสุดของบ้าน \nเพื่อใช้ต้อนรับแขกที่มาหา ส่วนห้องน้ำ \nควรอยู่ใกล้กับห้องรับแขก ให้สามารถเข้า\nใช้งานได้สะดวก  ห้องนอน ควรอยู่บริเวณ\nด้านหลังของตัวบ้าน เพื่อป้องกันเสียง\nรบกวนในขณะที่นอนหลับ ห้องครัว ควร\nอยู่บริเวณด้านหลังของตัวบ้าน \nเพื่อป้องกันกลิ่น และควันจากการ\nทำอาหาร แต่ไม่ควรสร้างติดกับห้องนอน',
                                style: TextStyle(
                                  fontSize: 12.75,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 1090, 0, 0),
                  child: Center(
                    child: Container(
                        height: 300,
                        width: double.maxFinite,
                        color: Color(0xAAbecfbc),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              right: 212,
                              child: Image.asset(
                                'assets/hometips2.jpg',
                                height: 300,
                                width: 200,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(210, 20, 10, 10),
                              child: Text(
                                '4.การเดินทางเข้าออก สะดวก',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(210, 75, 10, 10),
                              child: Text(
                                '  การ จัดวางแผนผังการเข้าออกบ้าน ให้สะดวกในการเดินทางติดต่อถึงกันสะดวก เช่น ระยะห่างจากประตูรั้วกับประตูบ้าน ระยะห่างจากตัวบ้านไปยังบริเวณอื่นนอกตัวบ้าน เช่น พื้นที่ซักล้าง ตากผ้า และครัวหรือโรงรถที่แยกอยู่ต่างหาก หรือระหว่างห้องนอนพ่อแม่กับห้องนอนลูก ระหว่างห้องครัวกับห้องกินข้าว และห้องนอนกับห้องน้ำ ฯลฯ',
                                style: TextStyle(
                                  fontSize: 12.75,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 790, 0, 0),
                  child: Center(
                    child: Container(
                        height: 300,
                        width: double.maxFinite,
                        color: Color(0xAAbae1e3),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 212,
                              child: Image.asset(
                                'assets/hometips6.jpg',
                                height: 300,
                                width: 230,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                              child: Text(
                                '3.การวางตำแหน่งเฟอร์นิเจอร์',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 55, 10, 10),
                              child: Text(
                                '  แบ่งเนื้อที่และจัดเครื่องเรือนให้สอด \nคล้องกับกิจกรรมในบ้าน และต้องไม่ทำ \nให้ผู้อยู่อาศัยรู้สึกอึดอัด การจัดวางชุด \nรับแขก โต๊ะกินข้าว การหันของโซฟา \nเก้าอี้ เข้าหาโต๊ะกลางจะช่วยกำหนด\nขอบเขตของกิจกรรมนั้นๆ \nซึ่งการเลือกใช้เครื่องเรือนควรเลือกที่ \nง่ายต่อการดูแลรักษาและทำความสะอาด \nเมื่อใช้แล้วควรจัดเก็บอุปกรณ์เครื่องใช้ \nให้เป็นที่เป็นทาง เพื่อให้บ้านดูสะอาด \nมีระเบียบ ไม่ต้องเสียเวลาในการค้นหา',
                                style: TextStyle(
                                  fontSize: 12.75,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 490, 0, 0),
                  child: Center(
                    child: Container(
                        height: 300,
                        width: double.maxFinite,
                        color: Color(0xAAbdbdbd),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              right: 212,
                              child: Image.asset(
                                'assets/hometips5.jpg',
                                height: 300,
                                width: 200,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(210, 20, 10, 10),
                              child: Text(
                                '2.แสงจากการวางตำแหน่ง\n   ดวงโคมในพื้นที่ต่างๆ',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(210, 75, 10, 10),
                              child: Text(
                                '  การ วางตำแหน่งดวงโคมในพื้นที่ต่างๆ ต้องคำนึงถึงแสงสว่างสำหรับการใช้งาน ที่ต้องมีให้พอเพียงต่อการใช้งานอะไรก็ตามที่จะเกิดในบริเวณนั้นๆ ไม่ว่าจะเป็นไฟฝังเพดาน โคมแขวนหรือโคมตั้งโต๊ะ-ตั้งพื้น หรือแม้แต่การแบ่งกลุ่มการเปิดปิดสวิตช์ไฟฟ้า จึงเสมือนเป็นการจัดกลุ่มความสว่างให้สอดคล้องกับการใช้สอยที่จะเกิดใน พื้นที่นั้นๆ ไปในตัว',
                                style: TextStyle(
                                  fontSize: 12.75,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 1390, 0, 0),
                  child: Center(
                    child: Container(
                        height: 300,
                        width: double.maxFinite,
                        color: Color(0xAAffb3b3),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 212,
                              child: Image.asset(
                                'assets/hometips4.jpg',
                                height: 300,
                                width: 230,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                              child: Text(
                                '3.เพดานฝ้าช่วยกำหนดขอบเขต\n   ของพื้นที่ที่เห็นได้ชัดเจน',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 75, 10, 10),
                              child: Text(
                                '  ลักษณะ ของฝ้าเพดานก็ช่วยในการ\nกำหนดขอบเขตของพื้นที่ในบ้านให้เห็น\nได้ชัดเจน นอกจากนี้ยังเป็นเสมือน\nเส้นกรอบให้การวางตำแหน่งโคมไฟฟ้า\nทำได้ง่ายขึ้นด้วย ',
                                style: TextStyle(
                                  fontSize: 12.75,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
