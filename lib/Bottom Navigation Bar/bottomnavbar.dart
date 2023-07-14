import 'package:atoz/Bottom%20Navigation%20Bar/add.dart';
import 'package:atoz/Bottom%20Navigation%20Bar/chat.dart';
import 'package:atoz/Bottom%20Navigation%20Bar/home.dart';
import 'package:atoz/Bottom%20Navigation%20Bar/person.dart';
import 'package:flutter/material.dart';

class MyBottomnavbar extends StatefulWidget {
  const MyBottomnavbar({super.key});

  @override
  State<MyBottomnavbar> createState() => _MyBottomnavbarState();
}

class _MyBottomnavbarState extends State<MyBottomnavbar> {
  //*
  int _currentIndex = 0;

  final _pages = [
    Home(),
    Add(),
    Chat(),
    Person(),
  ];

  //*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Bar"), centerTitle: true),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber, //* selected button color will change
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.home_outlined),
              label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.add_outlined),
              label: 'Ads'),
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.chat_bubble_outline_rounded),
              label: 'Chat'),
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.person_outline),
              label: 'Person'),
        ],
      ),
      body: _pages[_currentIndex], //* index passing
    );
  }
}


/*
//! Animated Curve Navigation Bar
//! curved_navigation_bar: ^1.0.3

      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        color: Colors.grey,
        items: [
          Icon(Icons.home),
          Icon(Icons.add),
          Icon(Icons.chat),
          Icon(Icons.person),
        ],
      ),
*/