import 'package:flutter/material.dart';
import 'package:flutterkolkata/constant/image_url.dart';
import 'package:qlevar_router/qlevar_router.dart';


class TabAppbar extends StatelessWidget {
  const TabAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return GestureDetector(
          onTap: () => QR.to("/"),
          child: SizedBox(
            height: 30,
            child: Image.network(ImageUrl.flutterIcon),
          ),
        );
      },
    );
  }
}
