import 'package:flutter/material.dart';
import 'package:instagram_dk/classes/font_dictionary.dart';

class FaveritePage extends StatefulWidget {
  const FaveritePage({super.key});

  @override
  State<FaveritePage> createState() => _FaveritePageState();
}

class _FaveritePageState extends State<FaveritePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: 2, vsync: this); // Initialize TabController
  }

  @override
  void dispose() {
    tabController.dispose(); // Dispose of the controller when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5,
        leading: SizedBox(),
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(text: "Following"),
            Tab(text: "You"),
          ],
          padding: EdgeInsets.zero,
          indicatorColor: iBlack,
          labelStyle: FontStyles.h1BlackBold,
          labelColor: iBlack,
          unselectedLabelColor: iGrayBackGround,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Center(
              child: Text("Following Tab Content")), // Content for "Following"
          Center(child: Text("You Tab Content")), // Content for "You"
        ],
      ),
    );
  }
}
