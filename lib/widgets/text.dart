import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyText extends StatelessWidget {
  String _text;
  TextStyle _textStyle;
  MyText(this._text, this._textStyle);
  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: _textStyle,
    );
  }
}
