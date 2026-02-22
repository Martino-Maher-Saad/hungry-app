import 'package:flutter/material.dart';


class CustomTxt extends StatelessWidget {

  final String text;
  final Color? color;
  final double? size;
  final FontWeight? weight;

  const CustomTxt({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.weight
  });

  @override
  Widget build(BuildContext context) {

    return Text(
      text,

      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
