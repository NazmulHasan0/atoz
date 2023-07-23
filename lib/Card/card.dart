import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card"), centerTitle: true),
      body: Center(
        child: Card(
          color: Colors.pink[200],
          elevation: 8,
          shadowColor: Colors.blue,
          margin: EdgeInsets.all(20),

          // shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
          // shape: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          //   borderSide: BorderSide(color: Colors.black, width: 3),
          // ),

          // shape: CircleBorder(
          //   side: BorderSide(width: 3, color: Colors.yellowAccent),
          // ),
          child: Container(height: 250, width: 250),
        ),
      ),
    );
  }
}
