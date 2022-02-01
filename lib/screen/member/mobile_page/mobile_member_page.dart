import 'package:flutter/material.dart';
import 'package:flutterkolkata/screen/member/mobile_page/mobile_member_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileMemberPage extends StatefulWidget {
  const MobileMemberPage({Key? key}) : super(key: key);

  @override
  State<MobileMemberPage> createState() => _MobileMemberPageState();
}

class _MobileMemberPageState extends State<MobileMemberPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.055,
                ),
                // Community members
                Text(
                  "Our community members",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w800,
                    fontSize: constraints.maxWidth * 0.055,
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
                    "Wall of fame contains all the projects created by our community members. You can also see the projects created by other members of the community.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.1,
                ),
                // Member Names
                for (int i = 0; i < 20; i++) ...[
                  MobileMemberWidget(
                    heightValue: constraints.maxHeight,
                    widthValue: constraints.maxWidth,
                    index: 0,
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
