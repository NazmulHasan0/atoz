import 'package:atoz/Navigation%20Rail/ap3.dart';
import 'package:atoz/Navigation%20Rail/hp1.dart';
import 'package:atoz/Navigation%20Rail/sp2.dart';
import 'package:flutter/material.dart';

class Mynavigationrail extends StatefulWidget {
  const Mynavigationrail({super.key});

  @override
  State<Mynavigationrail> createState() => _MynavigationrailState();
}

class _MynavigationrailState extends State<Mynavigationrail> {
  //
  int _selectedIndex = 0;
  final _pages = [
    Myhp1(),
    Mysp2(),
    Myap3(),
  ];

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation-Rail"), centerTitle: true),
      body: Row(
        children: [
          NavigationRail(
            onDestinationSelected: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            labelType: NavigationRailLabelType.all,
            elevation: 5,
            leading: Icon(Icons.email),
            trailing: Icon(Icons.email),
            destinations: [
              NavigationRailDestination(
                  icon: Icon(Icons.home), label: Text("Home")),
              NavigationRailDestination(
                  icon: SizedBox.shrink(),
                  label: RotatedBox(quarterTurns: -1, child: Text("Search"))),
              NavigationRailDestination(
                  icon: Icon(Icons.add), label: Text("Add")),
            ],
            selectedIndex: _selectedIndex,
          ),
          Expanded(
            child: Container(
              child: _pages[_selectedIndex],
            ),
          ),
        ],
      ),
    );
  }
}
