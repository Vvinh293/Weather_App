import 'package:flutter/material.dart';

class GlobalText extends StatelessWidget {

  String? text;
  double? fontSize;
  FontWeight? fontWeight;
  String? fontFamily;
  Color? color;

 GlobalText({super.key,
             @required this.text ,
             this.fontSize = 20.0,
             this.fontWeight = FontWeight.w600,
             this.fontFamily = 'Mono Space',
             this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text('$text',
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      color: color,
    ),);
  }
}
