import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterkolkata/model/member_model.dart';
import 'package:flutterkolkata/widget/app_bar/app_bar.dart';
import 'package:flutterkolkata/widget/atoms/social_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WebMemberPage extends StatefulWidget {
  final List<MemberModel> memeberList;
  const WebMemberPage({Key? key, required this.memeberList}) : super(key: key);

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
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                  ),
                  itemCount: widget.memeberList.length,
                  itemBuilder: (BuildContext context, int index) {
                    MemberModel member = widget.memeberList[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade100,
                            backgroundImage: NetworkImage(member.imageUrl),
                            radius: constraints.maxWidth * 0.05,
                            child: CachedNetworkImage(
                              imageUrl: member.imageUrl,
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              placeholder: (context, url) => Center(
                                child: CircularProgressIndicator.adaptive(),
                              ),
                              errorWidget: (context, url, error) => Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          member.description,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
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
