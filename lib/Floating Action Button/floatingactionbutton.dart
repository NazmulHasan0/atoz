import 'package:flutter/material.dart';

class MyFloatingactionbutton extends StatelessWidget {
  const MyFloatingactionbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Floating Action Button"),
        centerTitle: true,
      ),
      body: null,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        splashColor: Colors.yellow,
        mini: true, // FAB ছোট হয়ে যাবে
        onPressed: () {},
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
