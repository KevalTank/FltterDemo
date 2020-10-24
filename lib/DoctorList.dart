import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/BookApt.dart';
import 'package:flutter_app/DrProfile.dart';
import 'package:url_launcher/url_launcher.dart';

class DroctorList extends StatefulWidget {
  @override
  _DroctorList createState() => _DroctorList();
}

class _DroctorList extends State<DroctorList> {
  //final listof = List<String>.generate(20, (i) => "Doctor Name");

  final dbRef = FirebaseDatabase.instance.reference().child("DrList");

  List<Map<dynamic, dynamic>> lists = [];

  /*final List<String> listof = [
    "Post1",
    "Post2",
    "Post3",
    "Post4",
    "Post5",
    "Post6",
    "Post7",
  ];*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: FutureBuilder(
              future: dbRef.once(),
              builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
                if (snapshot.hasData) {
                  lists.clear();
                  Map<dynamic, dynamic> values = snapshot.data.value;
                  values.forEach((key, values) {
                    lists.add(values);
                  });
                  return new ListView.builder(
                      shrinkWrap: true,
                      itemCount: lists.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          //margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DrProfile(
                                        profileDetails: index,
                                        snapshot: snapshot),
                                  ));
                            },
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(
                                    Icons.account_circle,
                                    color: Colors.deepPurpleAccent,
                                    size: 40,
                                  ),
                                  title: Text("Dr. " + lists[index]["name"],
                                      style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.left),
                                  subtitle: Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        //mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            lists[index]["specialization"],
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "  ",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 5,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            lists[index]["expYears"] +
                                                " Years Experience",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Container(
                                              padding: EdgeInsets.all(7),
                                              child: Row(
                                                children: [
                                                  GestureDetector(
                                                    onTap: () => launch('tel:' +
                                                        lists[index]["mobile"]),
                                                    //onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => blog())),
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 5,
                                                          horizontal: 10),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors
                                                                  .deepPurple),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: Text("Call Now",
                                                          style: TextStyle(
                                                            color: Colors
                                                                .deepPurpleAccent,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                          textAlign:
                                                              TextAlign.left),
                                                    ),
                                                  ),
                                                  Text("      ",
                                                      style: TextStyle(
                                                        color:
                                                            Colors.deepPurple,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      textAlign:
                                                          TextAlign.left),
                                                  GestureDetector(
                                                    //onTap: () => launch("tel://79905163306"),
                                                    onTap: () => Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    BookApt())),
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 5,
                                                          horizontal: 10),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors
                                                                  .deepPurple),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: Text("Book Now",
                                                          style: TextStyle(
                                                            color: Colors
                                                                .deepPurpleAccent,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                          textAlign:
                                                              TextAlign.left),
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ],
                                      )),
                                  trailing: Container(
                                      child: new Column(
                                    //crossAxisAlignment: CrossAxisAlignment.space,
                                    //mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.orangeAccent,
                                        size: 30,
                                      ),
                                      Text(
                                        "5",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.left,
                                      )
                                    ],
                                  )),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                }
                return CircularProgressIndicator();
              })),
    );
  }
}
