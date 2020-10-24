import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assistant extends StatefulWidget {
  @override
  _AssistantState createState() => _AssistantState();
}

class _AssistantState extends State<Assistant> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white10,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Wrap(
          children: [
            Image.network("https://www.pngitem.com/pimgs/m/350-3504960_wordpress-development-vector-hd-png-download.png",width: MediaQuery.of(context).size.width,),
            SizedBox(height: 20,width: 20,),
            Text("Work In Progress..",
                style: TextStyle(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
              textAlign: TextAlign.center,),
          ],
        )
      ),
    );
  }
}

