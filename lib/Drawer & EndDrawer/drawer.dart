import 'package:flutter/material.dart';

class Mydrawer extends StatefulWidget {
  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  //
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Container(color: Colors.pinkAccent, width: 200),
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
          child: Text("Drawer-Button"),
        ),
      ),
    );
  }
}


//! ডানপাশে Drawer দিতে চাইলে
/*
  endDrawer: Drawer(),
*/

//! বামপাশে Drawer দিতে চাইলে
/*
  drawer: Drawer(),
*/

//! অনেক App এ AppBar থাকে না, তখন যেকোনো একটা button click করে
//! Custom Drawer open করতে হয়
/*
  //
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); //! key
  //
  
    return Scaffold(
      key: _scaffoldKey,
      drawer: Container(color: Colors.pinkAccent, width: 200),  //! custom width
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
          child: Text("Drawer-Button"),
        ),
      ),
    );
*/