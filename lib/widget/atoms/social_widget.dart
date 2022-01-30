import 'package:flutter/material.dart';
import 'package:flutterkolkata/widget/button/button_widget.dart';

Widget socialWidget({String? url, required IconData icon}) {
  return url != null
      ? Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              launchURL(
                url,
              );
            },
            icon: Icon(icon),
          ),
        )
      : const SizedBox.shrink();
}
