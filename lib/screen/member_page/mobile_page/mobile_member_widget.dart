import 'package:flutter/material.dart';
import 'package:flutterkolkata/constant/member_list.dart';
import 'package:flutterkolkata/model/member_model.dart';
import 'package:flutterkolkata/widget/atoms/social_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileMemberWidget extends StatelessWidget {
  final MemberModel member;
  final double widthValue;
  final double heightValue;
  const MobileMemberWidget(
      {required this.member,
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
              backgroundImage: NetworkImage(member.imageUrl),
              radius: widthValue * 0.17,
            ),
          ),
          Text(
            member.name,
            style: TextStyle(
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          ),
          Text(
            member.title,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w800,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(member.description),
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
                  url: member.linkedInUrl,
                ),
                socialWidget(
                  icon: FontAwesomeIcons.facebook,
                  url: member.facebookUrl,
                ),
                socialWidget(
                  icon: FontAwesomeIcons.instagram,
                  url: member.instagramUrl,
                ),
                socialWidget(
                  icon: FontAwesomeIcons.github,
                  url: member.githubUrl,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
