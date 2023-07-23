import 'package:atoz/Animation/hero_animation2.dart';
import 'package:flutter/material.dart';

class Myheroanimation1 extends StatelessWidget {
  const Myheroanimation1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation 1'),
        centerTitle: true,
      ),
      body: Card(
        child: ListTile(
          leading: Hero(
              tag: '1', child: Image.asset('assets/images/flutter_logo.jpg')),
          title: Text('Vegetables'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => Myheroanimation2())));
          },
        ),
      ),
    );
  }
}


/*
  Tapable কোন কিছুকে একটি page থেকে অন্য একটি page এ 
  animation এর মাদ্ধমে নিয়ে যাওয়ার জন্য Hero use করা হয়

  Hero এর tag same হতে হবে
*/