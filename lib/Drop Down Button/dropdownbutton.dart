import 'package:flutter/material.dart';

class Mydropdownbutton extends StatefulWidget {
  @override
  State<Mydropdownbutton> createState() => _MydropdownbuttonState();
}

class _MydropdownbuttonState extends State<Mydropdownbutton> {
  //
  List<String> _gender = [
    'Male',
    'Female',
    'Others',
  ];
  String _value = 'Male';
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drop Down Button"), centerTitle: true),
      body: Center(
          child: DropdownButton(
        value: _value, // default element
        // _gender এর সবগুলো element যেন show করে তাই
        // map এ convert করা হচ্ছে
        // অথবা _gender এর সবগুলো element এর মধ্য দিয়ে যাবে
        items: _gender.map((e) {
          return DropdownMenuItem(value: e, child: Text(e));
        }).toList(), // convert map to list
        onChanged: (value) {
          setState(() {
            _value = value!;
          });
        },
      )),
    );
  }
}
