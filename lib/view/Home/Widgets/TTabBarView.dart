import 'package:flutter/material.dart';

class TTabBarView extends StatelessWidget {
  const TTabBarView({
    Key? key,
    required this.icons,
    this.circlBackgroudColor = Colors.grey,
    this.radius = 20.0,
    this.iconsSize = 30,
    this.iconColor = Colors.indigo,
  }) : super(key: key);

  final IconData icons;
  final Color circlBackgroudColor;
  final double radius;
  final double iconsSize;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: circlBackgroudColor,
      child: Center(
        child: Icon(
          icons,
          size: iconsSize,
          color: iconColor,
        ),
      ),
    );
  }
}