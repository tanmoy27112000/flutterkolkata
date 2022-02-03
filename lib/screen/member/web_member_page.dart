import 'package:flutter/material.dart';
import 'package:flutterkolkata/constant/member_list.dart';
import 'package:flutterkolkata/widget/app_bar/app_bar.dart';
import 'package:flutterkolkata/widget/atoms/social_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WebMemberPage extends StatefulWidget {
  const WebMemberPage({Key? key}) : super(key: key);

  @override
  State<WebMemberPage> createState() => _WebHallOfFameState();
}

class _WebHallOfFameState extends State<WebMemberPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const AppbarWidget(),
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
                      "Wall of fame contains all the projects created by our community members. You can also see the projects created by other members of the community.",
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
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                  ),
                  itemCount: memberList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage:
                                NetworkImage(memberList[index].imageUrl),
                            radius: constraints.maxWidth * 0.05,
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
                            vertical: 5.0,
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
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
