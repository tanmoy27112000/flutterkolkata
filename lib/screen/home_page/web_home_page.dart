import 'package:flutter/material.dart';
import 'package:flutterkolkata/gen/assets.gen.dart';
import 'package:flutterkolkata/widget/powered_by/web_powered_by.dart';
import 'package:flutterkolkata/widget/welcome_widget/web_welcome_widget.dart';

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
