import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterkolkata/bloc/member_bloc.dart';
import 'package:flutterkolkata/screen/event_page/event_page.dart';
import 'package:flutterkolkata/screen/home_page/home_page.dart';
import 'package:flutterkolkata/screen/member_page/member_page.dart';
import 'package:flutterkolkata/screen/wall_of_fame/wall_of_fame.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:url_strategy/url_strategy.dart';

import 'firebase_options.dart';

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ModularApp(module: AppModule(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MemberBloc(),
        ),
      ],
      child: Sizer(
        builder: (context, _, __) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Kolkata',
          theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
          routerDelegate: Modular.routerDelegate,
          routeInformationParser: Modular.routeInformationParser,
        ),
      ),
    );
  }
}

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => Homepage()),
        ChildRoute('/wall_of_fame',
            child: (context, state) => const WallOfFamePage()),
        ChildRoute('/members', child: (context, state) => const MemberPage()),
        ChildRoute('/events', child: (context, state) => const EventPage()),
        RedirectRoute('/redirect', to: '/'),
        WildcardRoute(child: (context, args) => Homepage()),
      ];
}
