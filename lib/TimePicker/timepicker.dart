import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  const MyTimePicker({super.key});

  @override
  State<MyTimePicker> createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  //
  late TimeOfDay selectedTime = TimeOfDay.now();

  _clickedTime(BuildContext context) async {
    final TimeOfDay? myTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (myTime != null && myTime != selectedTime) {
      setState(() {
        selectedTime = myTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Time Picker"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _clickedTime(context);
              },
              child: Text("Time Button"),
            ),
            Text(
              "Time : ${selectedTime.hour} : ${selectedTime.minute}",
            ),
            Text("Time : ${selectedTime.format(context)}"),
          ],
        ),
      ),
    );
  }
}
