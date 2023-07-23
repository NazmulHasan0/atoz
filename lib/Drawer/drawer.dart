import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"), centerTitle: true),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("This is Drawer Header"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("This is Drawer Body"),
                SizedBox(height: 15),
                Text("This is Drawer Body"),
                SizedBox(height: 15),
                Text("This is Drawer Body"),
                SizedBox(height: 15),
                Text("This is Drawer Body"),
                SizedBox(height: 15),
                Text("This is Drawer Body"),
              ],
            ),
          ],
        ),
      ),
      body: null,
    );
  }
}
