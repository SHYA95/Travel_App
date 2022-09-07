import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        BuildContext,
        Colors,
        FontWeight,
        Key,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;

class AppLargeText extends StatelessWidget {
  double size;
  final color;
  final String text;
  AppLargeText(
      {Key? key, this.size = 30, this.color = Colors.black, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: color, fontSize: size, fontWeight: FontWeight.bold));
  }
}
