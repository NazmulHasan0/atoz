import 'package:flutter/material.dart';

class Myanimateddefaulttextstyle extends StatefulWidget {
  const Myanimateddefaulttextstyle({super.key});

  @override
  State<Myanimateddefaulttextstyle> createState() =>
      _MyanimateddefaulttextstyleState();
}

class _MyanimateddefaulttextstyleState
    extends State<Myanimateddefaulttextstyle> {
  //*
  double _size = 20;
  Color _color = Colors.black;
  //*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Default Text Style'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              child: Text('We are Learning Animated Default Text Style'),
              style: TextStyle(fontSize: _size, color: _color),
              duration: Duration(seconds: 1),
              curve: Curves.bounceInOut,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _size = 30;
                  _color = Colors.pink;
                });
              },
              child: Text('Click'),
            ),
          ],
        ),
      ),
    );
  }
}
