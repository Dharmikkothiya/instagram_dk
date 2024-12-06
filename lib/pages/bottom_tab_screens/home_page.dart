import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/auth_classes.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:sizer/sizer.dart';

import '../../database/people_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int totalLive = 1;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.camera,
                      size: iconSize,
                      color: iconColor,
                    ),
                  ),
                  9.w.width(),
                  Image.asset(
                    "assets/images/Instagram Logo.png",
                    scale: 1.5,
                  ),
                  4.w.width(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.live_tv_outlined,
                      size: iconSize,
                      color: iconColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send_outlined,
                      size: iconSize,
                      color: iconColor,
                    ),
                  )
                ],
              ),
              1.h.height(),
              Divider(
                height: 0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            // Container(
                            //   height: 100.0, // Specify the height
                            //   width: 100.0, // Specify the width
                            //   decoration: BoxDecoration(
                            //       shape: BoxShape.circle,
                            //       gradient: iGradiant),
                            // ),
                            ShaderMask(
                              shaderCallback: (bounds) =>
                                  iGradiant.createShader(bounds),
                              child: Icon(
                                Icons.circle,
                                size: iconSize + 58,
                                color: Colors
                                    .white, // The icon's base color (used as a fallback)
                              ),
                            ),
                            Icon(
                              Icons.circle,
                              size: iconSize + 53,
                              color: Colors
                                  .white, // The icon's base color (used as a fallback)
                            ),
                            CircleAvatar(
                              foregroundImage: profilePic,
                              radius: 3.8.h,
                            ),
                          ],
                        ),
                        Text(
                          "your Story",
                          style: FontStyles.h3BlackRegular,
                        )
                      ],
                    ),
                    Container(
                      color: iWhiteBackGround,
                      width: 20.w,
                      height: 13.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: peopleProfile.length,
                        itemBuilder: (context, index) {
                          return peopleProfile[index]['liveMod'] == true
                              ? Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            // Container(
                                            //   height: 100.0, // Specify the height
                                            //   width: 100.0, // Specify the width
                                            //   decoration: BoxDecoration(
                                            //       shape: BoxShape.circle,
                                            //       gradient: iGradiant),
                                            // ),
                                            ShaderMask(
                                              shaderCallback: (bounds) =>
                                                  iGradiant
                                                      .createShader(bounds),
                                              child: Icon(
                                                Icons.circle,
                                                size: iconSize + 58,
                                                color: Colors
                                                    .white, // The icon's base color (used as a fallback)
                                              ),
                                            ),
                                            Icon(
                                              Icons.circle,
                                              size: iconSize + 53,
                                              color: Colors
                                                  .white, // The icon's base color (used as a fallback)
                                            ),
                                            CircleAvatar(
                                              foregroundImage: AssetImage(
                                                peopleProfile[index]
                                                    ['profilePhoto'],
                                              ),
                                              radius: 3.8.h,
                                            ),
                                          ],
                                        ),
                                        peopleProfile[index]['liveMod'] == true
                                            ? Positioned(
                                                left: 30,
                                                bottom: 0,
                                                child: Padding(
                                                  padding: EdgeInsets.all(1.w),
                                                  child: Container(
                                                    height: 2.h,
                                                    child: Center(
                                                      child: Text("LIVE",
                                                          style: TextStyle(
                                                              fontSize: 8,
                                                              color: iWhite)),
                                                    ),
                                                    width: 3.h,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(3),
                                                        gradient: iPink,
                                                        border: Border.all(
                                                            color: iWhite,
                                                            width: 2)),
                                                  ),
                                                ),
                                              )
                                            : SizedBox()
                                      ],
                                    ),
                                    Text(
                                      peopleProfile[index]['profileName'],
                                      style: FontStyles.h3BlackRegular,
                                    )
                                  ],
                                )
                              : SizedBox();
                        },
                      ),
                    ),
                    Container(
                      color: iWhiteBackGround,
                      width: peopleProfile.length * 10.w,
                      height: 13.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: peopleProfile.length,
                        itemBuilder: (context, index) {
                          return peopleProfile[index]['storyUploaded'] == true
                              ? Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        // Container(
                                        //   height: 100.0, // Specify the height
                                        //   width: 100.0, // Specify the width
                                        //   decoration: BoxDecoration(
                                        //       shape: BoxShape.circle,
                                        //       gradient: iGradiant),
                                        // ),
                                        ShaderMask(
                                          shaderCallback: (bounds) =>
                                              iGradiant.createShader(bounds),
                                          child: Icon(
                                            Icons.circle,
                                            size: iconSize + 58,
                                            color: Colors
                                                .white, // The icon's base color (used as a fallback)
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle,
                                          size: iconSize + 53,
                                          color: Colors
                                              .white, // The icon's base color (used as a fallback)
                                        ),
                                        CircleAvatar(
                                          foregroundImage: AssetImage(
                                            peopleProfile[index]
                                                ['profilePhoto'],
                                          ),
                                          radius: 3.8.h,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      peopleProfile[index]['profileName'],
                                      style: FontStyles.h3BlackRegular,
                                    )
                                  ],
                                )
                              : SizedBox();
                        },
                      ),
                    ),
                  ],
                ),
              ),

// Helper method to reduce redundancy

              SizedBox(
                  width: double.infinity,
                  height: 70.h,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.w),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  foregroundImage: profilePic,
                                ),
                                3.w.width(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "joshu_i",
                                          style: FontStyles.h2BlackBold,
                                        ),
                                        Image(
                                            image: AssetImage(
                                                "assets/images/profile_tag.png"))
                                      ],
                                    ),
                                    Text(
                                      "Tokyo, Japan",
                                      style: FontStyles.h3BlackRegular,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.more_horiz,
                                      size: iconSize,
                                      color: iconColor,
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50.h,
                            child: PageView.builder(
                              itemBuilder: (context, index) {
                                return Image(
                                  image: AssetImage(
                                    "assets/images/reels_photo1.png",
                                  ),
                                  centerSlice: Rect.largest,
                                );
                              },
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    size: iconSize,
                                    color: iconColor,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.comment_bank_outlined,
                                    size: iconSize,
                                    color: iconColor,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.send_outlined,
                                    size: iconSize,
                                    color: iconColor,
                                  )),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.bookmark_border_outlined,
                                    size: iconSize,
                                    color: iconColor,
                                  ))
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  foregroundImage: profilePic,
                                  radius: 3.w,
                                ),
                                3.w.width(),
                                Text("Liked by craig_love and 44,686 others")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.w),
                            child: Text(
                                "joshua_l The game in Japan was amazing and I want to share some photos"),
                          )
                        ],
                      );
                    },
                  )),
              Divider(
                height: 0,
              )
            ],
          )),
        ),
      ),
    );
  }
}
