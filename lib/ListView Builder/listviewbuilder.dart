import 'package:flutter/material.dart';

class MyListviewbuilder extends StatelessWidget {
  MyListviewbuilder({super.key});
  //
  List<String> Categories = [
    'Food',
    'Electronics',
    'Groceries',
    'Dress',
    'Computer',
    'Phone',
  ];

  List<String> images = [
    'assets/images/table.png',
    'assets/images/pen.png',
    'assets/images/book.png',
    'assets/images/hp.png',
  ];

  List<Color> mycolor = [
    Colors.purple,
    Colors.amber,
    Colors.blue,
    Colors.black,
    Colors.yellow,
    Colors.green,
  ];
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView.builder"), centerTitle: true),
      body: Container(
        height: 50,
        width: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Categories.length,
          itemBuilder: ((context, index) {
            return Container(
              height: 50,
              width: 70,
              color: mycolor[index],
              child: Text(Categories[index]),
            );
          }),
        ),
      ),
    );
  }
}
