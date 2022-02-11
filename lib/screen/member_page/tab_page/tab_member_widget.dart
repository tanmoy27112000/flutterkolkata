import 'package:flutter/material.dart';
import 'package:flutterkolkata/constant/member_list.dart';
import 'package:flutterkolkata/model/member_model.dart';
import 'package:flutterkolkata/screen/member_page/tab_page/tab_social.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabMemberWidget extends StatelessWidget {
  final MemberModel member;
  final double widthValue;
  final double heightValue;
  const TabMemberWidget(
      {required this.member,
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
          backgroundImage: NetworkImage(member.imageUrl),
          radius: widthValue * 0.045,
        ),
        Text(
          member.name,
          style: TextStyle(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.w800,
            fontSize: widthValue * 0.02,
          ),
        ),
        Text(
          member.title,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w800,
            fontSize: widthValue * 0.015,
          ),
        ),
        Text(
          member.description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: widthValue * 0.015),
        ),
        SizedBox(
          height: heightValue * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            tabSocialWidget(
                icon: FontAwesomeIcons.linkedin,
                url: member.linkedInUrl,
                widthvalue: widthValue),
            tabSocialWidget(
                icon: FontAwesomeIcons.facebook,
                url: member.facebookUrl,
                widthvalue: widthValue),
            tabSocialWidget(
                icon: FontAwesomeIcons.github,
                url: member.githubUrl,
                widthvalue: widthValue),
          ],
        ),
      ],
    );
  }
}
