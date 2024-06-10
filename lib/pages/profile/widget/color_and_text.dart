import 'package:flutter/material.dart';
import 'package:login/widgets/smalltext.dart';

class ColorAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color iconColor;

  const ColorAndText(
      {super.key,
      required this.icon,
      required this.text,
      required this.color,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,size: 18,),
        const SizedBox(width: 5,),
        SmallText(text: text,color: color,)
      ],
    );
  }
}
