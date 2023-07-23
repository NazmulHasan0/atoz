import 'package:flutter/material.dart';

class Myanimatedpositioned extends StatefulWidget {
  const Myanimatedpositioned({super.key});

  @override
  State<Myanimatedpositioned> createState() => _MyanimatedpositionedState();
}

class _MyanimatedpositionedState extends State<Myanimatedpositioned> {
  //*
  double _right = 0;
  //*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Positioned'), centerTitle: true),
      body: Container(
        height: 400,
        width: 350,
        color: Colors.green,
        child: Stack(
          children: [
            AnimatedPositioned(
              right: _right,
              curve: Curves.bounceInOut,
              duration: Duration(seconds: 2),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _right = 200;
                  });
                },
                child: Text('Click'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
