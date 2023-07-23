import 'package:flutter/material.dart';

class Myheroanimation2 extends StatelessWidget {
  const Myheroanimation2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero animation 2'), centerTitle: true),
      body:
          Hero(tag: '1', child: Image.asset('assets/images/flutter_logo.jpg')),
    );
  }
}
