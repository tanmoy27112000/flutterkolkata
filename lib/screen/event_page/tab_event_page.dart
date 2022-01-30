import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TabEventPage extends StatefulWidget {
  const TabEventPage({Key? key}) : super(key: key);

  @override
  State<TabEventPage> createState() => _TabEventPageState();
}

class _TabEventPageState extends State<TabEventPage> {
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
