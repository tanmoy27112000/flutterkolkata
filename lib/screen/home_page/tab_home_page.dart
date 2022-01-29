import 'package:flutter/material.dart';
import 'package:flutterkolkata/widget/app_bar/app_bar.dart';
import 'package:sizer/sizer.dart';

class TabHomepage extends StatefulWidget {
  const TabHomepage({Key? key}) : super(key: key);

  @override
  State<TabHomepage> createState() => _TabHomepageState();
}

class _TabHomepageState extends State<TabHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
          width: 100.w,
          height: 100.h,
          child: Column(
            children: const <Widget>[
              Appbar(),
            ],
          ),
        )
      ],
    ));
  }
}
