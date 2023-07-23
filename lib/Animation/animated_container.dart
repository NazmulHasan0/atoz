// ignore_for_file: camel_case_types, prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables, unused_field, unused_element

import 'package:flutter/material.dart';

class Myanimatedcontainer extends StatefulWidget {
  const Myanimatedcontainer({super.key});

  @override
  State<Myanimatedcontainer> createState() => _MyanimatedcontainerState();
}

class _MyanimatedcontainerState extends State<Myanimatedcontainer> {
  double _height = 100;
  double _width = 200;
  Color _color = Colors.amber;

  void _animatedContainer() {
    setState(() {
      _height = 200;
      _width = 300;
      _color = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.easeInCubic,
              height: _height,
              width: _width,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.circular(15),
              ),
              // onEnd: (() {
              //   setState(() {
              //     _height = _height == 200 ? 300 : 200;
              //     _width = _width == 300 ? 350 : 300;
              //     _color = _color == Colors.green ? Colors.amber : Colors.green;
              //   });
              // }),
            ),
            ElevatedButton(
              onPressed: () {
                _animatedContainer();
              },
              child: Text('Click'),
            ),
          ],
        ),
      ),
    );
  }
}


/*
  যদি কোন animation একাধিক বার করাতে হয় (Loop) এর মতো
  তখন onEnd use করতে হয়
*/