import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Splash/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //show custom color (0XFF)
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF00A884)),
        //custom theme
        useMaterial3: false,
        //font
        fontFamily: "Regular"
      ),
      home: Splashscreen()
    );
  }
}
