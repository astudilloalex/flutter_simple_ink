import 'package:flutter/material.dart';
import 'package:simple_ink/src/constants.dart';
import 'package:simple_ink/src/ink_well.dart';

class SimpleInk extends StatelessWidget {
  final InkType inkType;

  SimpleInk({required this.inkType});

  @override
  Widget build(BuildContext context) {
    return SimpleInkWell();
  }
}