import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterkolkata/bloc/member_bloc.dart';
import 'package:flutterkolkata/routes/app_routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:sizer/sizer.dart';
import 'package:url_strategy/url_strategy.dart';

import 'firebase_options.dart';

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
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
          routerDelegate: QRouterDelegate(AppRoutes().routes),
          routeInformationParser: QRouteInformationParser(),
        ),
      ),
    );
  }
}
