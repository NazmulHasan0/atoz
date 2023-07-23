import 'package:flutter/material.dart';

class MyListview extends StatelessWidget {
  const MyListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View"), centerTitle: true),
      body: Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          reverse: true, //* ListView এর element গুলো উল্টা করে দেখাবে
          children: [
            Container(height: 100, width: 100, color: Colors.purple),
            Container(height: 100, width: 100, color: Colors.amber),
            Container(height: 100, width: 100, color: Colors.purple),
            Container(height: 100, width: 100, color: Colors.green),
            Container(height: 100, width: 100, color: Colors.purple),
            Container(height: 100, width: 100, color: Colors.amber),
            Container(height: 100, width: 100, color: Colors.purple),
            Container(height: 100, width: 100, color: Colors.green),
          ],
        ),
      ),
    );
  }
}

/*
Layout Structure / Design Structure same হলে ListView use করতে হয়
ListView এর একটা Height (container/sizedBox) বলে দিতে হয়, না হলে সে screen এর সম্পূর্ণ জায়গা নিয়ে নেয়
*/