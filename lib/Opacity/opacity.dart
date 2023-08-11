import 'package:flutter/material.dart';

class Myopacity extends StatelessWidget {
  const Myopacity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Opacity"), centerTitle: true),
      body: Column(
        children: [
          Opacity(
              opacity: 1,
              child: Container(height: 200, width: 200, color: Colors.blue)),
          Opacity(
              opacity: 0.5,
              child: Container(height: 200, width: 200, color: Colors.blue)),
          Opacity(
              opacity: 0.2,
              child: Container(height: 200, width: 200, color: Colors.blue)),
        ],
      ),
    );
  }
}


/*
  Opacity শুরু হয় 0.0 থেকে শেষ হয় 1.0 তে

*/