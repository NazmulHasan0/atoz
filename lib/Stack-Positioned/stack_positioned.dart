import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack-Positioned"), centerTitle: true),
      body: Center(
        child: Container(
          height: 150,
          width: 250,
          color: Colors.amber,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -40,
                child: Container(height: 80, width: 80, color: Colors.purple),
              ),
              Positioned(
                bottom: -40,
                child: Container(height: 80, width: 80, color: Colors.green),
              ),
              Positioned(
                bottom: -40,
                right: 0,
                child: Container(height: 80, width: 80, color: Colors.pink),
              ),
              Positioned(
                top: -40,
                right: 0,
                child: Container(height: 80, width: 80, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
  একটা element এর উপর আর একটা elemet বসানোর জন্য Stack ব্যাবহার করা হয়
*/