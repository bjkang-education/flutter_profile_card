import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "기본 텍스트 스타일",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
        ),
      ),
    );
  }
}
