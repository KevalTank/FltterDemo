import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/appointment.dart';
import 'package:flutter_app/blog.dart';
import 'package:flutter_app/profile.dart';
import 'package:flutter_app/search.dart';
import 'package:flutter_app/user.dart';

import 'assistant.dart';

class home extends StatefulWidget {
  home({Key key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    blog(), //0
    Assistant(), //1
    Search(), //2
    Appointment(),
    profile(),
    //User(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(Icons.inbox, 0),
          buildNavBarItem(Icons.keyboard_voice, 1),
          buildNavBarItem(Icons.search, 2),
          buildNavBarItem(Icons.event, 3),
          buildNavBarItem(Icons.account_box, 4),
        ],
      ),
      body: _widgetOptions[_selectedIndex],
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
          color: Colors.deepPurpleAccent,
          height: 60,
          width: MediaQuery.of(context).size.width / 5,
          child: Icon(
            icon,
            color: index == _selectedIndex ? Colors.white : Colors.white60,
            size: 30,
          )),
    );
  }
}
