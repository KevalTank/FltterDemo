import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/BookApt.dart';
import 'package:url_launcher/url_launcher.dart';

class DrProfile extends StatefulWidget {
  final int profileDetails;
  final AsyncSnapshot<DataSnapshot> snapshot;

  DrProfile({this.profileDetails, this.snapshot});

  @override
  _DrProfile createState() => _DrProfile(profileDetails, snapshot);
}

class _DrProfile extends State<DrProfile> {
  final dbRef = FirebaseDatabase.instance.reference().child("DrList");

  final int profileDetails;
  List<Map<dynamic, dynamic>> drDetails = [];
  final AsyncSnapshot<DataSnapshot> snapshot;

  _DrProfile(this.profileDetails, this.snapshot);

  @override
  Widget build(BuildContext context) {
    Map<dynamic, dynamic> values = snapshot.data.value;
    //print("***********333***values");
    values = values.values.elementAt(profileDetails);
    print(values.values);
    //print(values.values.elementAt(profileDetails));

    return Scaffold(
        backgroundColor: Colors.white,
        body: new Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              margin: EdgeInsets.only(top: 25),
              child: SingleChildScrollView(
                  child: Form(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          "https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg",
                          height: 200.0,
                          width: 200.0,
                        ),
                      ),
                      Text(
                        "Dr. "+values.values.elementAt(4),
                        style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Experience "+ values.values.elementAt(6)+" Years | Rs." + values.values.elementAt(0) + " Fees",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        values.values.elementAt(5) +", "+ values.values.elementAt(1),
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () => launch('tel:'+values.values.elementAt(3)),
                              //onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => blog())),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.deepPurple),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Call Now",
                                  style: TextStyle(
                                    color: Colors.deepPurpleAccent,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Text(
                              "  ",
                              style: TextStyle(
                                color: Colors.pinkAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            GestureDetector(
                              //onTap: () => launch("tel://79905163306"),
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookApt())),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.deepPurple),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Book Now",
                                  style: TextStyle(
                                    color: Colors.deepPurpleAccent,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        width: MediaQuery.of(context).size.width,
                        height: 1,
                        color: Colors.black54,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Address : ",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        " ",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 5,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          values.values.elementAt(1),
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        width: MediaQuery.of(context).size.width,
                        height: 1,
                        color: Colors.black54,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Education : ",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        " ",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          values.values.elementAt(2),
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      /*Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "MS ENT N.H.L.M Medical College - 1996",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Diploma in Otorhinolaryngology(DLO) - N.H.L.M Medical College - 1996",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "PGDMLS - Symbiosis International University, Pune - 2011",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ), */
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        width: MediaQuery.of(context).size.width,
                        height: 1,
                        color: Colors.black54,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "View Reviews",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        " ",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        width: MediaQuery.of(context).size.width,
                        height: 1,
                        color: Colors.black54,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "View Answer's Given by Dr.",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        " ",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        width: MediaQuery.of(context).size.width,
                        height: 1,
                        color: Colors.black54,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "View Post by Dr.",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        " ",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            )));
  }
}
