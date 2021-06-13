import 'package:flutter/material.dart';
import 'package:simple_ink/simple_ink.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              ///Create an Simple Ink with underline hover text
              child: SimpleInk(
                hoverInkAnim: HoverInkAnim.underlineText(
                  text: 'Login',
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                inkType: InkType.Well,
                onTap: () {
                  print('Tap');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}