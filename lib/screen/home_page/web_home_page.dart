import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterkolkata/bloc/member_bloc.dart';
import 'package:flutterkolkata/gen/assets.gen.dart';
import 'package:flutterkolkata/model/member_model.dart';
import 'package:flutterkolkata/widget/atoms/social_widget.dart';
import 'package:flutterkolkata/widget/powered_by/web_powered_by.dart';
import 'package:flutterkolkata/widget/welcome_widget/web_welcome_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WebHomepage extends StatefulWidget {
  const WebHomepage({Key? key}) : super(key: key);

  @override
  State<WebHomepage> createState() => _WebHomepageState();
}

class _WebHomepageState extends State<WebHomepage> {
  final ScrollController _scrollController = ScrollController();
  final MemberBloc _memberBloc = MemberBloc();
  @override
  void initState() {
    _memberBloc.add(const MemberEvent.getMember());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: ListView(
            controller: _scrollController,
            children: [
              WebWelcomeWidget(
                constraints: constraints,
                scrollcontroller: _scrollController,
              ),
              BlocBuilder<MemberBloc, MemberState>(
                bloc: _memberBloc,
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => const Scaffold(
                            body: Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                      error: (message) => Scaffold(
                            body: Center(
                              child: Text(message),
                            ),
                          ),
                      loaded: (member) => HomeMemberWidget(
                          member: member, constraints: constraints));
                },
              ),
              PoweredbyWidget(
                constraints: constraints,
              ),
              Container(
                height: constraints.maxHeight * 0.4,
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Center(
                              child: Assets.images.flutterKolkata.image(),
                            ),
                          ),
                          SizedBox(
                            width: 0.4 * constraints.maxWidth,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Explore",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade700,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text("Become member"),
                                const Text("Google Developer Groups"),
                                const Text("Code of conduct"),
                                const Text("Partner with us"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 128.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Connect",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade700,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text("Facebook"),
                                const Text("Instagram"),
                                const Text("Twitter"),
                                const Text("Whatsapp"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Flutter and the related logo are trademarks of Google LLC.\n© 2022 Flutter Kolkata, All rights reserved.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class HomeMemberWidget extends StatelessWidget {
  const HomeMemberWidget({
    Key? key,
    required this.member,
    required this.constraints,
  }) : super(key: key);

  final List<MemberModel> member;
  final constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        children: [
          SizedBox(height: 0.03 * constraints.maxHeight),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Our community members",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 40,
                letterSpacing: 1,
                color: Colors.grey.shade800,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: 0.5 * constraints.maxWidth,
              child: Text(
                " We’re the Flutter Kolkata team, Meet the members.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20),
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
            ),
            itemCount: member.length,
            itemBuilder: (BuildContext context, int index) {
              MemberModel memberModel = member[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(memberModel.imageUrl),
                      radius: constraints.maxWidth * 0.05,
                    ),
                  ),
                  Text(
                    memberModel.name,
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    memberModel.title,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(memberModel.description),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 32,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        socialWidget(
                          icon: FontAwesomeIcons.linkedin,
                          url: memberModel.linkedInUrl,
                        ),
                        socialWidget(
                          icon: FontAwesomeIcons.facebook,
                          url: memberModel.facebookUrl,
                        ),
                        socialWidget(
                          icon: FontAwesomeIcons.instagram,
                          url: memberModel.instagramUrl,
                        ),
                        socialWidget(
                          icon: FontAwesomeIcons.github,
                          url: memberModel.githubUrl,
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
