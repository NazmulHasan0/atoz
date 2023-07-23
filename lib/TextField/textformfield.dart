// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class Mytextfromfield_ extends StatefulWidget {
  static const String path = 'Mytextfromfield_';
  const Mytextfromfield_({super.key});

  @override
  State<Mytextfromfield_> createState() => _Mytextfromfield_State();
}

class _Mytextfromfield_State extends State<Mytextfromfield_> {
//*
  TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _secure = true;
//*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text From Field'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                key: _formKey,
                child: TextFormField(
                  controller: _controller,
                  obscureText: _secure,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field can't be empty";
                    } else if (value.length < 6) {
                      return "Password can't be less than 6";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _secure = !_secure;
                        });
                      },
                      icon: _secure == true
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print("Validation Completed");
                }
              },
              child: Text('Button'),
            )
          ],
        ),
      ),
    );
  }
}


//* TextFormField use করা হয় data validate করার জন্য
/*
  Form
    TextFormField
*/
//* RegEx in Dart/Flutter ভালো ভাবে শিখতে হবে