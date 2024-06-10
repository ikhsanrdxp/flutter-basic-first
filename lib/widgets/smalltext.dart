import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  Color color;
  final String text;
  double size;

  SmallText({
    super.key,
    this.color = const Color(0xFF5c524f),
    required this.text,
    this.size = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'AbhayaLibre',
        color: color,
        fontSize: size,
      ),
    );
  }
}
