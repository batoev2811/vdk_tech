import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _prefferedHeight = 100.0;

  String title;
  Color gradientBegin, gradientEnd;

  GradientAppBar({super.key, 
    required this.title,
    required this.gradientBegin,
    required this.gradientEnd,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSize = screenWidth * 0.02;
    final letterSpacing = screenWidth * 0.003;

    return Container(
      height: _prefferedHeight,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [gradientBegin, gradientEnd]),
      ),
      child: Row(
        children: [
          Image(image: AssetImage('lib/utils/images/logo.png')),
          SizedBox(width: 10),
          Text(
            'МУП Водоканал | Техприсоединение',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: letterSpacing,
              fontSize: fontSize,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_prefferedHeight);
}
