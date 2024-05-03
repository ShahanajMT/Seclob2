// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TContainerButton extends StatelessWidget {
  const TContainerButton({
    Key? key,
    required this.height,
    required this.width,
     this.text = '',
    required this.radius,
    required this.backgroudColor,
    required this.textColor,
     this.icons = Icons.safety_check,
  }) : super(key: key);

  final double height;
  final double width;
  final String text;
  final double radius;
  final Color backgroudColor;
  final Color textColor;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: backgroudColor),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
