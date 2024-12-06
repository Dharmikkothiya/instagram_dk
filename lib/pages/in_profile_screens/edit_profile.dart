import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/auth_classes.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:instagram_dk/pages/bottom_tab_screens/profile_page.dart';
import 'package:sizer/sizer.dart';

import '../bottom_navigation_tab_bar.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

TextEditingController nameController = TextEditingController();
TextEditingController userNameController = TextEditingController();
TextEditingController webSiteController = TextEditingController();
TextEditingController bioController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController genderController = TextEditingController();

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlueTextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      text: "Cancel",
                      style: FontStyles.h1BlackRegular),
                  Text("Edit Profile", style: FontStyles.h1BlackBold),
                  BlueTextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavigationTabBar(),
                            ));
                      },
                      text: "Done",
                      style: FontStyles.h1BlueBold)
                ],
              ),
              Container(
                height: 90.h,
                width: double.infinity,
                decoration: BoxDecoration(color: iWhiteBackGround),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    3.h.height(),
                    Center(
                      child: CircleAvatar(
                        foregroundImage: profilePic,
                        radius: 8.h,
                      ),
                    ),
                    Center(
                      child: BlueTextButton(
                          onPressed: () {},
                          text: "Change Profile Photo",
                          style: FontStyles.h2BlueRegular),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.all(3.w),
                      child: Column(
                        children: [
                          ProfileFormField(
                            label: "Name",
                            hintText: "Name",
                            controller: nameController,
                            inputType: TextInputType.name,
                          ),
                          ProfileFormField(
                              label: "Username",
                              hintText: "Username",
                              controller: userNameController,
                              inputType: TextInputType.name),
                          ProfileFormField(
                              label: "Website",
                              hintText: "Website",
                              controller: webSiteController,
                              inputType: TextInputType.url),
                          ProfileFormField(
                              label: "Bio",
                              hintText: "Bio",
                              controller: bioController,
                              inputType: TextInputType.name),
                        ],
                      ),
                    ),
                    Divider(),
                    BlueTextButton(
                        onPressed: () {},
                        text: "Switch to Professional Account",
                        style: FontStyles.h2BlueRegular),
                    Padding(
                      padding: EdgeInsets.all(3.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Private Information",
                              style: FontStyles.h1BlackBold),
                          ProfileFormField(
                              label: "Email",
                              hintText: "Email",
                              controller: userNameController,
                              inputType: TextInputType.emailAddress),
                          ProfileFormField(
                              label: "Phone",
                              hintText: "Phone",
                              controller: webSiteController,
                              inputType: TextInputType.number),
                          ProfileFormField(
                              label: "Gender",
                              hintText: "Gender",
                              controller: bioController,
                              inputType: TextInputType.name),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileFormField extends StatefulWidget {
  ProfileFormField(
      {super.key,
      required this.label,
      required this.hintText,
      required this.controller,
      required this.inputType});
  final String label;
  final String hintText;
  final TextEditingController controller;
  final TextInputType inputType;

  @override
  State<ProfileFormField> createState() => _ProfileFormFieldState();
}

class _ProfileFormFieldState extends State<ProfileFormField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.label, style: FontStyles.h1BlackRegular),
        TextFormField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              hintText: widget.hintText,
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: iGrayBackGround)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: iGrayBackGround)),
              border:
                  UnderlineInputBorder(borderSide: BorderSide(color: iWhite)),
              constraints: BoxConstraints(maxWidth: 63.w)),
          controller: widget.controller,
        )
      ],
    );
  }
}
