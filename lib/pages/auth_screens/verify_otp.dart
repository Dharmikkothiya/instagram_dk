import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/auth_classes.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:instagram_dk/pages/auth_screens/reset_password.dart';
import 'package:sizer/sizer.dart';

import 'log_in_page.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({super.key});

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController rePasswordController = TextEditingController();
TextEditingController userNameController = TextEditingController();
TextEditingController otpController = TextEditingController();

class _VerifyOtpState extends State<VerifyOtp> {
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
                  5.h.height(),
                  AuthTextField(
                    controller: otpController,
                    hintText: "Verify 4 digit number",
                    keyboardType: TextInputType.number,
                  ),
                  2.h.height(),
                  BlueButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResetPassword(),
                            ));
                      },
                      text: "Verify Otp")
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
                  Text("Continue account?"),
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
                      style: FontStyles.h2BlueRegular)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
