import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigText(
      {super.key,
      this.color = const Color(0xFF89dad0),
      required this.text,
      this.size = 20,
      this.overFlow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
        fontFamily: 'AbhayaLibre',
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold
      ),

    );
  }
}
