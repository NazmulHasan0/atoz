import 'package:flutter/material.dart';

class MySnackbar extends StatelessWidget {
  const MySnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SnackBar"), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("This is a SnackBar"),
                backgroundColor: Colors.purple,
                padding: EdgeInsets.all(10),
                shape: StadiumBorder(),
                behavior: SnackBarBehavior.floating,
                width: 250,
                elevation: 30,
                duration: Duration(seconds: 5),
                action: SnackBarAction(
                  label: "Done",
                  onPressed: () {},
                ),
              ),
            );
          },
          child: Text("Click Here"),
        ),
      ),
    );
  }
}
