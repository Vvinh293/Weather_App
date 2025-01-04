import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [HexColor('#3B5284'), HexColor('#5BA8A0'),],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,)
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: HexColor('0xAARRGGBB'),
            ),
          ),
        ),
      ],
    );
  }
}
