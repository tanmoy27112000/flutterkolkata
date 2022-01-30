import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TabWallOfFame extends StatefulWidget {
  const TabWallOfFame({Key? key}) : super(key: key);

  @override
  State<TabWallOfFame> createState() => _TabWallOfFameState();
}

class _TabWallOfFameState extends State<TabWallOfFame> {
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
