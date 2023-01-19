import 'package:flutter/material.dart';
import 'package:flutterkolkata/constant/image_url.dart';
import 'package:flutterkolkata/gen/assets.gen.dart';
import 'package:flutterkolkata/screen/event_page/web_event_page.dart';
import 'package:flutterkolkata/widget/button/button_widget.dart';
import 'package:flutterkolkata/widget/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qlevar_router/qlevar_router.dart';

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
                      onTap: () => QR.to("/"),
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
                    Assets.images.events.image(fit: BoxFit.cover),
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
                  childAspectRatio: 16 / 9,
                ),
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return EventWidget(
                    constraints: constraints,
                    index: index,
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
  final int index;
  const EventWidget({
    Key? key,
    required this.constraints,
    required this.index,
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
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              meetupEvents[index]["date"],
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
                                  meetupEvents[index]["title"],
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.youtube,
                                  color: Colors.grey,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(meetupEvents[index]["eventType"]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            height: constraints.maxHeight * 0.2,
                            width: constraints.maxWidth * 0.12,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              image: DecorationImage(
                                  image: NetworkImage(
                                    meetupEvents[index]["image"],
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
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    meetupEvents[index]["description"],
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
                    meetupEvents[index]["link"],
                  ),
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
