import 'package:flutter/material.dart';
import 'package:flutterkolkata/model/member_model.dart';
import 'package:flutterkolkata/screen/member_page/mobile_page/mobile_member_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileMemberPage extends StatefulWidget {
  final List<MemberModel> memeberList;
  const MobileMemberPage({Key? key, required this.memeberList})
      : super(key: key);

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
                    fontWeight: FontWeight.w600,
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
                    "We’re the Flutter Kolkata team, Meet the members.",
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
