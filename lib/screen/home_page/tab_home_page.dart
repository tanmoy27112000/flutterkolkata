import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TabHomepage extends StatefulWidget {
  const TabHomepage({Key? key}) : super(key: key);

  @override
  State<TabHomepage> createState() => _TabHomepageState();
}

class _TabHomepageState extends State<TabHomepage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: Center(
            child: LottieBuilder.network(
              "https://assets5.lottiefiles.com/packages/lf20_0qvqjlcc.json",
              height: constraints.maxHeight * 0.3,
            ),
          ),
        );
      },
    );
  }
}
