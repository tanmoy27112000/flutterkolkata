import 'package:flutter/material.dart';
import 'package:flutterkolkata/screen/event_page/event_page.dart';
import 'package:flutterkolkata/screen/home_page/home_page.dart';
import 'package:flutterkolkata/screen/member/member_page.dart';
import 'package:flutterkolkata/screen/wall_of_fame/wall_of_fame.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Homepage(),
      ),
      GoRoute(
        path: '/wall_of_fame',
        builder: (context, state) => const WallOfFamePage(),
      ),
      GoRoute(
        path: '/members',
        builder: (context, state) => const MemberPage(),
      ),
      GoRoute(
        path: '/events',
        builder: (context, state) => const EventPage(),
      ),
    ],
  );

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Kolkata',
        theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
      ),
    );
  }
}
