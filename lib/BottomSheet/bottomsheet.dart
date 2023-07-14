import 'package:flutter/material.dart';

class Mybottomsheet extends StatelessWidget {
  const Mybottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom-Sheet"), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) {
                  return Container(
                    height: 250,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.photo),
                              SizedBox(width: 10),
                              Text("Photos"),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.camera_alt_outlined),
                              SizedBox(width: 10),
                              Text("Camera"),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.notes),
                              SizedBox(width: 10),
                              Text("Notes"),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.file_open_sharp),
                              SizedBox(width: 10),
                              Text("Files"),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.document_scanner),
                              SizedBox(width: 10),
                              Text("Documents"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
          child: Text("Click"),
        ),
      ),
    );
  }
}
