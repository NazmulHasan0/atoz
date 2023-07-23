import 'package:flutter/material.dart';

class MyGridview extends StatelessWidget {
  const MyGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid-View"), centerTitle: true),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          Container(color: Colors.amber, child: Center(child: Text("1"))),
          Container(color: Colors.green, child: Center(child: Text("2"))),
          Container(color: Colors.purple, child: Center(child: Text("3"))),
          Container(color: Colors.pink, child: Center(child: Text("4"))),
          Container(color: Colors.blue, child: Center(child: Text("5"))),
        ],
      ),
    );
  }
}
