import 'package:flutter/material.dart';
import 'package:flutterkolkata/gen/assets.gen.dart';
import 'package:flutterkolkata/widget/button/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileWelcomeWidget extends StatelessWidget {
  final BoxConstraints constraints;
  final ScrollController scrollcontroller;
  const MobileWelcomeWidget({
    Key? key,
    required this.constraints,
    required this.scrollcontroller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: constraints.maxWidth,
      height: constraints.maxHeight,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Welcome to Flutter Kolkata",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    letterSpacing: 1,
                    color: Colors.grey.shade800,
                  ),
                ),
                SizedBox(
                  width: 0.9 * constraints.maxWidth,
                  child: Text(
                    "Flutter Kolkata Community is all about learning and sharing knowledge about flutter and its related technologies. If you are from a different background, you can join if you are enthusiastic about learning & sharing with fellow developers from Kolkata. We will be conducting meetups every month.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonWidget(
                        imagePath: Assets.images.meetup,
                        text: "Join the meetup group",
                        ontap: () {
                          launchURL("https://www.meetup.com/flutter-kolkata/");
                        },
                      ),
                      ButtonWidget(
                        imagePath: Assets.images.whatsapp,
                        text: "Join the whatsapp group",
                        ontap: () {
                          launchURL(
                              "https://chat.whatsapp.com/JK50yk50ixjEFa625t4g0n");
                        },
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  Assets.images.kolkata.path,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
