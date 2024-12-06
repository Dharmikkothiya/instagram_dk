import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/auth_classes.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:sizer/sizer.dart';

import 'log_in_page.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController rePasswordController = TextEditingController();
TextEditingController userNameController = TextEditingController();

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: 5.w.paddingAll(),
              child: Column(
                children: [
                  15.h.height(),
                  Image.asset("assets/images/Instagram Logo.png"),
                  10.h.height(),
                  AuthTextField(
                      controller: passwordController,
                      hintText: "Enter New Password"),
                  2.h.height(),
                  AuthTextField(
                      controller: rePasswordController,
                      hintText: "New Password Confirmation"),
                  5.h.height(),
                  BlueButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogInPage(),
                            ));
                      },
                      text: "Reset Password")
                ],
              ),
            ),
          ),
          Divider(),
          Container(
            alignment: Alignment.topCenter,
            width: double.infinity,
            height: 80,
            child: Padding(
              padding: 1.2.h.paddingAll(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Continue an account?"),
                  2.w.width(),
                  BlueTextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogInPage(),
                            ));
                      },
                      text: 'Log in',
                      style: FontStyles.h2BlueRegular),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
