import 'package:flutter/material.dart';
import 'package:flutterkolkata/gen/assets.gen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutterkolkata/widget/app_bar/app_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileWallOfFame extends StatefulWidget {
  const MobileWallOfFame({Key? key}) : super(key: key);

  @override
  State<MobileWallOfFame> createState() => _MobileWallOfFameState();
}

class _MobileWallOfFameState extends State<MobileWallOfFame> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const AppbarWidget(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Wall of fame",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 22.sp,
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
                          fontSize: 8.sp,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GridView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(20),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 2 / 2,
                        crossAxisCount: 1,
                        mainAxisSpacing: 30,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: kElevationToShadow[3],
                          ),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: Assets.images.events),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      child: Text(
                                        "Project Name",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8.sp,
                                          color: Colors.grey.shade800,
                                          backgroundColor: Colors.white60,
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        child: Text(
                                          "There are usually about 200 words in a paragraph, but this can vary widely. Most paragraphs focus on a single idea that's expressed with an introductory sentence, then followed by two or more supporting sentences about the idea.",
                                          style: GoogleFonts.poppins(
                                            fontSize: 6.sp,
                                            color: Colors.grey.shade800,
                                            height: 1.4,
                                            wordSpacing: 4,
                                          ),
                                          maxLines: 4,
                                          softWrap: true,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
