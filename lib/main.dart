import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutterkolkata/screen/event_page/event_page.dart';
import 'package:flutterkolkata/screen/home_page/home_page.dart';
import 'package:flutterkolkata/screen/member/member_page.dart';
import 'package:flutterkolkata/screen/wall_of_fame/wall_of_fame.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '/': (context, state, data) => const BeamPage(
              child: Homepage(),
              title: "Flutter Kolkata",
            ),
        '/wall_of_fame': (context, state, data) => const BeamPage(
              child: WallOfFamePage(),
              title: "Wall of Fame",
            ),
        '/members': (context, state, data) => const BeamPage(
              child: MemberPage(),
              title: "Members",
            ),
        '/events': (context, state, data) => const BeamPage(
              child: EventPage(),
              title: "Events",
            ),
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Kolkata',
        theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
        routerDelegate: routerDelegate,
        routeInformationParser: BeamerParser(),
      ),
    );
  }
}
