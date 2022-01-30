import 'package:flutter/material.dart';
import 'package:flutterkolkata/helper/responsive_layout.dart';
import 'package:flutterkolkata/screen/member/web_member_page.dart';

class MemberPage extends StatefulWidget {
  const MemberPage({Key? key}) : super(key: key);

  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: WebMemberPage(),
      mediumScreen: Scaffold(
        backgroundColor: Colors.red,
      ),
      smallScreen: Scaffold(),
    );
  }
}
