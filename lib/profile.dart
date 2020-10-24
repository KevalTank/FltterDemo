import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final mobile = TextEditingController();
  final specialization = TextEditingController();
  final expYear = TextEditingController();
  final fees = TextEditingController();
  final address = TextEditingController();
  final education = TextEditingController();
  final dbRef = FirebaseDatabase.instance.reference().child("DrList");

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            width: size.width,
            height: size.height,
            child: new SingleChildScrollView(
                child: new Form(
                  key: _formKey,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        //child: Image.asset("images/logo.jpg"),
                        //width: size.width,
                        margin: EdgeInsets.only(top: 50),
                      ),
                      Container(
                        width: size.width,
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                        child: Text(
                          "Hello, Enter Your Details",
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent[200],
                          borderRadius: BorderRadius.circular(29),
                        ),
                        width: size.width,
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                            controller: name,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            decoration: new InputDecoration(
                              hintText: "Name",
                              hintStyle: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              border: InputBorder.none,
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent[200],
                          borderRadius: BorderRadius.circular(29),
                        ),
                        width: size.width,
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                            controller: mobile,
                            keyboardType: TextInputType.number,
                            maxLength: 10,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            decoration: new InputDecoration(
                              counterText: '',
                              hintText: "Phone Number",
                              hintStyle: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              border: InputBorder.none,
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent[200],
                          borderRadius: BorderRadius.circular(29),
                        ),
                        width: size.width,
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                            controller: specialization,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            decoration: new InputDecoration(
                              hintText: "Specialization",
                              hintStyle: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              border: InputBorder.none,
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent[200],
                          borderRadius: BorderRadius.circular(29),
                        ),
                        width: size.width,
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                            controller: fees,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            decoration: new InputDecoration(
                              hintText: "Fees",
                              hintStyle: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              border: InputBorder.none,
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent[200],
                          borderRadius: BorderRadius.circular(29),
                        ),
                        width: size.width,
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                            controller: address,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            decoration: new InputDecoration(
                              hintText: "Address",
                              hintStyle: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              border: InputBorder.none,
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent[200],
                          borderRadius: BorderRadius.circular(29),
                        ),
                        width: size.width,
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                            controller: education,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            decoration: new InputDecoration(
                              hintText: "Education",
                              hintStyle: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              border: InputBorder.none,
                            )),
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent[200],
                          borderRadius: BorderRadius.circular(29),
                        ),
                        width: size.width,
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                            controller: expYear,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            decoration: new InputDecoration(
                              hintText: "Years of Experience",
                              hintStyle: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              border: InputBorder.none,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        width: size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: FlatButton(
                            padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                            color: Colors.pinkAccent,
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                dbRef.push().set({
                                  "name": name.text,
                                  "mobile": mobile.text,
                                  "specialization": specialization.text,
                                  "fees": fees.text,
                                  "address": address.text,
                                  "education": education.text,
                                  "expYears": expYear.text,
                                }).then((_) {
                                  Scaffold.of(context).showSnackBar(SnackBar(
                                      content: Text('Successfully Added')));
                                  name.clear();
                                  mobile.clear();
                                  specialization.clear();
                                  address.clear();
                                  fees.clear();
                                  education.clear();
                                  expYear.clear();
                                }).catchError((onError) {
                                  Scaffold.of(context).showSnackBar(
                                      SnackBar(content: Text(onError)));
                                });
                              }
                            },
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}
