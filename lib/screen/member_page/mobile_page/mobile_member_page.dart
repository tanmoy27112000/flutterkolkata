import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterkolkata/constant/image_url.dart';
import 'package:flutterkolkata/model/member_model.dart';
import 'package:flutterkolkata/screen/member_page/mobile_page/mobile_member_widget.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutterkolkata/widget/drawer.dart';

class MobileMemberPage extends StatefulWidget {
  final List<MemberModel> memeberList;
  const MobileMemberPage({Key? key, required this.memeberList})
      : super(key: key);

  @override
  State<MobileMemberPage> createState() => _MobileMemberPageState();
}

class _MobileMemberPageState extends State<MobileMemberPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          key: _scaffoldKey,
          endDrawer: const CustomDrawer(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(flex: 3),
                      GestureDetector(
                        onTap: () => Modular.to.pushNamed("/"),
                        child: Image.network(
                          ImageUrl.flutterIcon,
                          height: 0.032 * constraints.maxHeight,
                        ),
                      ),
                      const Spacer(flex: 2),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _scaffoldKey.currentState!.openEndDrawer();
                            });
                          },
                          icon: const Icon(
                            Icons.menu,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                ),
                // Community members
                Text(
                  "Our community members",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 0.028 * constraints.maxHeight,
                    letterSpacing: 1,
                    color: Colors.grey.shade800,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.05,
                ),
                // wall of fame text
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 0.05 * constraints.maxWidth),
                  child: Text(
                    "We’re the Flutter Kolkata team, Meet the members.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 0.018 * constraints.maxHeight,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),

                // Member Names
                for (int i = 0; i < widget.memeberList.length; i++) ...[
                  MobileMemberWidget(
                    member: widget.memeberList[i],
                    heightValue: constraints.maxHeight,
                    widthValue: constraints.maxWidth,
                  )
                ]
              ],
            ),
          ),
        );
      },
    );
  }
}
