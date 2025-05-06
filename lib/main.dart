import 'package:flutter/material.dart';
import 'package:profile_card/sample/text_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          displaySmall: TextStyle(
            color: Colors.red,
            fontSize: 20,
            fontFamily: 'Sunflower',
            fontWeight: FontWeight.w200,
          ),
          displayMedium: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Sunflower',
            fontWeight: FontWeight.w400,
          ),
          displayLarge: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontFamily: 'Sunflower',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const TextScreen(),
    );
  }
}
