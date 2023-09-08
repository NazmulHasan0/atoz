import 'package:flutter/material.dart';

class Myrefreshindicator extends StatefulWidget {
  @override
  State<Myrefreshindicator> createState() => _MyrefreshindicatorState();
}

class _MyrefreshindicatorState extends State<Myrefreshindicator> {
  //
  Set<Map<String, String>> languages = {
    {
      'language_name': 'Python',
      'description': 'This is Python description',
    },
    {
      'language_name': 'JavaScript',
      'description': 'This is JavaScript description',
    },
    {
      'language_name': 'Java',
      'description': 'This is Java description',
    },
    {
      'language_name': 'C#',
      'description': 'This is C# description',
    },
    {
      'language_name': 'C++',
      'description': 'This is Python description',
    },
    {
      'language_name': 'Python',
      'description': 'This is C++ description',
    },
    {
      'language_name': 'C',
      'description': 'This is C description',
    },
  };

  showSnackbar() {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Refreshed Successfully"),
    ));
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Refresh Indicator"), centerTitle: true),
      body: RefreshIndicator(
        onRefresh: () => Future.delayed(Duration(seconds: 3), () {
          languages.add({
            'language_name': 'Dart',
            'description': 'This is Dart description',
          });
          showSnackbar();
        }),
        child: Padding(
          padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
          child: ListView.builder(
            itemCount: languages.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 4,
                child: ListTile(
                  title: Text(languages.elementAt(index)['language_name']!),
                  subtitle: Text(languages.elementAt(index)['description']!),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
