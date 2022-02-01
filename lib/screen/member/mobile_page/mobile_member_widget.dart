import 'package:flutter/material.dart';
import 'package:flutterkolkata/constant/member_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterkolkata/widget/atoms/social_widget.dart';

class MobileMemberWidget extends StatelessWidget {
  final int index;
  final double widthValue;
  final double heightValue;
  const MobileMemberWidget(
      {required this.index,
      required this.heightValue,
      required this.widthValue,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: heightValue * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(memberList[index].imageUrl),
              radius: widthValue * 0.17,
            ),
          ),
          Text(
            memberList[index].name,
            style: TextStyle(
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          ),
          Text(
            memberList[index].title,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w800,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(memberList[index].description),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 32,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                socialWidget(
                  icon: FontAwesomeIcons.linkedin,
                  url: memberList[index].linkedInUrl,
                ),
                socialWidget(
                  icon: FontAwesomeIcons.facebook,
                  url: memberList[index].facebookUrl,
                ),
                socialWidget(
                  icon: FontAwesomeIcons.instagram,
                  url: memberList[index].instagramUrl,
                ),
                socialWidget(
                  icon: FontAwesomeIcons.github,
                  url: memberList[index].githubUrl,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
