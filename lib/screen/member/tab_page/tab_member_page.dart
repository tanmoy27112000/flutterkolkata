import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterkolkata/constant/member_list.dart';
import 'package:flutterkolkata/widget/app_bar/app_bar.dart';
import 'package:flutterkolkata/screen/member/tab_page/tab_member_widget.dart';

class TabMemberPage extends StatefulWidget {
  const TabMemberPage({Key? key}) : super(key: key);

  @override
  State<TabMemberPage> createState() => _TabMemberPageState();
}

class _TabMemberPageState extends State<TabMemberPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const AppbarWidget(),
                SizedBox(height: 0.03 * constraints.maxHeight),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Our community members",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      letterSpacing: 1,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 0.7 * constraints.maxWidth,
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
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.07,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(
                    horizontal: constraints.maxWidth * 0.02,
                    vertical: constraints.maxHeight * 0.05,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: constraints.maxHeight * 0.15,
                    crossAxisSpacing: constraints.maxWidth * 0.04,
                  ),
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return TabMemberWidget(
                        index: 0,
                        heightValue: constraints.maxHeight,
                        widthValue: constraints.maxWidth);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
