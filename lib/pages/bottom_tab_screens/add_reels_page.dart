import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_dk/classes/auth_classes.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:sizer/sizer.dart';

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
              // SizedBox(width: 100,height: 100,child: ImagePicker().pickImage(source: ImageSource.camera);
            ],
          )),
        ),
      ),
    );
  }
}
