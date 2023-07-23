// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class Page2_ extends StatelessWidget {
  const Page2_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Back Page"),
        ),
      ),
    );
  }
}
