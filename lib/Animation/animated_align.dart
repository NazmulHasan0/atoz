// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_final_fields, unused_field

import 'package:flutter/material.dart';

class Myanimatedalign extends StatefulWidget {
  const Myanimatedalign({super.key});

  @override
  State<Myanimatedalign> createState() => Myanimatedalign_State();
}

class Myanimatedalign_State extends State<Myanimatedalign> {
  //*
  Alignment _alignment = Alignment.topRight;
  //*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Align'), centerTitle: true),
      body: Column(
        children: [
          AnimatedAlign(
            alignment: _alignment,
            duration: Duration(seconds: 1),
            child: Text('Animated Align'),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _alignment = Alignment.topLeft;
                });
              },
              child: Text('Click'))
        ],
      ),
    );
  }
}
