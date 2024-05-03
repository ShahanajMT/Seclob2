import 'package:flutter/material.dart';



class TIconsandText extends StatelessWidget {
  const TIconsandText({
    Key? key,
    required this.icon,
    required this.text,
    required this.size,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final double size;
  final Color iconColor = Colors.white;
  final Color textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 85, left: 20),
      child: Column(
        children: [
          Icon(
            icon,
            size: size,
            color: iconColor,
          ),
          Text(text, style: const TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}