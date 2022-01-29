import 'package:flutter/material.dart';
import 'package:flutterkolkata/constant/image_url.dart';
import 'package:flutterkolkata/constant/text_style.dart';

class WebAppbar extends StatelessWidget {
  const WebAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 30,
                    child: Image.network(ImageUrl.flutterIcon),
                  ),
                ),
                SizedBox(
                  width: 0.4 * constraints.maxWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Wall of fame",
                        style: KTextstyle.grey600bold,
                      ),
                      Text(
                        "Upcoming Events",
                        style: KTextstyle.grey600bold,
                      ),
                      Text(
                        "Members",
                        style: KTextstyle.grey600bold,
                      ),
                      Container(
                        height: 40,
                        width: 130,
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
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
