import 'package:flutter/material.dart';

class Mygridviewbuilder extends StatelessWidget {
  static const String path = 'Mygridviewbuilder_';
  Mygridviewbuilder({super.key});
  List<String> mycount = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Builder'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.9,
        ),
        itemCount: mycount.length,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        itemBuilder: ((context, index) {
          return Container(
            color: Colors.amber,
            child: Center(
              child: Text(mycount[index]),
            ),
          );
        }),
      ),
    );
  }
}
