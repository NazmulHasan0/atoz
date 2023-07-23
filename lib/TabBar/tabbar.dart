import 'package:flutter/material.dart';

class MyTabbar extends StatelessWidget {
  const MyTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "My Ads",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          bottom: TabBar(labelColor: Colors.black, tabs: [
            Tab(
              child: Column(
                children: [
                  Icon(Icons.shopping_bag_outlined),
                  Text('My Ads'),
                ],
              ),
            ),
            Tab(
              child: Column(
                children: [
                  Icon(Icons.favorite),
                  Text('My Favourites'),
                ],
              ),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("write code")),
            Center(child: Text("write another code")),
          ],
        ),
      ),
    );
  }
}


/*
Different type of TabBar 
https://medium.com/codechai/flutter-boring-tab-to-cool-tab-bfcb1a93f8d0
*/