import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container"), centerTitle: true),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 70,
                width: 70,
                color: Colors.blueAccent,
                child: Text("Text"),
                alignment: Alignment.center, //! for child position
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(
                    left: 20), //! Alignment will not work if padding is used
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.teez.in/cdn/shop/products/flutter-developer-T-Shier-For-Men_s-2_1024x1024.jpg?v=1587186530"),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  border: Border.all(color: Colors.lime, width: 10),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [Colors.pink, Colors.yellow, Colors.pinkAccent],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.pink, Colors.yellow, Colors.pinkAccent],
                      begin: Alignment.centerLeft,
                      end: Alignment.topRight,
                      stops: [0.2, 0.5, 0.4]),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
