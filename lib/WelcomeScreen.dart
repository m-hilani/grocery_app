import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_app/HomePage.dart';
import 'package:grocery_app/constants.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('$kimage/welcome1.jpeg'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  '$kimage/carrot.png',
                  width: 47,
                  height: 53,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 30,
                ),
                const Text(
                  'Welcome \nto our store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 48,
                    height: 1,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    'Ger your groceries in as fast as one hour',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xB2FCFCFC),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: Theme.of(context).elevatedButtonTheme.style,
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  ),
                  child: const Text('Get Started'),
                ),
                SizedBox(
                  height: 90,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
