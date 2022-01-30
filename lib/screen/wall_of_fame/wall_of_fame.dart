import 'package:flutter/material.dart';
import 'package:flutterkolkata/helper/responsive_layout.dart';
import 'package:flutterkolkata/screen/wall_of_fame/mobile_wall_of_fame.dart';
import 'package:flutterkolkata/screen/wall_of_fame/tab_wall_of_fame.dart';
import 'package:flutterkolkata/screen/wall_of_fame/web_wall_of_fame.dart';

class WallOfFamePage extends StatefulWidget {
  const WallOfFamePage({Key? key}) : super(key: key);

  @override
  State<WallOfFamePage> createState() => _WallOfFamePageState();
}

class _WallOfFamePageState extends State<WallOfFamePage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: WebWallOfFame(),
      mediumScreen: TabWallOfFame(),
      smallScreen: MobileWallOfFame(),
    );
  }
}
