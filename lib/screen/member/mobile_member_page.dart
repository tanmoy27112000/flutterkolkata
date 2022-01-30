import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MobileMemberPage extends StatefulWidget {
  const MobileMemberPage({Key? key}) : super(key: key);

  @override
  State<MobileMemberPage> createState() => _MobileMemberPageState();
}

class _MobileMemberPageState extends State<MobileMemberPage> {
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
