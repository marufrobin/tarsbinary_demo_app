import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tarsbinary_demo_app/screen/guideline_screen_1.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 4),
      () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => GuidelineScreen1(),
            ),
            (route) => false);
      },
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Image.asset("images/logo.png"),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.09,
              left: MediaQuery.of(context).size.width * 0.2,
              child: Text(
                "Art of Intelligence",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ))
        ]),
      ),
    );
  }
}
