import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shadowColor: Colors.purple,
                elevation: 7,
                minimumSize: Size(150, 48),
                side: BorderSide(
                  color: Colors.pinkAccent,
                  width: 2,
                  //* style: BorderStyle.none,
                  style: BorderStyle.solid,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text("Elevated Button"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shadowColor: Colors.purple,
                elevation: 7,
                minimumSize: Size(120, 120),
                shape: CircleBorder(),
              ),
              child: Text("Elevated Button"),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.face_sharp),
              label: Text("Icon with Button"),
            ),
            SizedBox(height: 10),
            IconButton(
              onPressed: () {},
              iconSize: 50,
              splashColor: Colors.pinkAccent,
              splashRadius: 30,
              icon: Icon(Icons.access_alarms),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: Text("Outline Button"),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text("Text Button"),
            ),
            SizedBox(height: 10),
            // GestureDetector(
            //! To make any widget Tapable
            //   onTap: () {
            //     print("Hello");
            //   },
            //   child: Image.asset("asstes/hotel1.jpg"),
            // ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
