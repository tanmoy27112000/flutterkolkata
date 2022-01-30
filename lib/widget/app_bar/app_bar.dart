import 'package:flutter/material.dart';
import 'package:flutterkolkata/helper/responsive_layout.dart';
import 'package:flutterkolkata/widget/app_bar/tab_app_bar.dart';
import 'package:flutterkolkata/widget/app_bar/web_app_bar.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: WebAppbar(),
      mediumScreen: TabAppbar(),
      smallScreen: SizedBox(),
    );
  }
}
