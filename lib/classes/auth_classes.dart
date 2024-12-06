import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:sizer/sizer.dart';

class BlueButton extends MaterialButton {
  BlueButton(
      {required VoidCallback onPressed,
      required String text,
      bool minimumSize = false})
      : super(
          onPressed: onPressed, elevation: 0,
          minWidth: minimumSize == false ? double.infinity : 50.w,
          height: 6.5.h,
          color: iBlue, // Button color (blue in this case)
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0), // Rounded corners
          ),
          child: Text(text, style: FontStyles.h2WhiteRegular),
        );
}

class BlueTextButton extends TextButton {
  BlueTextButton(
      {required VoidCallback onPressed,
      required String text,
      required TextStyle style,
      bool minimumSize = false})
      : super(
          onPressed: onPressed,
          child: Text(
            text,
            style: style,
          ),
        );
}

class BackIconButton extends StatelessWidget {
  BackIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios_new_outlined,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}

class AuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  const AuthTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: iGray.withOpacity(0.3), // Custom border color
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: iGray.withOpacity(0.6), // Custom border color
            width: 1.5,
          ),
        ),
        hintText: hintText, labelStyle: FontStyles.h2GrayRegular,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: iGray.withOpacity(0.3), // Custom border color
            width: 1.0,
          ),
        ),
        filled: true,
        fillColor: iGrayBackGround, // Background color
      ),
      validator: validator,
    );
  }
}

ImageProvider profilePic = AssetImage("assets/images/profile_avatar1.png");
