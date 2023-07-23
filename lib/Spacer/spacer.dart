import 'package:flutter/material.dart';

class MySpacer extends StatelessWidget {
  const MySpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Spacer"), centerTitle: true),
      body: Row(
        children: [
          Container(
            height: 70,
            width: 100,
            color: Colors.green,
          ),
          Spacer(flex: 3), // 30% space দেবে
          Container(
            height: 70,
            width: 100,
            color: Colors.purple,
          ),
          Spacer(flex: 7), // 70% space দেবে
          Container(
            height: 70,
            width: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
