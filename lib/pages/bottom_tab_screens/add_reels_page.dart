import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_dk/classes/auth_classes.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

class AddReelsPage extends StatefulWidget {
  const AddReelsPage({super.key});

  @override
  State<AddReelsPage> createState() => _AddReelsPageState();
}

// Future<void> getLostData() async {
//   final ImagePicker picker = ImagePicker();
//   final LostDataResponse response = await picker.retrieveLostData();
//   if (response.isEmpty) {
//     return;
//   }
//   final List<XFile>? files = response.files;
//
//
//
// }
VideoPlayerController? _controller;
VideoPlayerController? _toBeDisposed;
ImagePicker image = ImagePicker();

File? image1;

class _AddReelsPageState extends State<AddReelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () async {
                    final XFile? pickedFile =
                        await image.pickImage(source: ImageSource.gallery);
                    image1 = File(pickedFile!.path);

                    /// store this path in local storage
                    // image1.path
                    setState(() {});
                  },
                  icon: Icon(Icons.upload)),

              image1 != null
                  ? Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(image: FileImage(image1!))),
                    )
                  : SizedBox()

              // SizedBox(width: 100,height: 100,child: ImagePicker().pickImage(source: ImageSource.camera);
            ],
          )),
        ),
      ),
    );
  }
}
