import 'package:flutter/material.dart';

class MyExpanded extends StatelessWidget {
  const MyExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded"), centerTitle: true),
      body: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
          Expanded(
            flex: 2, // flex এর মান যতো বেশি হবে ততো জায়গা বেশি নেবে
            child: Container(
              height: 50,
              width: 50,
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 3, // flex এর মান যতো বেশি হবে ততো জায়গা বেশি নেবে
            child: Container(
              height: 50,
              width: 50,
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}


/*
  Expanded হচ্ছে responsive widget
  কোন Screen এর বাকি অংশটুকু পরিপূর্ণভাবে use করার জন্য Expanded use করা হয়
*/