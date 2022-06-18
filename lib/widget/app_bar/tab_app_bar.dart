import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterkolkata/constant/image_url.dart';

class TabAppbar extends StatelessWidget {
  const TabAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return GestureDetector(
          onTap: () => Modular.to.pushNamed("/"),
          child: SizedBox(
            height: 30,
            child: Image.network(ImageUrl.flutterIcon),
          ),
        );
      },
    );
  }
}
