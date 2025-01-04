import 'package:flutter/material.dart';

class GlobalIcon extends StatelessWidget {

  IconData? icon;
  double? iconSize;
  Color? iconColor;

  GlobalIcon({super.key,
              @required this.icon,
              this.iconSize = 20.0,
              this.iconColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: iconSize,
      color: iconColor,
    );
  }
}
