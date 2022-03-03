import 'package:flutter/material.dart';
import 'package:travelapp_demo/home_screen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xc160bccd),
          backgroundColor: const Color(0xc1bbdae3),
        ).copyWith(),
      ),
      home: const HomeScreen(),
    );
  }
}
