import 'package:flutter/material.dart';

class TContainerButton extends StatelessWidget {
  const TContainerButton({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
    required this.radius,
    required this.backgroudColor,
    required this.textColor,
  }) : super(key: key);

  final double height;
  final double width;
  final String text;
  final double radius;
  final Color backgroudColor;
  final Color textColor;

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