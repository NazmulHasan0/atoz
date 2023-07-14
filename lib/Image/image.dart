import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image"), centerTitle: true),
      body: Column(
        children: [
          Image.asset(
            "assets/images/flutter_logo.jpg",
            width: 200,
            height: 200,
            //!color: Colors.pinkAccent,
            //!colorBlendMode: BlendMode.hardLight,
          ),
          Image.network(
            "https://rukminim1.flixcart.com/image/416/416/k0bbb0w0/poster/u/h/a/medium-cute-minions-cartoon-wall-poster-for-children-high-original-imafk4xygze3chhh.jpeg?q=70",
            height: 200,
          ),
        ],
      ),
    );
  }
}
