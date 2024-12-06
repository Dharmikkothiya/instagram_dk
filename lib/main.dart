import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagram_dk/pages/auth_screens/get_otp.dart';
import 'package:instagram_dk/pages/auth_screens/log_in_page.dart';
import 'package:instagram_dk/pages/auth_screens/log_in_slash_page.dart';
import 'package:instagram_dk/pages/auth_screens/reset_password.dart';
import 'package:instagram_dk/pages/auth_screens/sing_up_page.dart';
import 'package:instagram_dk/pages/auth_screens/verify_otp.dart';
import 'package:instagram_dk/pages/bottom_navigation_tab_bar.dart';

import 'package:instagram_dk/pages/bottom_tab_screens/home_page.dart';

import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyA2_yU82PECO86YvBTc450HRSoNijNRq68",
      appId: "1:628982387523:android:413c5097f9aeba2a1e95f6",
      messagingSenderId: "628982387523",
      projectId: "instagram-1cb0b",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram',
        theme: ThemeData(),
        home: const LogInSlashPage(),
      );
    });
  }
}
