import 'package:flutter/material.dart';

class MyListtile extends StatelessWidget {
  const MyListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListTile"), centerTitle: true),
      body: Center(
        child: ListTile(
          leading: CircleAvatar(),
          title: Text('Title'),
          subtitle: Text('Sub-Title'),
          trailing: Text('Trailing'),
        ),
      ),
    );
  }
}
