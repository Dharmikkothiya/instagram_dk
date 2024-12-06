import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/auth_classes.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';
import 'package:sizer/sizer.dart';

class SherchPage extends StatefulWidget {
  const SherchPage({super.key});

  @override
  State<SherchPage> createState() => _SherchPageState();
}

TextEditingController searchC = TextEditingController();

class _SherchPageState extends State<SherchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              2.h.height(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: searchC,
                    decoration: InputDecoration(
                      constraints: BoxConstraints(maxWidth: 80.w),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(
                        Icons.search,
                        size: iconSize,
                        color: iconColor,
                      ),
                      hintText: "search", hintStyle: FontStyles.h1GrayRegular,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: iGrayBackGround, // Background color
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.center_focus_strong_outlined,
                        size: iconSize,
                        color: iconColor,
                      ))
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 6.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(1.5.w),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(1.5.w),
                          child: Text(
                            "datahjj",
                            style: FontStyles.h1BlackBold,
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: iWhiteBackGround,
                            border: Border.all(color: iGray)),
                      ),
                    );
                  },
                ),
              ),
              Container(
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
              )
            ],
          )),
        ),
      ),
    );
  }
}
