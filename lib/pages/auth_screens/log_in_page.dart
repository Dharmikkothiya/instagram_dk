import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/auth_classes.dart';

import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:instagram_dk/pages/auth_screens/get_otp.dart';
import 'package:instagram_dk/pages/auth_screens/sing_up_page.dart';
import 'package:instagram_dk/pages/bottom_navigation_tab_bar.dart';
import 'package:sizer/sizer.dart';

import '../../classes/create_account.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

FirebaseAuth auth = FirebaseAuth.instance;
TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController rePasswordController = TextEditingController();
TextEditingController userNameController = TextEditingController();

class _LogInPageState extends State<LogInPage> {
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
                  4.h.height(),
                  Row(
                    children: [BackIconButton(), Spacer()],
                  ),
                  10.5.h.height(),
                  Image.asset("assets/images/Instagram Logo.png"),
                  4.h.height(),
                  AuthTextField(controller: emailController, hintText: "Name"),
                  1.7.h.height(),
                  AuthTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true,
                  ),
                  0.4.h.height(),
                  Row(
                    children: [
                      Spacer(),
                      BlueTextButton(
                          onPressed: () async {
                            await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GetOtp(),
                                ));
                          },
                          text: "Forgot password?",
                          style: FontStyles.h3BlueRegular)
                    ],
                  ),
                  1.7.h.height(),
                  BlueButton(
                      onPressed: () {
                        AuthMethods().logIn(
                            email: emailController.text,
                            password: passwordController.text);
                        // UserCredential user =
                        //     await auth.signInWithEmailAndPassword(
                        //         email: emailController.text,
                        //         password: passwordController.text);
                        // print(user.user?.uid);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavigationTabBar(),
                            ));
                      },
                      text: "Log In"),
                  2.h.height(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/facebook_logo.png",
                        scale: 1.5,
                      ),
                      BlueTextButton(
                          onPressed: () {},
                          text: "Log in with Facebook",
                          style: FontStyles.h2BlueBold)
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          height: 5.h,
                        ),
                      ),
                      Center(
                          child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Text("OR", style: FontStyles.h2GrayBold),
                      )),
                      Expanded(
                        child: Divider(
                          height: 5.h,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have an account?",
                          style: FontStyles.h2GrayRegular),
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
                          style: FontStyles.h2BlueRegular),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Container(
            alignment: Alignment.topCenter,
            width: double.infinity,
            height: 80,
            child: Center(
                child: Text(
              "Instagram от Facebook",
              style: FontStyles.h3GrayRegular,
            )),
          )
        ],
      ),
    );
  }
}
