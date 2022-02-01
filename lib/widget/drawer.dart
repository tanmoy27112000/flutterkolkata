import 'package:flutter/material.dart';
import 'package:flutterkolkata/constant/text_style.dart';
import 'package:flutterkolkata/widget/button/button_widget.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            onTap: () => context.go("/wall_of_fame"),
            title: Text(
              'Wall Of Fame',
              style: KTextstyle.grey600bold,
            ),
          ),
          const Divider(),
          ListTile(
            onTap: () => context.go("/events"),
            title: Text(
              'Upcoming Events',
              style: KTextstyle.grey600bold,
            ),
          ),
          const Divider(),
          ListTile(
            onTap: () => context.go("/members"),
            title: Text(
              'Members',
              style: KTextstyle.grey600bold,
            ),
          ),
          const Divider(),
          GestureDetector(
            onTap: () => launchURL("https://www.meetup.com/flutter-kolkata/"),
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
    );
  }
}
