import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/auth_classes.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:instagram_dk/pages/auth_screens/verify_otp.dart';
import 'package:sizer/sizer.dart';

import 'log_in_page.dart';

class GetOtp extends StatefulWidget {
  const GetOtp({super.key});

  @override
  State<GetOtp> createState() => _GetOtpState();
}

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController rePasswordController = TextEditingController();
TextEditingController userNameController = TextEditingController();

class _GetOtpState extends State<GetOtp> {
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
                  Text(
                    "Reset Password",
                    style: FontStyles.h1BlackBold,
                  ),
                  2.h.height(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Text(
                      "We can help you reset your password using your instagram username,phone number,or the email linked to your account.",
                      style: FontStyles.h2GrayRegular,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  2.h.height(),
                  AuthTextField(
                      controller: nameController,
                      hintText: "Enter Email,Phone or Username"),
                  2.h.height(),
                  BlueButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerifyOtp(),
                            ));
                      },
                      text: "Get Otp")
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
