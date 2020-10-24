import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class blog extends StatefulWidget {
  @override
  _blogState createState() => _blogState();
}

class _blogState extends State<blog> {
  final List<String> listof = [
    "Post1",
    "Post2",
    "Post3",
    "Post4",
    "Post5",
    "Post6",
    "Post7",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: MediaQuery.of(context).size.height,

        child: ListView.builder(
                itemCount: listof.length,
                itemBuilder: (context, index) => listItem(listof[index])),
        ),
      );
  }
}

class listItem extends StatelessWidget {
  String itemName;

  listItem(this.itemName);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            height: MediaQuery.of(context).size.height / 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  itemName,
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )));
  }
}
