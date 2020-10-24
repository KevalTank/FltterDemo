import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Container(
              width: size.width,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 45),
              child:  Text(
                "Work in progress!!",
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
                textAlign: TextAlign.left,
              ),
            ),
        ));
  }
}

