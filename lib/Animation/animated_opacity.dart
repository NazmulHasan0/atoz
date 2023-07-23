import 'package:flutter/material.dart';

class Myanimatedopacity extends StatefulWidget {
  const Myanimatedopacity({super.key});

  @override
  State<Myanimatedopacity> createState() => _MyanimatedopacityState();
}

class _MyanimatedopacityState extends State<Myanimatedopacity> {
  //
  double _opacity = 1;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Opacity'), centerTitle: true),
      body: Column(
        children: [
          AnimatedOpacity(
            duration: Duration(seconds: 2),
            opacity: _opacity,
            child: Container(
              height: 100,
              width: 200,
              color: Colors.green,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _opacity = 0.2;
              });
            },
            child: Text('Click'),
          ),
        ],
      ),
    );
  }
}
