import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MobileEventPage extends StatefulWidget {
  const MobileEventPage({Key? key}) : super(key: key);

  @override
  State<MobileEventPage> createState() => _MobileEventPageState();
}

class _MobileEventPageState extends State<MobileEventPage> {
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
