import 'package:flutter/material.dart';
import 'package:grocery_app/SplashScreen.dart';
import 'package:grocery_app/WelcomeScreen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

const _iconThemeData = IconThemeData(
  color: Color(0xFF181725), // Specify the color of the icon
  size: 24, // S
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(364, 67),
                  backgroundColor: Color(0xFF53B175),
                  foregroundColor: Color(0xFFFFF9FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                  textStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    height: 1,
                  ))),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        home: Splashscreen(),
      );
    });
  }
}
