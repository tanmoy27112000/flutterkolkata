import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TabMemberPage extends StatefulWidget {
  const TabMemberPage({Key? key}) : super(key: key);

  @override
  State<TabMemberPage> createState() => _TabMemberPageState();
}

class _TabMemberPageState extends State<TabMemberPage> {
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
