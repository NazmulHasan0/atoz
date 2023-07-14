import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyRichtext extends StatelessWidget {
  const MyRichtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rich Text"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                  text: 'Don\'t have an account?',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  children: [
                    TextSpan(
                      text: ' Sign up',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                      ),

                      recognizer: TapGestureRecognizer()
                        ..onTap = () {}, //! navigate to desired screen
                    ),
                    //
                    //
                    TextSpan(
                        text: ' business,',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //! open desired screen
                          }),
                  ]),
            ),
            //
            //
            //
            Text.rich(
              TextSpan(children: [
                TextSpan(text: "Don't "),
                TextSpan(
                    text: "Expect ",
                    style: TextStyle(fontSize: 20, color: Colors.blue)),
                TextSpan(text: "Help"),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
