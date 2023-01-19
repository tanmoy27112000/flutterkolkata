import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityPartnerWidget extends StatelessWidget {
  final BoxConstraints constraints;
  const CommunityPartnerWidget({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: constraints.maxHeight * 0.6,
      width: constraints.maxWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Community partners",
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
              Image.asset(
                "assets/images/clueless.png",
                height: 60,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
