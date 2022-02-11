import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterkolkata/widget/button/button_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterkolkata/gen/assets.gen.dart';
import 'package:flutterkolkata/widget/drawer.dart';
import 'package:flutterkolkata/constant/image_url.dart';

class MobileEventPage extends StatefulWidget {
  const MobileEventPage({Key? key}) : super(key: key);

  @override
  State<MobileEventPage> createState() => _MobileEventPageState();
}

class _MobileEventPageState extends State<MobileEventPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          key: _scaffoldKey,
          endDrawer: const CustomDrawer(),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(flex: 3),
                    GestureDetector(
                      onTap: () => context.go("/"),
                      child: Image.network(
                        ImageUrl.flutterIcon,
                        height: 0.032 * constraints.maxHeight,
                      ),
                    ),
                    const Spacer(flex: 2),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _scaffoldKey.currentState!.openEndDrawer();
                          });
                        },
                        icon: const Icon(
                          Icons.menu,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // const AppbarWidget(),
              SizedBox(
                height: 0.25 * constraints.maxHeight,
                width: constraints.maxWidth,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Upcoming\nFlutter Kolkata\nEvents",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w900,
                          fontSize: 0.03 * constraints.maxHeight,
                          letterSpacing: 1,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0.3 * constraints.maxHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Assets.images.events.image(),
                  ],
                ),
              ),
              GridView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 30,
                  childAspectRatio: 16 / 12,
                ),
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return EventWidget(
                    constraints: constraints,
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class EventWidget extends StatelessWidget {
  final BoxConstraints constraints;
  const EventWidget({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: kElevationToShadow[1],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "SAT, FEB 26, 2022, 6:00 PM IST",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: Colors.blue,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: SizedBox(
                              width: constraints.maxWidth * 0.3,
                              child: Text(
                                "Flutter Festival: Kolkata Chapter",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: const <Widget>[
                              Icon(
                                FontAwesomeIcons.youtube,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Online event"),
                              ),
                            ],
                          )
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            height: 80,
                            width: constraints.maxWidth * 0.12,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              image: const DecorationImage(
                                  image: NetworkImage(
                                    "https://secure-content.meetupstatic.com/images/classic-events/501689890/676x380.webp",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Flutter Festival : Kolkata chapter\n(watch this space for more updates soon)",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () => launchURL(
                      "https://www.meetup.com/flutter-kolkata/events/283582627/"),
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    height: 45,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: kElevationToShadow[3],
                    ),
                    child: Center(
                      child: Text(
                        "Attend event",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade900,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
