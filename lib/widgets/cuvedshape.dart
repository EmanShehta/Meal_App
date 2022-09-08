import 'package:flutter/material.dart';

class Cuvedshape extends ContinuousRectangleBorder {
  final double curveheights;
  const Cuvedshape(this.curveheights);

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) => Path()
    ..lineTo(0, rect.size.height)
    ..quadraticBezierTo(rect.size.width / 2, rect.height + curveheights * 2,
        rect.size.width, rect.size.height)
    ..lineTo(rect.size.width, 0)
    ..close();
}
