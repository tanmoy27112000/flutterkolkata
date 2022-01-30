import 'package:flutter/material.dart';
import 'package:flutterkolkata/helper/responsive_layout.dart';
import 'package:flutterkolkata/screen/event_page/web_event_page.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: WebEventPage(),
      mediumScreen: Scaffold(),
      smallScreen: Scaffold(),
    );
  }
}
