import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/DoctorList.dart';
import 'package:flutter_app/DrDatabaseList.dart';
import 'package:flutter_app/blog.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final listof = List<String>.generate(10, (i) => "Category $i");

  /*final List<String> listof = [
    "Post1",
    "Post2",
    "Post3",
    "Post4",
    "Post5",
    "Post6",
    "Post7",
  ];*/
  final List<String> specialties = [
    "Dentist",
    "General Physician",
    "Pediatrician",
    "Ayurveda",
    "Orthopedist",
    "Gynecologist/obstetrician",
    "Gynecologist",
    "Homeopath",
    "Cardiologist",
    "General Surgeon",
    "Ophthalmologist",
    "Ophthalmologist/ Eye Surgeon",
    "Dermatologist/cosmetologist",
    "Spa",
    "Dermatologist",
    "Oral Surgeon",
    "Physiotherapist",
    "Dental Surgeon",
    "Urologist",
    "Ear-nose-throat (ent) Specialist",
    "Orthodontist",
    "Diabetologist",
    "Psychiatrist",
    "Endodontist"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView.builder(
              itemCount: specialties.length,
              itemBuilder: (context, index) => listItem(specialties[index])),
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
    //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    //margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    child:GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DroctorList()),
        );
      },
      child: InkWell(

      child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          //height: MediaQuery.of(context).size.height / 5,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Icon(
                Icons.account_circle,
                color: Colors.deepPurpleAccent,
                size: 40,
            ),

            Text("      ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
              Text(
                itemName,
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 20,
                ),
              ),
              ],
            )),),
  ));

  }
}
