import 'package:atoz/Page%20View/pageone.dart';
import 'package:atoz/Page%20View/pagethree.dart';
import 'package:atoz/Page%20View/pagetwo.dart';
import 'package:flutter/material.dart';

class MyPageview extends StatefulWidget {
  const MyPageview({super.key});

  @override
  State<MyPageview> createState() => _MyPageviewState();
}

class _MyPageviewState extends State<MyPageview> {
  //
  PageController _pageController = PageController(
    initialPage: 0,
  );

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page View"), centerTitle: true),
      body: PageView(
        controller: _pageController,
        children: [
          Pageone(),
          Pagetwo(),
          Pagethree(),
        ],
      ),
    );
  }
}
