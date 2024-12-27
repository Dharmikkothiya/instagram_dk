import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/auth_classes.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:instagram_dk/pages/auth_screens/log_in_page.dart';
import 'package:sizer/sizer.dart';

import '../../classes/create_account.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

FirebaseAuth auth = FirebaseAuth.instance;
// CollectionReference user1 = FirebaseFirestore.instance.collection("Users");

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController rePasswordController = TextEditingController();
TextEditingController userNameController = TextEditingController();

class _SingUpPageState extends State<SingUpPage> {
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
                  5.h.height(),
                  Image.asset("assets/images/Instagram Logo.png"),
                  Text(
                    textAlign: TextAlign.center,
                    "Sign up to see photos and videos from your friends.",
                    style: FontStyles.h1GrayRegular,
                  ),
                  2.h.height(),
                  BlueButton(onPressed: () {}, text: "Log in with Facebook"),
                  2.h.height(),
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
                  2.h.height(),
                  AuthTextField(controller: emailController, hintText: "Email"),
                  2.h.height(),
                  AuthTextField(
                      controller: nameController, hintText: "Full Name"),
                  2.h.height(),
                  AuthTextField(
                      controller: userNameController, hintText: "UserName"),
                  2.h.height(),
                  AuthTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true,
                  ),
                  2.h.height(),
                  BlueButton(
                      onPressed: () {
                        // user1.doc("123").set({
                        //   "user_id": "",
                        //   "username": userNameController.text,
                        //   "email": emailController.text,
                        //   "password_hash": passwordController.text,
                        //   "full_name": nameController.text,
                        //   "bio": "",
                        //   "profile_pic": "",
                        //   "created_at": FieldValue.serverTimestamp(),
                        //   "updated_at": FieldValue.serverTimestamp(),
                        AuthMethods().createAccount(
                            email: emailController.text,
                            password: passwordController.text,
                            username: userNameController.text,
                            name: nameController.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogInPage(),
                            ));
                        // });
                      },
                      text: "Sign up"),
                  3.h.height(),
                  Text(
                    textAlign: TextAlign.center,
                    "By signing up, you agree to our",
                    style: FontStyles.h2GrayRegular,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Terms & Privacy Policy",
                    style: FontStyles.h2GrayBold,
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
            child: Padding(
              padding: 1.2.h.paddingAll(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account?",
                    style: FontStyles.h2BlackBold,
                  ),
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
