// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:atoz/Navigator/sc_two.dart';
import 'package:flutter/material.dart';

class Scone_ extends StatelessWidget {
  static const String path = 'Scone_';
  const Scone_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen One'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => Sctwo_())));
          },
          child: Text("Go to Page 1"),
        ),
      ),
    );
  }
}

//* Simple Navigation
/*
  Navigator.push(context,MaterialPageRoute(builder: ((context) => Sctwo())));
*/
/*
  Navigator.pop(context);
*/


//* Positional Argument Passing (Navigation)
/*
  final String name = 'nazmul';
  final int age = 25;
  @override এর আগে declare করতে হবে

  Navigator.push(context,MaterialPageRoute(builder: ((context) => Sctwo(name, age)))),
*/
//* Positional Argument Receiving (Navigation)
/*
  const Sctwo(this.name, this.age);
  Constructor এর ভিতর এই ভাবে Variable গুলো বলে দিতে হবে,
  কারন Constructor এর মাধ্যমেই অপর Page থেকে Value গুলো Received করা হবে

  final String name = 'nazmul';
  final int age = 25;
  @override এর আগে declare করতে হবে

  Navigator.pop(context);
*/


 //* Parameterized  Argument Passing
 /*
  final String name = 'nazmul';
  final int age = 25;
  @override এর আগে declare করতে হবে
      Navigator.push(context,MaterialPageRoute( builder: ((context) => Sctwo(name: name, age: age,))));
  },
 */
//* Parameterized Argument Receiving (Navigation)
/*
  const NvScreenTwo({this.name, this.age});
  Constructor এর ভিতর এই ভাবে Variable গুলো বলে দিতে হবে,
  কারন Constructor এর মাধ্যমেই অপর Page থেকে Value গুলো Received করা হবে

  final String? name;
  final int? age;
  @override এর আগে declare করতে হবে

  Navigator.pop(context);
*/


//* যদি back button এ click করলে direct app থেকে বের করে দিতে চাই
//* তাহলে pushReplacement() use করতে হবে
/*
  Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Sctwo_())));
*/


//* MaterialPageRoute() / CupertinoPageRoute()
/*
Navigator.push(context, MaterialPageRoute(builder: ((context) => Sctwo_())));
Navigator.push(context, CupertinoPageRoute(builder: ((context) => Sctwo_())));
*/