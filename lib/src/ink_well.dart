import 'package:flutter/material.dart';

class InkWellUnderlineText extends StatefulWidget {
  final Color color;
  final GestureTapCallback? onTap;
  final String text;
  final TextAlign? textAlign;
  final TextStyle? textStyle;

  InkWellUnderlineText({
    required this.color,
    this.onTap,
    required this.text,
    this.textAlign,
    this.textStyle,
  });

  @override
  _InkWellUnderlineTextState createState() => _InkWellUnderlineTextState();
}

class _InkWellUnderlineTextState extends State<InkWellUnderlineText> {
  late bool _underline;

  @override
  void initState() {
    _underline = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        widget.text,
        textAlign: widget.textAlign,
        style: widget.textStyle == null
            ? TextStyle(
                decoration: _underline ? TextDecoration.underline : null,
                decorationColor: widget.color,
                decorationThickness: 1.25,
              )
            : widget.textStyle!.copyWith(
                decoration: _underline ? TextDecoration.underline : null,
                decorationColor: widget.color,
                decorationThickness: 1.25,
              ),
      ),
      onTap: widget.onTap,
      onHover: _onHover,
    );
  }

  void _onHover(bool isHover) {
    setState(() {
      _underline = isHover;
    });
  }
}

class InkWellUnderline extends StatefulWidget {
  final Color color;
  final Widget child;
  final GestureTapCallback? onTap;

  InkWellUnderline({
    required this.color,
    required this.child,
    this.onTap,
  });

  @override
  _InkWellUnderlineState createState() => _InkWellUnderlineState();
}

class _InkWellUnderlineState extends State<InkWellUnderline> {
  late bool _underline;

  @override
  void initState() {
    _underline = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: _underline
              ? BorderSide(
                  color: widget.color,
                )
              : BorderSide.none,
        ),
      ),
      child: InkWell(
        child: widget.child,
        onTap: widget.onTap,
      ),
    );
  }
}