// ignore: file_names
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget? child;
  final Color color;
  final VoidCallback? onTap;

  const ReusableCard({
    super.key,
    required this.color,
    this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
