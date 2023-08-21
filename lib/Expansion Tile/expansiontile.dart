import 'package:flutter/material.dart';

class Myexpansiontile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expansion Tile"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExpansionTile(
              title: Text("This is Title 1"),
              subtitle: Text("This is Sub-Title"),
              leading: CircleAvatar(),
              children: [
                Container(
                  height: 100,
                  color: Colors.green,
                  child: Text("This is Body"),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("This is Title 2"),
              subtitle: Text("This is Sub-Title"),
              leading: CircleAvatar(),
              children: [
                Container(
                  height: 100,
                  color: Colors.yellow,
                  child: Text("This is Body"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*
  অনেকটা ListTile এর মতো
  তবে click করলে ভিতর থেকে কিছু অংশ Expand আকারে বের হয়ে আসে
*/

//!
/*
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text("This is Title: $index"),
            subtitle: Text("This is Sub-Title: $index"),
            leading: CircleAvatar(),
            children: [
              Container(
                height: 50,
                color: Colors.grey,
                child: Text("This is Body"),
              ),
            ],
          );
        },
      ),
*/