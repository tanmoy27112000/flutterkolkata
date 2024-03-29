import 'package:flutter/material.dart';
import 'package:flutterkolkata/widget/app_bar/app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class WebWallOfFame extends StatefulWidget {
  const WebWallOfFame({Key? key}) : super(key: key);

  @override
  State<WebWallOfFame> createState() => _WebHallOfFameState();
}

class _WebHallOfFameState extends State<WebWallOfFame> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const AppbarWidget(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Wall of fame",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 8.sp,
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
                        fontSize: 3.sp,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.all(30),
                //   child: GridView.builder(
                //     shrinkWrap: true,
                //     padding: const EdgeInsets.all(20),
                //     gridDelegate:
                //         const SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 4,
                //       mainAxisSpacing: 30,
                //       crossAxisSpacing: 30,
                //     ),
                //     itemCount: 0,
                //     itemBuilder: (BuildContext context, int index) {
                //       return Container(
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(10),
                //           color: Colors.white,
                //           boxShadow: kElevationToShadow[3],
                //         ),
                //         child: Column(
                //           children: <Widget>[
                //             Expanded(
                //               flex: 2,
                //               child: ClipRRect(
                //                 borderRadius: const BorderRadius.only(
                //                   topLeft: Radius.circular(10),
                //                   topRight: Radius.circular(10),
                //                 ),
                //                 child: Container(
                //                   decoration: BoxDecoration(
                //                     image: DecorationImage(
                //                         image: Assets.images.events),
                //                   ),
                //                   child: null,
                //                 ),
                //               ),
                //             ),
                //             Expanded(
                //               flex: 1,
                //               child: Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Padding(
                //                     padding: const EdgeInsets.symmetric(
                //                         horizontal: 10, vertical: 5),
                //                     child: Text(
                //                       "Project Name",
                //                       style: GoogleFonts.poppins(
                //                         fontWeight: FontWeight.w500,
                //                         fontSize: 3.sp,
                //                         color: Colors.grey.shade800,
                //                         backgroundColor: Colors.white60,
                //                       ),
                //                     ),
                //                   ),
                //                   Flexible(
                //                     child: Padding(
                //                       padding: const EdgeInsets.symmetric(
                //                           horizontal: 10, vertical: 5),
                //                       child: Text(
                //                         "There are usually about 200 words in a paragraph, but this can vary widely. Most paragraphs focus on a single idea that's expressed with an introductory sentence, then followed by two or more supporting sentences about the idea.",
                //                         style: GoogleFonts.poppins(
                //                           fontSize: 2.sp,
                //                           color: Colors.grey.shade800,
                //                           height: 1.1,
                //                           wordSpacing: 8,
                //                         ),
                //                         maxLines: 6,
                //                         softWrap: true,
                //                         overflow: TextOverflow.ellipsis,
                //                       ),
                //                     ),
                //                   )
                //                 ],
                //               ),
                //             )
                //           ],
                //         ),
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
