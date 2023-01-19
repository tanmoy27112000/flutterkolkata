import 'package:flutter/material.dart';
import 'package:flutterkolkata/gen/assets.gen.dart';
import 'package:flutterkolkata/widget/app_bar/app_bar.dart';
import 'package:flutterkolkata/widget/button/button_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WebEventPage extends StatefulWidget {
  const WebEventPage({Key? key}) : super(key: key);

  @override
  State<WebEventPage> createState() => _WebEventPageState();
}

class _WebEventPageState extends State<WebEventPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: ListView(
            children: [
              const AppbarWidget(),
              SizedBox(
                height: 0.5 * constraints.maxHeight,
                width: constraints.maxWidth,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Assets.images.events.image(),
                    ],
                  ),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 64),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
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
                            fontSize: 14,
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
                                fontSize: 16,
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
                    Expanded(
                      child: Container(
                        height: 120,
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
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  meetupEvents[index]["description"],
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () => launchURL(meetupEvents[index]["link"]),
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: kElevationToShadow[3],
                  ),
                  child: Center(
                    child: Text(
                      "Attend event",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
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
    );
  }
}

List meetupEvents = [
  {
    "title": "Flutter Forward Extended Kolkata",
    "date": "SAT, March 25, 2023, TBD",
    "eventType": "In-Person event",
    "image": "https://i.imgur.com/QGnnneg.png",
    "description":
        "Flutter Forward Extended Kolkata\n(watch this space for more updates soon)",
    "link": "https://www.meetup.com/flutter-kolkata/events/",
  },
  {
    "title": "Flutter Kolkata Meetup",
    "date": "SAT, FEB 26, 2022, 6:00 PM IST",
    "eventType": "Online event",
    "image":
        "https://secure-content.meetupstatic.com/images/classic-events/501689890/676x380.webp",
    "description": "Flutter Festival : Kolkata chapter",
    "link": "https://www.meetup.com/flutter-kolkata/events/283582627/",
  },
];
