import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';

import 'bottom_tab_screens/home_page.dart';

class SlashPage extends StatefulWidget {
  const SlashPage({super.key});

  @override
  State<SlashPage> createState() => _SlashPageState();
}

class _SlashPageState extends State<SlashPage> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        change = !change;
      });
      // Add any additional logic here, like navigation or state updates
    });
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            change = !change;
          });
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: iWhite),
          child: AnimatedAlign(
              child: Image.asset("assets/images/Instagram Logo.png"),
              onEnd: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
              alignment: change ? Alignment.center : Alignment.bottomCenter,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(seconds: 5)),
        ),
      ),
    );
  }
}
