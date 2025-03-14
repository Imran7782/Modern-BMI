import 'package:flutter/material.dart';
import 'package:mbi/screens/input.dart';

void main() => runApp(const BMI());

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const InputScreen(),
    );
  }
}
