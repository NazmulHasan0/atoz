import 'package:flutter/material.dart';

class MyToggleButton extends StatefulWidget {
  const MyToggleButton({super.key});

  @override
  State<MyToggleButton> createState() => _MyToggleButtonState();
}

class _MyToggleButtonState extends State<MyToggleButton> {
  //
  List<bool> toggleValue = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Toogle Button"), centerTitle: true),
      body: Center(
        child: ToggleButtons(
          children: [
            Icon(Icons.apple),
            Icon(Icons.android),
            Icon(Icons.window),
            Icon(Icons.link_rounded),
          ],
          isSelected: toggleValue,
          onPressed: (index) {
            // যে কোন action ঘটানো যাবে
            setState(() {
              toggleValue[index] = !toggleValue[index];
            });
          },
        ),
      ),
    );
  }
}
