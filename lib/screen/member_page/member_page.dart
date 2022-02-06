import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterkolkata/bloc/member_bloc.dart';
import 'package:flutterkolkata/helper/responsive_layout.dart';
import 'package:flutterkolkata/screen/member_page/mobile_page/mobile_member_page.dart';
import 'package:flutterkolkata/screen/member_page/tab_page/tab_member_page.dart';
import 'package:flutterkolkata/screen/member_page/web_member_page.dart';

class MemberPage extends StatefulWidget {
  const MemberPage({Key? key}) : super(key: key);

  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  final MemberBloc _memberBloc = MemberBloc();

  @override
  void initState() {
    _memberBloc.add(const MemberEvent.getMember());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MemberBloc, MemberState>(
      bloc: _memberBloc,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          error: (message) => Scaffold(
            body: Center(
              child: Text(message),
            ),
          ),
          loaded: (member) => ResponsiveWidget(
            largeScreen: WebMemberPage(memeberList: member),
            mediumScreen: TabMemberPage(memeberList: member),
            smallScreen: MobileMemberPage(memeberList: member),
          ),
        );
      },
    );
  }
}
