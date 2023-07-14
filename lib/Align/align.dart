import 'package:flutter/material.dart';

class MyAlign extends StatelessWidget {
  const MyAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Align"), centerTitle: true),
      body: Container(
        height: 300,
        width: 300,
        color: Colors.amber,
        child: Align(
          alignment:
              Alignment.bottomRight, //* যে কোন স্থানে Widget কে বসানো যাবে
          child: Text('Align'),
        ),
      ),
    );
  }
}
