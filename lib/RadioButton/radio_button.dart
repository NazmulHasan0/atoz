import 'package:flutter/material.dart';

class Myradiobutton extends StatefulWidget {
  const Myradiobutton({super.key});

  @override
  State<Myradiobutton> createState() => _MyradiobuttonState();
}

class _MyradiobuttonState extends State<Myradiobutton> {
  //
  int _radioGroupValue = 1;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio-Button"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _radioGroupValue,
                  fillColor:
                      MaterialStateColor.resolveWith((states) => Colors.purple),
                  onChanged: (value) {
                    setState(() {
                      _radioGroupValue = value!;
                    });
                  },
                ),
                Text("male")
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: _radioGroupValue,
                  onChanged: (value) {
                    setState(() {
                      _radioGroupValue = value!;
                    });
                  },
                ),
                Text("female")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
