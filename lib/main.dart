import 'package:flutter/material.dart';
import 'package:flutter_app/ForgotPassword.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/signup.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    title: 'iCare',
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      accentColor: Colors.deepPurpleAccent[100],
      primaryColor: Colors.pinkAccent,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: login(),
  ));
}

class login extends StatelessWidget {
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
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
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
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                    width: size.width,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ForgotPassword()),
                        );
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => home()),
                          );
                        },
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    width: size.width,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signup()),
                        );
                      },
                      child: Text(
                        "Don't have account? Sign Up",
                        style: TextStyle(
                          color: Colors.pinkAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ))));
  }
}
