import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  //
  int sliderValue = 5;

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider"), centerTitle: true),
      body: Center(
        child: Slider(
          value: sliderValue.toDouble(),
          onChanged: (double newvalue) {
            setState(() {
              sliderValue = newvalue.round();
            });
          },

          min: 1.0,
          max: 20.0,
          divisions: 10,
          activeColor: Colors.green,
          inactiveColor: Colors.pink,
          // label: "Tricker",
          label: sliderValue.round().toString(),
        ),
      ),
    );
  }
}
