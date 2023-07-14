import 'package:flutter/material.dart';

class MyAlertdialog extends StatelessWidget {
  const MyAlertdialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alert-Dialog"), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("This is Title"),
                  content: Text("This is Content"),
                  actions: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Yes"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("No"),
                    ),
                  ],
                );
              },
            );
          },
          child: Text("Clickk"),
        ),
      ),
    );
  }
}
