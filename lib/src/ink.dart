import 'package:flutter/material.dart';
import 'package:simple_ink/src/constants.dart';
import 'package:simple_ink/src/enums.dart';
import 'package:simple_ink/src/ink_well.dart';

///Create an ink
class SimpleInk extends StatelessWidget {
  final HoverInkAnim hoverInkAnim;
  final InkType inkType;
  final GestureTapCallback onTap;

  SimpleInk({
    required this.hoverInkAnim,
    required this.inkType,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (inkType == InkType.Well) {
      switch (hoverInkAnim.hoverAnim) {
        case HoverAnim.UnderlineText:
          return InkWellUnderlineText(
            color: hoverInkAnim.color,
            text: hoverInkAnim.text,
            textStyle: hoverInkAnim.textStyle,
            onTap: onTap,
          );
        case HoverAnim.Underline:
          return InkWellUnderline(
            color: hoverInkAnim.color,
            child: hoverInkAnim.child,
          );
      }
    } else
      return InkWell();
  }
}