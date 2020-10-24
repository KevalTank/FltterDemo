import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final email = TextEditingController();
  final mobile = TextEditingController();
  final password = TextEditingController();
  final cpassword = TextEditingController();
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
                    child: Image.asset("images/logo.jpg"),
                    width: size.width,
                    margin: EdgeInsets.only(top: 50),
                  ),
                  Container(
                    width: size.width,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                    child: Text(
                      "Hello,",
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
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        decoration: new InputDecoration(
                          hintText: "Email ID",
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
                        controller: password,
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        decoration: new InputDecoration(
                          hintText: "Password",
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
                        controller: cpassword,
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        decoration: new InputDecoration(
                          hintText: "Confirm Password",
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
                              "email": email.text,
                              "mobile": mobile.text,
                              "password": password.text,
                            }).then((_) {
                              Scaffold.of(context).showSnackBar(SnackBar(
                                  content: Text('Successfully Added')));
                              email.clear();
                              mobile.clear();
                              password.clear();
                              cpassword.clear();
                            }).catchError((onError) {
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(content: Text(onError)));
                            });
                          }
                        },
                        child: Text(
                          'SIGN UP',
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
