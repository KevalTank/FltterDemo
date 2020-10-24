import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
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
                            "Dr. Alap Shah",
                            style: TextStyle(
                              color: Colors.deepPurpleAccent,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "General Physician, Ahmedabad",
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
                                  onTap: () => launch('tel:7990516306'),
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
                                          builder: (context) => null)),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width / 3,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        border:
                                        Border.all(color: Colors.deepPurple),
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Text(
                                      "Cancel",
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
                          Text(
                              "Date : 20, Oct    Time : 11:00 AM",
                              style: TextStyle(
                                color: Colors.pinkAccent,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          Text(
                            " ",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 5,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Code: ######",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, bottom: 5),
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            color: Colors.black54,
                          ),

                        ],
                      ),
                    ),
                  )),
            )));
  }
}

