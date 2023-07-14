import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          title: Text("AppBar & PreferredSize"),
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        preferredSize: Size.fromHeight(150),
      ),
      body: null,
    );
  }
}
