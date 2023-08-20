import 'package:flutter/material.dart';

class Mygesture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gesture Detector"), centerTitle: true),
      body: Center(
        child: GestureDetector(
            onTap: () {
              print("Gesture Detector Clicked");
            },
            child: Container(height: 100, width: 100, color: Colors.purple)),
      ),
    );
  }
}


/*
  যেই সমস্ত widget এর onTap property নেই
  তাদেরকে click able করতে GestureDetector ব্যবহার করা হয়
  আকারে ছোট widget কে সব সময় ভালো ভাবে click-able/tap-able করতে পারে না
  তার জন্য InkWell ব্যবহার করতে হয়
*/