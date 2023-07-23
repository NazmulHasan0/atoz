import 'package:flutter/material.dart';

class MyTooltip extends StatelessWidget {
  const MyTooltip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tool-Tip"), centerTitle: true),
      body: Center(
        child: Tooltip(
          message: "This is a container",
          child: Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
