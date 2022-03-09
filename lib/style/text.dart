import 'package:flutter/material.dart';
import 'size.dart';


class NSP28Medium extends StatelessWidget {
  NSP28Medium({this.text, this.color, this.alignment, this.textAlign});
  final String? text;
  final Color? color;
  final Alignment? alignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment!,
      child: Text(
        text!,
        textAlign: textAlign,
        style: TextStyle(
            letterSpacing: 0.42,
            color: color,
            fontSize: h28,
            fontFamily: 'NSP',
            fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}