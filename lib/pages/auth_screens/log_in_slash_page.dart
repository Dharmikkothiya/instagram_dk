import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/auth_classes.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:instagram_dk/pages/auth_screens/log_in_page.dart';
import 'package:instagram_dk/pages/auth_screens/sing_up_page.dart';
import 'package:sizer/sizer.dart';

class LogInSlashPage extends StatefulWidget {
  const LogInSlashPage({super.key});

  @override
  State<LogInSlashPage> createState() => _LogInSlashPageState();
}

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController rePasswordController = TextEditingController();
TextEditingController userNameController = TextEditingController();

class _LogInSlashPageState extends State<LogInSlashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: 5.w.paddingAll(),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      8.h.height(),
                      Image.asset("assets/images/Instagram Logo.png"),
                      9.h.height(),
                      CircleAvatar(
                        foregroundImage: profilePic,
                        radius: 6.5.h,
                      ),
                      2.h.height(),
                      Text("jacob_w", style: FontStyles.h2BlackBold),
                      1.h.height(),
                      BlueButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LogInPage(),
                                ));
                          },
                          text: "Log In"),
                      2.5.h.height(),
                      BlueTextButton(
                          onPressed: () {},
                          text: "Switch accounts",
                          style: FontStyles.h2BlueBold)
                    ],
                  ),
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
                    Text("Don’t have an account?",
                        style: FontStyles.h3GrayRegular),
                    2.w.width(),
                    BlueTextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SingUpPage(),
                              ));
                        },
                        text: "Sign up.",
                        style: FontStyles.h3BlackBold),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
