import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/auth_classes.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:instagram_dk/pages/in_profile_screens/edit_profile.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController1;

  @override
  void initState() {
    super.initState();
    tabController1 =
        TabController(length: 2, vsync: this); // Initialize TabController
  }

  @override
  void dispose() {
    tabController1.dispose(); // Dispose of the controller when done
    super.dispose();
  }

  int? selecteditem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        width: 70.w,
        elevation: 50,
        child: Padding(
          padding: EdgeInsets.all(5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.h.height(),
              Text(
                "pofilename",
                style: FontStyles.h1BlackRegular,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.arrow_down_square,
                        size: iconSize,
                        color: iconColor,
                      )),
                  1.w.width(),
                  Text(
                    "Archive",
                    style: FontStyles.h1BlackRegular,
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.access_time,
                        size: iconSize,
                        color: iconColor,
                      )),
                  1.w.width(),
                  Text(
                    "Your Activity",
                    style: FontStyles.h1BlackRegular,
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.center_focus_strong_outlined,
                        size: iconSize,
                        color: iconColor,
                      )),
                  1.w.width(),
                  Text(
                    "Nametag",
                    style: FontStyles.h1BlackRegular,
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.bookmark,
                        size: iconSize,
                        color: iconColor,
                      )),
                  1.w.width(),
                  Text(
                    "Saved",
                    style: FontStyles.h1BlackRegular,
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.list_dash,
                        size: iconSize,
                        color: iconColor,
                      )),
                  1.w.width(),
                  Text(
                    "Close Friends",
                    style: FontStyles.h1BlackRegular,
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_add_alt,
                        size: iconSize,
                        color: iconColor,
                      )),
                  1.w.width(),
                  Text(
                    "Discover People",
                    style: FontStyles.h1BlackRegular,
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.facebook_outlined,
                        size: iconSize,
                        color: iconColor,
                      )),
                  1.w.width(),
                  Text(
                    "Open Facebook",
                    style: FontStyles.h1BlackRegular,
                  )
                ],
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.settings,
                        size: iconSize,
                        color: iconColor,
                      )),
                  1.w.width(),
                  Text(
                    "Settings",
                    style: FontStyles.h1BlackRegular,
                  )
                ],
              ),
            ],
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        backgroundColor: iWhiteBackGround,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Spacer(),
                  DropdownButton(
                    value: selecteditem,
                    items: [
                      DropdownMenuItem(
                        child: Text("data   sjj"),
                        value: 0,
                      ),
                      DropdownMenuItem(
                        child: Text("data2"),
                        value: 1,
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selecteditem = value;
                      });
                    },
                  ),
                  Spacer(),
                  Builder(
                    builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      icon: const Icon(
                        CupertinoIcons.line_horizontal_3,
                        size: iconSize,
                        color: iconColor,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      foregroundImage: profilePic,
                      radius: 5.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "54",
                          style: FontStyles.h1BlackBold,
                        ),
                        Text(
                          "Posts",
                          style: FontStyles.h3BlackRegular,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "834",
                          style: FontStyles.h1BlackBold,
                        ),
                        Text(
                          "Followers",
                          style: FontStyles.h3BlackRegular,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "162",
                          style: FontStyles.h1BlackBold,
                        ),
                        Text(
                          "Following",
                          style: FontStyles.h3BlackRegular,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "data",
                      style: FontStyles.h2BlackBold,
                    ),
                    Row(
                      children: [
                        Text(
                          "data",
                          style: FontStyles.h2BlackRegular,
                        ),
                        Text(
                          "data",
                          style: FontStyles.h2BlueRegular,
                        ),
                      ],
                    ),
                    Text(
                      "data",
                      style: FontStyles.h2BlackRegular,
                    ),
                  ],
                ),
              ),
              1.h.height(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfile(),
                        ));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 4.h,
                    child: Center(
                      child: Text(
                        "Edit Profile",
                        style: FontStyles.h2BlackBold,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: iWhiteBackGround,
                        border: Border.all(color: iGray)),
                  ),
                ),
              ),
              SizedBox(
                child: Row(
                  children: [
                    CircleAvatar(
                      foregroundImage: profilePic,
                      radius: 5.h,
                    )
                  ],
                ),
                height: 10.h,
                width: double.infinity,
              ),
              Divider(),
              TabBar(
                controller: tabController1,
                tabs: [
                  Icon(
                    Icons.grid_on_outlined,
                    size: iconSize,
                  ),
                  Icon(
                    Icons.person_pin_outlined,
                    size: iconSize,
                  ),
                ],
                padding: EdgeInsets.zero,
                indicatorColor: iBlack,
                labelStyle: FontStyles.h1BlackBold,
                labelColor: iBlack,
                unselectedLabelColor: iGrayBackGround,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: TabBarView(
                  controller: tabController1,
                  children: [
                    Center(
                        child: Container(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 1.w,
                            mainAxisSpacing: 1.w),
                        itemBuilder: (context, index) {
                          return Image(
                            image: AssetImage(
                              "assets/images/reels_photo1.png",
                            ),
                            centerSlice: Rect.largest,
                          );
                        },
                      ),
                      width: double.infinity,
                      height: 73.h,
                    )), // Content for "Following"
                    Center(
                        child: Container(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 1.w,
                            mainAxisSpacing: 1.w),
                        itemBuilder: (context, index) {
                          return Image(
                            image: AssetImage(
                              "assets/images/reels_photo1.png",
                            ),
                            centerSlice: Rect.largest,
                          );
                        },
                      ),
                      width: double.infinity,
                      height: 73.h,
                    )), // Content for "You"
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
