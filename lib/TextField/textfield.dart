// ignore_for_file: camel_case_types, must_be_immutable, prefer_final_fields, avoid_print, prefer_const_constructors, unused_field

import 'package:flutter/material.dart';

class Mytextfield_ extends StatefulWidget {
  static const String path = 'Mytextfield_';
  const Mytextfield_({super.key});

  @override
  State<Mytextfield_> createState() => _Mytextfield_State();
}

class _Mytextfield_State extends State<Mytextfield_> {
  //*
  TextEditingController _textEditingController = TextEditingController();
  String _text = '';
  bool _secure = true;
  //*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                obscureText: true,
                // obscuringCharacter: '*',
                maxLength: 10,
                // maxLines: 5,
                // textDirection: TextDirection.ltr,
                // keyboardType: TextInputType.emailAddress,
                controller: _textEditingController,
                onChanged: (value) {
                  _text = value;
                },
                // onSubmitted: (value) {
                //   _text = value;
                // },
                decoration: InputDecoration(
                  icon: Icon(Icons.home),
                  hintText: 'Hin Text',
                  labelText: 'Lable Text',
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _secure = !_secure;
                      });
                    },
                    icon: _secure == true
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 5,
                      color: Colors.green,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 5,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
            ),
            Text(_text),
            ElevatedButton(
              onPressed: () {
                print(_text);
              },
              child: Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}

/*
  TextField
    obscureText           password দেখা যাবে না
    obscuringCharacter    password * আকারে দেখাবে
    maxLength   সর্বোচ্চ কয়টা Character
    maxLines    সর্বোচ্চ কয়টা Lines ( maxLines use করলে obscureText use করা যাবে না )
    textDirection   লেখা বাম/ডান দিক থেকে হবে
    keyboardType    Keyboard টা কোন type এর হবে
    controller    এর মাধ্যমে data get করতে হয়
    onChanged     এটি call হতেই থাকবে এবং data পেতেই থাকবে
    decoration
      prefixIcon    বাম পাশে থাকে
      suffixIcon    ডান পাশে থাকে
      enabledBorder   unclick অবস্থায় border দেখাবে
      focusedBorder   click অবস্থায় border দেখাবে
*/

//* Button এ click করে data debug console এ দেখানোর জন্য
/*
  TextEditingController _textEditingController = TextEditingController();
  String _text = '';

  controller: _textEditingController,
  onChanged: (value) {
    _text = value;
  },

  ElevatedButton(
    onPressed: () {
      print(_text);
    },
    child: Text('Button'),
  ),

*/

//* input দেওয়ার সাথে সাথে input টা screen এ দেখানোর জন্য 
/*
  TextEditingController _textEditingController = TextEditingController();
  String _text = '';

  controller: _textEditingController,
  onChanged: (value) {
    _text = value;
  },

  ElevatedButton(
    onPressed: () {
      setState(() {
        _text = value;
      });
    },
    child: Text('Button'),
  ),

*/
