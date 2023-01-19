import 'package:flutter/material.dart';
import 'package:flutterkolkata/screen/event_page/web_event_page.dart';
import 'package:flutterkolkata/widget/app_bar/tab_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterkolkata/widget/button/button_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterkolkata/gen/assets.gen.dart';
import 'package:flutterkolkata/widget/drawer.dart';

class TabEventPage extends StatefulWidget {
  const TabEventPage({Key? key}) : super(key: key);

  @override
  State<TabEventPage> createState() => _TabEventPageState();
}

class _TabEventPageState extends State<TabEventPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          endDrawer: const CustomDrawer(),
          appBar: AppBar(
            centerTitle: true,
            title: const TabAppbar(),
            iconTheme: const IconThemeData(color: Colors.black),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: ListView(
            children: [
              SizedBox(
                height: 0.3 * constraints.maxHeight,
                width: constraints.maxWidth,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Upcoming\nFlutter Kolkata\nEvents",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w900,
                          fontSize: 0.05 * constraints.maxHeight,
                          letterSpacing: 1,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0.4 * constraints.maxHeight,
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
                  crossAxisCount: 2,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 30,
                  childAspectRatio: 16 / 9,
                ),
                itemCount: meetupEvents.length,
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
                      Column(
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
                              width: constraints.maxWidth * 0.15,
                              child: Text(
                                meetupEvents[index]["title"],
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children:  <Widget>[
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
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            height: 100,
                            width: constraints.maxWidth * 0.12,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              image:  DecorationImage(
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
                      fontSize: 14,
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
                      meetupEvents[index]["link"],),
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
