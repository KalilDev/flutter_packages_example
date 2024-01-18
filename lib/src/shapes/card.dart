import 'package:flutter/material.dart';
import 'package:vector_drawable/vector_drawable.dart' hide Path;

class CardShape extends OutlinedBorder {
  const CardShape({
    BorderSide side = BorderSide.none,
  }) : super(side: side);
  @override
  OutlinedBorder copyWith({BorderSide? side}) => CardShape(
        side: side ?? this.side,
      );

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(side.width);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) =>
      _shape(rect, textDirection)
          .getInnerPath(rect, textDirection: textDirection);

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) =>
      _shape(rect, textDirection)
          .getOuterPath(rect, textDirection: textDirection);

  OutlinedBorder _shape(Rect rect, TextDirection? textDirection) =>
      RoundedRectangleBorder(
        side: side,
        borderRadius: BorderRadius.circular(
          4.032 * (rect.width / 62),
        ),
      );

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) =>
      _shape(rect, textDirection)
          .paint(canvas, rect, textDirection: textDirection);

  @override
  ShapeBorder scale(double t) => copyWith(side: side.scale(t));
}
