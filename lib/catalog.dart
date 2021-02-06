import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  final img;
  final img2;
  final img3;
  final img4;
  final catalog;
  final detail;
  final topic;
  final heads;
  final infos;

  Catalog(
      {this.img,
      this.catalog,
      this.detail,
      this.topic,
      this.heads,
      this.infos,
      this.img2,
      this.img3,
      this.img4});

  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          widget.catalog,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 30,
                        ),
                        RichText(
                            text: TextSpan(
                          text: (widget.infos),
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 18),
                        )),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'You can scorll pictures',
                      style: TextStyle(fontSize: 12, color: Colors.brown[300]),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.hdr_strong_sharp),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.maxFinite,
                  height: 400,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Row(
                      children: [
                        Container(
                          height: 400,
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                            widget.img,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Catalog()));
                          },
                          child: Container(
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child: Image.network(
                              widget.img2,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Catalog()));
                          },
                          child: Container(
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child: Image.network(
                              widget.img3,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Catalog()));
                          },
                          child: Container(
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child: Image.network(
                              widget.img4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(150, 0, 0, 10),
                      child: Column(
                        children: [
                          Wrap(
                            children: [
                              Text(
                                widget.heads,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff353546)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Wrap(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                widget.catalog + "  " + widget.infos,
                                style: TextStyle(
                                  color: Color(0xffFD7778),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(widget.detail),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
