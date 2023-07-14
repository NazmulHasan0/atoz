import 'package:atoz/AlertDialog/alertdialog.dart';
import 'package:atoz/Align/align.dart';
import 'package:atoz/AppBar%20&%20PreferredSize/appbar.dart';
import 'package:atoz/Bottom%20Navigation%20Bar/bottomnavbar.dart';
import 'package:atoz/BottomSheet/bottomsheet.dart';
import 'package:atoz/Button/button.dart';
import 'package:atoz/CheckBox/checkbox.dart';
import 'package:atoz/Container/container.dart';
import 'package:atoz/Date%20Picker/datepicker.dart';
import 'package:atoz/Image/image.dart';
import 'package:atoz/Rich%20Text/richtext.dart';
import 'package:atoz/SnackBar/snackbar.dart';
import 'package:atoz/Stack-Positioned/stack_positioned.dart';
import 'package:atoz/Wrap/wrap.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/MyBottomnavbar',
      routes: {
        '/MyBottomnavbar': (context) => MyBottomnavbar(),
        '/MyCheckbox': (context) => MyCheckbox(),
        '/Mybottomsheet': (context) => Mybottomsheet(),
        '/MyAlertdialog': (context) => MyAlertdialog(),
        '/MyDatepicker': (context) => MyDatepicker(),
        '/MySnackbar': (context) => MySnackbar(),
        '/MyAlign': (context) => MyAlign(),
        '/MyStack': (context) => MyStack(),
        '/MyImage': (context) => MyImage(),
        '/MyContainer': (context) => MyContainer(),
        '/MyButton': (context) => MyButton(),
        '/MyWrap': (context) => MyWrap(),
        '/MyRichtext': (context) => MyRichtext(),
        '/MyAppbar': (context) => MyAppbar(),
      },
    );
  }
}
