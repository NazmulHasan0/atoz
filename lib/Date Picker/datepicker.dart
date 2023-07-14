import 'package:flutter/material.dart';

class MyDatepicker extends StatefulWidget {
  const MyDatepicker({super.key});

  @override
  State<MyDatepicker> createState() => _MyDatepickerState();
}

class _MyDatepickerState extends State<MyDatepicker> {
  //
  late DateTime selectedDate = DateTime.now();
  _clickedDate(BuildContext context) async {
    final DateTime? myDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime.now(),
    );
    if (myDate != null && myDate != selectedDate) {
      setState(() {
        selectedDate = myDate;
      });
    }
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Date picker"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  _clickedDate(context);
                },
                child: Text("Date Button")),
            Text(
              "Date : ${selectedDate.year} / ${selectedDate.month} / ${selectedDate.day}",
            ),
          ],
        ),
      ),
    );
  }
}
