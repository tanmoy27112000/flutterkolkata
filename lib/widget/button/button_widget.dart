import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback ontap;
  const ButtonWidget({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: 50,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
            boxShadow: kElevationToShadow[3],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SvgPicture.asset(
                imagePath,
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(text),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void launchURL(String url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}
