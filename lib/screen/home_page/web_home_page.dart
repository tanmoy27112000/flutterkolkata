import 'package:flutter/material.dart';
import 'package:flutterkolkata/widget/welcome_widget/web_welcome_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class WebHomepage extends StatefulWidget {
  const WebHomepage({Key? key}) : super(key: key);

  @override
  State<WebHomepage> createState() => _WebHomepageState();
}

class _WebHomepageState extends State<WebHomepage> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
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
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: constraints.maxHeight * 0.6,
                width: constraints.maxWidth,
                color: Colors.grey.shade100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 0.05 * constraints.maxHeight,
                    ),
                    Text(
                      "What we do at Flutter Kolkata?",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 40,
                        letterSpacing: 1,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        ...List.generate(
                          4,
                          (index) => Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(16),
                              width: constraints.maxWidth / 3,
                              height: constraints.maxHeight * 0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                boxShadow: kElevationToShadow[3],
                              ),
                            ),
                          ),
                        ).toList()
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.4,
                width: constraints.maxWidth,
                color: Colors.grey.shade100,
              )
            ],
          ),
        );
      },
    );
  }
}
