import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:instagram_dk/pages/bottom_tab_screens/add_reels_page.dart';
import 'package:instagram_dk/pages/bottom_tab_screens/faverite_page.dart';
import 'package:instagram_dk/pages/bottom_tab_screens/home_page.dart';
import 'package:instagram_dk/pages/bottom_tab_screens/profile_page.dart';
import 'package:instagram_dk/pages/bottom_tab_screens/sherch_page.dart';
import 'package:sizer/sizer.dart';

import '../classes/auth_classes.dart';

class BottomNavigationTabBar extends StatefulWidget {
  const BottomNavigationTabBar({super.key});

  @override
  State<BottomNavigationTabBar> createState() => _BottomNavigationTabBarState();
}

class _BottomNavigationTabBarState extends State<BottomNavigationTabBar> {
  int bottomScreenSeletion = 0;
  List screenList = [
    HomePage(),
    SherchPage(),
    AddReelsPage(),
    FaveritePage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: iconSize,
                color: iconColor,
              ),
              activeIcon: Icon(
                Icons.home,
                size: iconSize,
                color: iconColor,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: iconSize,
                color: iconColor,
              ),
              activeIcon: Icon(
                Icons.search,
                size: iconSize + 5,
                color: iconColor,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                size: iconSize,
                color: iconColor,
              ),
              activeIcon: Icon(
                Icons.add_box_outlined,
                size: iconSize + 5,
                color: iconColor,
              ),
              label: "AddReel"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                size: iconSize,
                color: iconColor,
              ),
              activeIcon: Icon(
                Icons.favorite,
                size: iconSize,
                color: iconColor,
              ),
              label: "Faverite"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                foregroundImage: profilePic,
                radius: 1.7.h,
              ),
              activeIcon: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: iconSize + 11,
                    color: iconColor,
                  ),
                  CircleAvatar(
                    foregroundImage: profilePic,
                    radius: 1.8.h,
                  ),
                ],
              ),
              label: "Profile")
        ],
        selectedItemColor: iGray,
        showSelectedLabels: false,
        unselectedItemColor: iBlack,
        onTap: (value) {
          bottomScreenSeletion = value;
          setState(() {});
        },
        currentIndex: bottomScreenSeletion,
      ),
      body: screenList[bottomScreenSeletion],
    );
  }
}
