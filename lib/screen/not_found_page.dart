import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NotFoundPage extends StatefulWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  State<NotFoundPage> createState() => _NotFoundPageState();
}

class _NotFoundPageState extends State<NotFoundPage> {
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
