import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Small 텍스트 스타일",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              "Medium 텍스트 스타일",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              "Large 텍스트 스타일",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
    );
  }
}
