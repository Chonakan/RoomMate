import 'package:flutter/material.dart';
import 'package:roommate_app_project/Iwareh_community.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Comment extends StatefulWidget {
  final commentpic;
  Comment({this.commentpic});
  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  String usercomment;

  final _comments = TextEditingController();

  Future<void> insertcomment() async {
    Firestore firestore = Firestore.instance;

    Map<String, dynamic> map = Map();
    map['commentdetail'] = usercomment;

    await firestore.collection('comment').document().setData(map).then((value) {
      print('Success to upload');
      _comments.clear();
      // MaterialPageRoute route =
      //     MaterialPageRoute(builder: (value) => Co());
      // Navigator.of(context).pushAndRemoveUntil(route, (value) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white54,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Communitypage()));
                      },
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    widget.commentpic,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  ClipRRect(
                    // borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.white,
                      child: StreamBuilder(
                          stream: Firestore.instance
                              .collection("comment")
                              .snapshots(),
                          builder: (context, snapshot) {
                            return ListView.builder(
                              itemCount: snapshot.data.documents.length,
                              itemBuilder: (context, index) {
                                DocumentSnapshot _community =
                                    snapshot.data.documents[index];
                                String com = _community['commentdetail'];
                                return Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ListTile(
                                      // tileColor: Color(0xAAfffffff),
                                      leading: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/profileface.jpg'),
                                        // backgroundImage: AssetImage('assets/profileface.jpg'),
                                        radius: 20,
                                      ),
                                      title: Text(
                                        com,
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                      subtitle: Text(
                                        'Chonakan Chumtap',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white54),
                                      ),
                                      dense: true,
                                      trailing: Icon(
                                        Icons.comment_sharp,
                                        color: Color(0xffFD7778),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 210, 0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: TextField(
                            controller: _comments,
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff353546))),
                              labelStyle: TextStyle(color: Colors.grey),
                              // helperText: 'Click icon to send',
                              // helperStyle: TextStyle(fontSize: 10),
                              hintText: 'Click icon to post',
                              // labelText: "Comment",
                              icon: GestureDetector(
                                onTap: () {
                                  print('User upload');
                                  insertcomment();
                                },
                                child: Icon(
                                  Icons.send_rounded,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            onChanged: (String string) {
                              usercomment = string.trim();
                            },
                          ),
                        ),
                      ),
                    ),
                  ),

                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(10),
                  //   child: Container(
                  //     height: MediaQuery.of(context).size.height * 0.35,
                  //     width: MediaQuery.of(context).size.width,
                  //     color: Colors.redAccent,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
