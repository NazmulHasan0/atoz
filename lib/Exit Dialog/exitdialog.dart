import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Myexitdialog extends StatelessWidget {
  const Myexitdialog({super.key});
  //
  _getOutofApp() {
    if (Platform.isIOS) {
      try {
        exit(0);
      } catch (e) {
        print(e);
      }
    } else {
      try {
        SystemNavigator.pop();
      } catch (e) {
        print(e);
      }
    }
  }

  exitDialog(context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: 150,
            child: Column(
              children: [
                Text("Are you sure to exit ?"),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _getOutofApp();
                        },
                        child: Text("Yes")),
                    VerticalDivider(),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("No")),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  //
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        exitDialog(context);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(title: Text("Exid Dialog")),
        body: null,
      ),
    );
  }
}
