import 'package:flutter/material.dart';
import 'package:flutterkolkata/helper/responsive_layout.dart';

import 'mobile_home_page.dart';
import 'tab_home_page.dart';
import 'web_home_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: WebHomepage(),
      mediumScreen: TabHomepage(),
      smallScreen: MobileHomepage(),
    );
  }
}
