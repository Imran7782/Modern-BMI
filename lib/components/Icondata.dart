import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String label;
  final IconData iconData;
  const IconContent(this.label, this.iconData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Icon(
            iconData,
            size: 100,
          ),
          Center(
            child: Text(
              label,
              style: const TextStyle(color: Colors.grey, fontSize: 24,),
            ),
          )
        ],
      ),
    );
  }
}
