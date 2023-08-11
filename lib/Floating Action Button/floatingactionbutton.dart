import 'package:atoz/Floating%20Action%20Button/herotag_page.dart';
import 'package:flutter/material.dart';

class MyFloatingactionbutton extends StatelessWidget {
  const MyFloatingactionbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Floating Action Button"),
        centerTitle: true,
      ),
      body: null,
      floatingActionButton: FloatingActionButton(
        elevation: 12,
        highlightElevation: 50, // button press করার সময় elevation দেখাবে
        mouseCursor: MaterialStateMouseCursor.textable,
        tooltip: "Save",
        backgroundColor: Colors.blueAccent,
        splashColor: Colors.yellow, // click করলে button এর color change হবে
        mini: true, // FAB ছোট হয়ে যাবে
        heroTag: 'tag1',
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Myherotag()));
        },
        child: Icon(Icons.favorite),
      ),
    );
  }
}


/*
  Scaffold(
	  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
  ),

  Scaffold(
	  floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
  ),

  FloatingActionButton(
	  shape: RoundedRectangleBorder(),
  ),


*/