import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterkolkata/constant/image_url.dart';
import 'package:google_fonts/google_fonts.dart';

class MobilePoweredbyWidget extends StatelessWidget {
  final BoxConstraints constraints;
  const MobilePoweredbyWidget({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: constraints.maxHeight * 0.4,
      width: constraints.maxWidth,
      color: Colors.grey.shade100,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 15),
          Text(
            "Powered By",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 0.05 * constraints.maxHeight,
              letterSpacing: 1,
              color: Colors.grey.shade800,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 0.04 * constraints.maxHeight,
                  child: Image.network(ImageUrl.flutterIcon),
                ),
                SvgPicture.asset(
                  "assets/images/google-devs.svg",
                  height: 0.04 * constraints.maxHeight,
                ),
                SvgPicture.asset(
                  "assets/images/gyt_logo.svg",
                  height: 0.04 * constraints.maxHeight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
