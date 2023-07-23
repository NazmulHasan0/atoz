import 'package:flutter/material.dart';

class MyNestedscrollview extends StatelessWidget {
  const MyNestedscrollview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          controller: ScrollController(keepScrollOffset: true),
          headerSliverBuilder: ((context, innerBoxIsScrolled) {
            return <Widget>[
              SliverList(
                delegate: SliverChildListDelegate([
                  //* এখানে screen এর উপরের code লিখতে হবে
                ]),
              )
            ];
          }),
          body: Center(
              child: Text(
                  "Nested Scroll View")) //* এখানে screen এর নিচের code লিখতে হবে
          ),
    );
  }
}
