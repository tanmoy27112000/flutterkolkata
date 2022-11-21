import 'package:flutterkolkata/screen/event_page/event_page.dart';
import 'package:flutterkolkata/screen/home_page/home_page.dart';
import 'package:flutterkolkata/screen/member_page/member_page.dart';
import 'package:flutterkolkata/screen/wall_of_fame/wall_of_fame.dart';
import 'package:qlevar_router/qlevar_router.dart';

class AppRoutes {
  static String homepage = "Homepage";
  static String wallOfFame = "WallOfFamePage";
  static String events = "EventPage";
  static String member = "MemberPage";
  final routes = [
    QRoute(name: homepage, path: '/', builder: () => Homepage(), middleware: [
      QMiddlewareBuilder(
        onEnterFunc: () async => print('-- Enter Parent page --'),
        onExitFunc: () async => print('-- Exit Parent page --'),
        onMatchFunc: () async => print('-- Parent page Matched --'),
      ),
    ]),
    QRoute(
      name: wallOfFame,
      path: '/walloffame',
      builder: () => WallOfFamePage(),
    ),
    QRoute(
      name: events,
      path: '/events',
      builder: () => EventPage(),
    ),
    QRoute(
      name: member,
      path: '/members',
      builder: () => MemberPage(),
    ),
  ];
}
