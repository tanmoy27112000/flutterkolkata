import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterkolkata/constant/text_style.dart';
import 'package:flutterkolkata/gen/assets.gen.dart';
import 'package:flutterkolkata/widget/button/button_widget.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              image: DecorationImage(
                image: Assets.images.flutterKolkata,
                fit: BoxFit.cover,
              ),
            ),
            height: 150,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 20),
              children: [
                ListTile(
                  onTap: () => Modular.to.pushNamed("/wall_of_fame"),
                  title: Text(
                    'Wall Of Fame',
                    style: KTextstyle.grey600bold,
                  ),
                ),
                ListTile(
                  onTap: () => Modular.to.pushNamed("/events"),
                  title: Text(
                    'Upcoming Events',
                    style: KTextstyle.grey600bold,
                  ),
                ),
                ListTile(
                  onTap: () => Modular.to.pushNamed("/members"),
                  title: Text(
                    'Members',
                    style: KTextstyle.grey600bold,
                  ),
                ),
                GestureDetector(
                  onTap: () =>
                      launchURL("https://www.meetup.com/flutter-kolkata/"),
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: kElevationToShadow[3],
                    ),
                    child: const Center(
                      child: Text(
                        "Join us",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
