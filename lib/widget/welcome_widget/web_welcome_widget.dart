import 'package:flutter/material.dart';
import 'package:flutterkolkata/widget/app_bar/app_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class WebWelcomeWidget extends StatelessWidget {
  final BoxConstraints constraints;
  final ScrollController scrollcontroller;
  const WebWelcomeWidget({
    Key? key,
    required this.constraints,
    required this.scrollcontroller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        SizedBox(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          child: Column(
            children: <Widget>[
              const Appbar(),
              SizedBox(
                height: 0.07 * constraints.maxHeight,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Welcome to Flutter Kolkata",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                      letterSpacing: 1,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  Image.asset(
                    "assets/images/kolkata.jpeg",
                    height: 0.65 * constraints.maxHeight,
                  ),
                ],
              )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: GestureDetector(
            onTap: () {
              scrollcontroller.animateTo(
                  scrollcontroller.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linear);
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: kElevationToShadow[3],
              ),
              child: const Center(
                child: Icon(Icons.keyboard_arrow_down_rounded),
              ),
            ),
          ),
        )
      ],
    );
  }
}
