import 'package:flutter/material.dart';
import 'package:simple_ink/src/enums.dart';

enum InkType {
  Well,
}

class HoverInkAnim {
  late final Widget child;
  final Color color;
  late final HoverAnim hoverAnim;
  late final String text;
  late final TextAlign? textAlign;
  late final TextStyle? textStyle;

  HoverInkAnim.underline({
    this.color = Colors.white,
    required this.child,
  }) {
    hoverAnim = HoverAnim.Underline;
  }

  HoverInkAnim.underlineText({
    this.color = Colors.white,
    required this.text,
    this.textAlign,
    this.textStyle,
  }) {
    hoverAnim = HoverAnim.UnderlineText;
  }
}