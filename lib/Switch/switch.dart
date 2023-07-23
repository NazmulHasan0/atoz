import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  //
  bool isSelected = false;
  String isText = "Switch off";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: isSelected, // value: যে কোন একটা bool type এর vale নেয়
              onChanged: (value) {
                if (isSelected == false) {
                  setState(() {
                    // setState এর ভিতর value change করা হচ্ছে
                    isSelected = true;
                    isText = "Switch On";
                  });
                } else {
                  setState(() {
                    // setState এর ভিতর value change করা হচ্ছে
                    isSelected = false;
                    isText = "Switch Off";
                  });
                }
              },
              activeColor: Colors
                  .green, // switch on থাকলে গোল button এর color টা কেমন হবে
              activeTrackColor: Colors
                  .purple, // switch on থাকলে লম্বা button এর color টা কেমন হবে
              inactiveThumbColor: Colors
                  .pink, // switch off থাকলে গোল button এর color টা কেমন হবে
              inactiveTrackColor: Colors.limeAccent[
                  700], // switch off থাকলে লম্বা button এর color টা কেমন হবে
            ),
            Text(isText),
          ],
        ),
      ),
    );
  }
}



/*
  Switch কে বড় করা যায় না বড় করতে হলে একটু অন্যভাবে বড় করতে হয়

  Transform.scale(
    scale: 2,
    child: Switch(
            value: true/false,
	          onChanged: (value){},
            ),
  ),
*/