import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/auth_classes.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:sizer/sizer.dart';

class AddReelsPage extends StatefulWidget {
  const AddReelsPage({super.key});

  @override
  State<AddReelsPage> createState() => _AddReelsPageState();
}

class _AddReelsPageState extends State<AddReelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          )),
        ),
      ),
    );
  }
}
