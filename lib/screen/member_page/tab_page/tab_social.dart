import 'package:flutter/material.dart';
import 'package:flutterkolkata/widget/button/button_widget.dart';

Widget tabSocialWidget({
  String? url,
  required IconData icon,
  required double widthvalue,
}) {
  return url != null
      ? IconButton(
          padding: EdgeInsets.symmetric(horizontal: 5),
          constraints: const BoxConstraints(),
          onPressed: () {
            launchURL(
              url,
            );
          },
          icon: Icon(icon),
          iconSize: widthvalue * 0.03,
        )
      : const SizedBox.shrink();
}
