// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class Page1_ extends StatelessWidget {
  const Page1_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/Page2_');
          },
          child: Text("Go to Page 1"),
        ),
      ),
    );
  }
}


//! এভাবেও Routes use করা যায়
/*
  initialRoute: '/Page1_',
    routes: {
      '/Page1_': (context) => Page1_(),
      '/Page2_': (context) => Page2_(),
    }
*/
