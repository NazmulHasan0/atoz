import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Myimagepicker extends StatefulWidget {
  const Myimagepicker({super.key});

  @override
  State<Myimagepicker> createState() => _MyimagepickerState();
}

class _MyimagepickerState extends State<Myimagepicker> {
  //
  final ImagePicker _imagePicker = ImagePicker(); // create ImagePicker instance
  XFile? image;
  List<XFile>? images;

  fromCamera() async {
    image = await _imagePicker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  fromGallery() async {
    image = await _imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  pickMultipleImage() async {
    images = await _imagePicker.pickMultiImage();
    setState(() {});
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image == null
                ? Icon(Icons.person)
                : Image.file(File(image!.path), width: 150),
            SizedBox(height: 10),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      fromCamera();
                    },
                    icon: Icon(Icons.camera)),
                IconButton(
                    onPressed: () {
                      fromGallery();
                    },
                    icon: Icon(Icons.photo_outlined)),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text("choose multiple images"),
            ),
            SizedBox(height: 10),
            images == null
                ? Text("Empty List")
                : ListView.builder(
                    itemCount: images!.length,
                    itemBuilder: (context, index) {
                      return Image.file(File(images![index].path), height: 150);
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
