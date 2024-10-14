import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/OnBoarding/onboarding.dart';
import 'package:whatsapp/Widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Onboarding()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapplogo.png"),
            SizedBox(height: 20),
            Uihelper.CustomText(
                text: "Whatsapp", height: 18, fontweight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}
