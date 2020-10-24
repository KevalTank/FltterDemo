import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrDatabaseList extends StatefulWidget {
  @override
  _DrDatabaseList createState() => _DrDatabaseList();
}

class _DrDatabaseList extends State<DrDatabaseList> {

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
        body: Container(
            margin: EdgeInsets.only(top: 40),
            child: FutureBuilder (
                future: dbRef.once(),
                builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    lists.clear();
                    Map<dynamic, dynamic> values = snapshot.data.value;
                    values.forEach((key, values) {
                      lists.add(values);
                      print("****************************values");
                      print(values);
                      print(lists.length);
                    });
                    return new ListView.builder(
                        shrinkWrap: true,
                        itemCount: lists.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                              Text("Name: " + lists[index]["email"]),
                              Text("Age: "+ lists[index]["mobile"]),
                              Text("Type: " +lists[index]["password"]),
                              ],
                            ),
                          );
                        });
                  }
                  return CircularProgressIndicator();
                })
        ));
  }

}
