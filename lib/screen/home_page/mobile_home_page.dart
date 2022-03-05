import 'package:flutter/material.dart';
import 'package:flutterkolkata/constant/image_url.dart';
import 'package:flutterkolkata/gen/assets.gen.dart';
import 'package:flutterkolkata/widget/drawer.dart';
import 'package:flutterkolkata/widget/powered_by/mobile_powered_by.dart';
import 'package:flutterkolkata/widget/welcome_widget/mobile_welcome_widget.dart';

class MobileHomepage extends StatefulWidget {
  const MobileHomepage({Key? key}) : super(key: key);

  @override
  State<MobileHomepage> createState() => _MobileHomepageState();
}

class _MobileHomepageState extends State<MobileHomepage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          key: _scaffoldKey,
          endDrawer: const CustomDrawer(),
          body: ListView(
            controller: _scrollController,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(flex: 3),
                    Image.network(
                      ImageUrl.flutterIcon,
                      height: 0.032 * constraints.maxHeight,
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
              MobileWelcomeWidget(
                constraints: constraints,
                scrollcontroller: _scrollController,
              ),
              MobilePoweredbyWidget(constraints: constraints),
              Container(
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
                  children: [
                    Assets.images.flutterKolkata
                        .image(height: constraints.maxHeight * 0.3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Explore",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade700,
                                fontSize: 0.03 * constraints.maxHeight,
                              ),
                            ),
                            const Text("Become member"),
                            const Text("Google Developer Groups"),
                            const Text("Code of conduct"),
                            const Text("Partner with us"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Connect",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade700,
                                fontSize: 0.03 * constraints.maxHeight,
                              ),
                            ),
                            const Text("Facebook"),
                            const Text("Instagram"),
                            const Text("Twitter"),
                            const Text("Whatsapp"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Flutter and the related logo are trademarks of Google LLC.\n© 2022 Flutter Kolkata, All rights reserved.",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 0.015 * constraints.maxHeight),
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
