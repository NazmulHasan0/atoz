import 'package:flutter/material.dart';

class Myindexedstack extends StatefulWidget {
  const Myindexedstack({super.key});

  @override
  State<Myindexedstack> createState() => _MyindexedstackState();
}

class _MyindexedstackState extends State<Myindexedstack> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Indexed Stack"), centerTitle: true),
      body: Center(
        child: IndexedStack(
          index: _index,
          children: [
            Container(
              padding: EdgeInsets.all(50),
              color: Colors.red,
              child: Text(
                '0',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              color: Colors.blue,
              child: Text(
                '1',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              color: Colors.purple,
              child: Text(
                '2',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              color: Colors.green,
              child: Text(
                '3',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.rocket),
        onPressed: () {
          setState(() {
            if (_index == 3) {
              _index = 0;
            } else {
              _index = _index + 1;
            }
          });
        },
      ),
    );
  }
}


/*
  IndexedStack হোল একটার উপর আর একটা element আসবে
*/