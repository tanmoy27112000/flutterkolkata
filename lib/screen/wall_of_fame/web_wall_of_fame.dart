import 'package:flutter/material.dart';
import 'package:flutterkolkata/widget/app_bar/app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

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
          body: Column(
            children: [
              const AppbarWidget(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Wall of fame",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                    letterSpacing: 1,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 0.5 * constraints.maxWidth,
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
              // GridView.builder(
              //   shrinkWrap: true,
              //   padding: const EdgeInsets.all(20),
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 4,
              //     mainAxisSpacing: 30,
              //     crossAxisSpacing: 30,
              //   ),
              //   itemCount: 1,
              //   itemBuilder: (BuildContext context, int index) {
              //     return Container(
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10),
              //         color: Colors.white,
              //         boxShadow: kElevationToShadow[3],
              //       ),
              //     );
              //   },
              // ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LottieBuilder.network(
                      "https://assets5.lottiefiles.com/packages/lf20_0qvqjlcc.json",
                      height: constraints.maxHeight * 0.3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
