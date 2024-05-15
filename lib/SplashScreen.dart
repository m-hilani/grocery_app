import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app/WelcomeScreen.dart';
import 'package:sizer/sizer.dart';

import 'constants.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Welcomescreen())));

    return SafeArea(
      child: Scaffold(
        backgroundColor: // Color(0xFF22A451),
            kprimaryColor,
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Image.asset(
              '$kimage/img.png',
              width: 65.w,
            ),
          ),
        ),
      ),
    );
  }
}
