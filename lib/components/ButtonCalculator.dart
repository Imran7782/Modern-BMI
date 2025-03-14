
import 'package:flutter/material.dart';

class ButtonCalculate extends StatelessWidget {
  final String text;
  
  final VoidCallback onPressed;

  const ButtonCalculate(
    this.onPressed,
    this.text, {super.key}
  );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPressed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          color: const Color(0xffeb1555),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
