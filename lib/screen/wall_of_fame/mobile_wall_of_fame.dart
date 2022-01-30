import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MobileWallOfFame extends StatefulWidget {
  const MobileWallOfFame({Key? key}) : super(key: key);

  @override
  State<MobileWallOfFame> createState() => _MobileWallOfFameState();
}

class _MobileWallOfFameState extends State<MobileWallOfFame> {
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
