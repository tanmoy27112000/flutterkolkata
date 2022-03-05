import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterkolkata/constant/image_url.dart';
import 'package:google_fonts/google_fonts.dart';

class PoweredbyWidget extends StatelessWidget {
  final BoxConstraints constraints;
  const PoweredbyWidget({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: constraints.maxHeight * 0.6,
      width: constraints.maxWidth,
      color: Colors.grey.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Powered By",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 40,
              letterSpacing: 1,
              color: Colors.grey.shade800,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  child: Image.network(ImageUrl.flutterIcon),
                ),
              ),
              SvgPicture.asset(
                "assets/images/google-devs.svg",
                height: 60,
              ),
              SvgPicture.asset("assets/images/gyt_logo.svg"),
            ],
          ),
        ],
      ),
    );
  }
}
