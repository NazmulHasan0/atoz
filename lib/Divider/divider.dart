import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Diver & VirticalDivider"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 200,
              color: Colors.green,
            ),
            Divider(
              color: Colors.black,
              thickness: 5,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              height: 50,
              width: 200,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
