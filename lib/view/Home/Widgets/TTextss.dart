import 'package:flutter/material.dart';

class TTextss extends StatelessWidget {
  const TTextss({
    Key? key,
    required this.text,
    required this.textColor,
    required this.fontWeight,
    required this.size,
  }) : super(key: key);

  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}