import 'package:flutter/material.dart';

class Myinkwell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("InkWell"), centerTitle: true),
      body: Center(
        child: Material(
          color: Colors.pinkAccent,
          child: InkWell(
            onTap: () {
              print("InkWell Clicked");
            },
            splashColor: Colors.white,
            child: Ink(height: 100, width: 100),
          ),
        ),
      ),
    );
  }
}


/*
  যেই সমস্ত widget এর onTap property নেই
  তাদেরকে click able করতে InkWell ব্যবহার করা হয়
*/