import 'package:flutter/material.dart';
import 'package:flutterkolkata/constant/member_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterkolkata/widget/atoms/social_widget.dart';
import 'package:flutterkolkata/screen/member/tab_page/tab_social.dart';

class TabMemberWidget extends StatelessWidget {
  final int index;
  final double widthValue;
  final double heightValue;
  const TabMemberWidget(
      {required this.index,
      required this.heightValue,
      required this.widthValue,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(memberList[index].imageUrl),
          radius: widthValue * 0.04,
        ),
        Text(
          memberList[index].name,
          style: TextStyle(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.w800,
            fontSize: widthValue * 0.017,
          ),
        ),
        Text(
          memberList[index].title,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w800,
            fontSize: widthValue * 0.01,
          ),
        ),
        Text(
          memberList[index].description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: widthValue * 0.015),
        ),
        SizedBox(
          height: heightValue * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            tabSocialWidget(
                icon: FontAwesomeIcons.linkedin,
                url: memberList[index].linkedInUrl,
                widthvalue: widthValue),
            tabSocialWidget(
                icon: FontAwesomeIcons.facebook,
                url: memberList[index].facebookUrl,
                widthvalue: widthValue),
            tabSocialWidget(
                icon: FontAwesomeIcons.github,
                url: memberList[index].githubUrl,
                widthvalue: widthValue),
          ],
        ),
      ],
    );
  }
}
