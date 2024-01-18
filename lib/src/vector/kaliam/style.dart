import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vector_drawable_core/model.dart';

class KaliamVectorStyle {
  final VectorColor? liamEarDetail;
  final VectorColor? liamShyCheeks;
  final VectorColor? liamStroke;
  final VectorColor? liamWhiskers;
  final double? liamWhiskersWidth;
  final VectorColor? liamNose;
  final VectorColor? liamEyes;
  final VectorColor? liamFill;
  final VectorColor? kalilStroke;
  final VectorColor? kalilEyes;
  final VectorColor? kalilNose;
  final VectorColor? kalilWhiskers;
  final VectorColor? kalilBodyFill;
  final VectorColor? kalilTailFill;
  final VectorColor? heartStroke;
  final VectorColor? heartFill;
  final VectorColor? liamRed;
  final VectorColor? kalilPurple;

  factory KaliamVectorStyle.of({
    VectorColor? liamStroke,
    VectorColor? liamWhiskers,
    VectorColor? liamEyes,
    VectorColor? liamShyCheeks,
    double? liamWhiskersWidth,
    VectorColor? liamFill,
    VectorColor? liamRed,
    VectorColor? kalilStroke,
    VectorColor? kalilTailFill,
    VectorColor? kalilBodyFill,
    VectorColor? kalilPurple,
    VectorColor? heartStroke,
    VectorColor? heartFill,
    VectorColor? liamEarDetail,
    VectorColor? liamNose,
    VectorColor? kalilEyes,
    VectorColor? kalilNose,
    VectorColor? kalilWhiskers,
  }) {
    liamStroke ??= VectorColor.argb(Colors.grey[850]!.value);
    liamWhiskers ??= VectorColor.argb(Colors.grey[500]!.value);
    liamShyCheeks ??= VectorColor.argb(Colors.pink[300]!.value);
    liamEyes ??= VectorColor.argb(Colors.brown[700]!.value);
    liamFill ??= VectorColor.argb(Colors.grey[900]!.value);
    liamRed ??= VectorColor.argb(Color.fromARGB(255, 197, 20, 20).value);
    kalilStroke ??= VectorColor.rgba(0x000000ff);
    kalilTailFill ??= VectorColor.rgba(0xd37432ff);
    kalilBodyFill ??= VectorColor.rgba(0xe69843ff);
    kalilPurple ??= VectorColor.argb(Color.fromARGB(255, 115, 69, 194).value);
    heartStroke ??= VectorColor.rgba(0xe69843ff);
    heartFill ??= VectorColor.argb(Color.fromARGB(255, 115, 69, 194).value);
    liamEarDetail ??= liamStroke;
    liamWhiskersWidth ??= 0.132292 / 4;
    liamNose ??= liamStroke;
    kalilEyes ??= kalilStroke;
    kalilNose ??= kalilStroke;
    kalilWhiskers ??= kalilStroke;
    return KaliamVectorStyle.raw(
      liamEarDetail: liamEarDetail,
      liamShyCheeks: liamShyCheeks,
      liamStroke: liamStroke,
      liamWhiskers: liamWhiskers,
      liamWhiskersWidth: liamWhiskersWidth,
      liamNose: liamNose,
      liamEyes: liamEyes,
      liamFill: liamFill,
      kalilStroke: kalilStroke,
      kalilEyes: kalilEyes,
      kalilNose: kalilNose,
      kalilWhiskers: kalilWhiskers,
      kalilBodyFill: kalilBodyFill,
      kalilTailFill: kalilTailFill,
      heartStroke: heartStroke,
      heartFill: heartFill,
      liamRed: liamRed,
      kalilPurple: kalilPurple,
    );
  }
  const KaliamVectorStyle.raw({
    this.liamEarDetail,
    this.liamShyCheeks,
    this.liamStroke,
    this.liamWhiskers,
    this.liamWhiskersWidth,
    this.liamNose,
    this.liamEyes,
    this.liamFill,
    this.kalilStroke,
    this.kalilEyes,
    this.kalilNose,
    this.kalilWhiskers,
    this.kalilBodyFill,
    this.kalilTailFill,
    this.heartStroke,
    this.heartFill,
    this.liamRed,
    this.kalilPurple,
  });

  static final KaliamVectorStyle regular = KaliamVectorStyle.of(
    liamStroke: VectorColor.argb(Colors.grey[850]!.value),
    liamFill: VectorColor.argb(Colors.grey[900]!.value),
    liamRed: VectorColor.argb(Color.fromARGB(255, 197, 20, 20).value),
    kalilStroke: VectorColor.rgba(0x000000ff),
    kalilTailFill: VectorColor.rgba(0xd37432ff),
    kalilBodyFill: VectorColor.rgba(0xe69843ff),
    kalilPurple: VectorColor.argb(Color.fromARGB(255, 115, 69, 194).value),
  );

  KaliamVectorStyle mergeWith(KaliamVectorStyle other) => KaliamVectorStyle.raw(
        liamEarDetail: other.liamEarDetail ?? liamEarDetail,
        liamShyCheeks: other.liamShyCheeks ?? liamShyCheeks,
        liamStroke: other.liamStroke ?? liamStroke,
        liamWhiskers: other.liamWhiskers ?? liamWhiskers,
        liamWhiskersWidth: other.liamWhiskersWidth ?? liamWhiskersWidth,
        liamNose: other.liamNose ?? liamNose,
        liamEyes: other.liamEyes ?? liamEyes,
        liamFill: other.liamFill ?? liamFill,
        kalilStroke: other.kalilStroke ?? kalilStroke,
        kalilEyes: other.kalilEyes ?? kalilEyes,
        kalilNose: other.kalilNose ?? kalilNose,
        kalilWhiskers: other.kalilWhiskers ?? kalilWhiskers,
        kalilBodyFill: other.kalilBodyFill ?? kalilBodyFill,
        kalilTailFill: other.kalilTailFill ?? kalilTailFill,
        heartStroke: other.heartStroke ?? heartStroke,
        heartFill: other.heartFill ?? heartFill,
        liamRed: other.liamRed ?? liamRed,
        kalilPurple: other.kalilPurple ?? kalilPurple,
      );

  KaliamVectorStyle copyWith({
    VectorColor? liamStroke,
    VectorColor? liamWhiskers,
    VectorColor? liamEyes,
    VectorColor? liamShyCheeks,
    double? liamWhiskersWidth,
    VectorColor? liamFill,
    VectorColor? liamRed,
    VectorColor? kalilStroke,
    VectorColor? kalilTailFill,
    VectorColor? kalilBodyFill,
    VectorColor? kalilPurple,
    VectorColor? heartStroke,
    VectorColor? heartFill,
    VectorColor? liamEarDetail,
    VectorColor? liamNose,
    VectorColor? kalilEyes,
    VectorColor? kalilNose,
    VectorColor? kalilWhiskers,
  }) =>
      KaliamVectorStyle.raw(
        liamEarDetail: liamEarDetail ?? this.liamEarDetail,
        liamShyCheeks: liamShyCheeks ?? this.liamShyCheeks,
        liamStroke: liamStroke ?? this.liamStroke,
        liamWhiskers: liamWhiskers ?? this.liamWhiskers,
        liamWhiskersWidth: liamWhiskersWidth ?? this.liamWhiskersWidth,
        liamNose: liamNose ?? this.liamNose,
        liamEyes: liamEyes ?? this.liamEyes,
        liamFill: liamFill ?? this.liamFill,
        kalilStroke: kalilStroke ?? this.kalilStroke,
        kalilEyes: kalilEyes ?? this.kalilEyes,
        kalilNose: kalilNose ?? this.kalilNose,
        kalilWhiskers: kalilWhiskers ?? this.kalilWhiskers,
        kalilBodyFill: kalilBodyFill ?? this.kalilBodyFill,
        kalilTailFill: kalilTailFill ?? this.kalilTailFill,
        heartStroke: heartStroke ?? this.heartStroke,
        heartFill: heartFill ?? this.heartFill,
        liamRed: liamRed ?? this.liamRed,
        kalilPurple: kalilPurple ?? this.kalilPurple,
      );

  StyleResolver toStyleResolver() => StyleResolver.fromMap(
        {
          'liam:earDetail': liamEarDetail ?? regular.liamEarDetail!,
          'liam:shyCheeks': liamShyCheeks ?? regular.liamShyCheeks!,
          'liam:stroke': liamStroke ?? regular.liamStroke!,
          'liam:whiskers': liamWhiskers ?? regular.liamWhiskers!,
          'liam:whiskersWidth': liamWhiskersWidth ?? regular.liamWhiskersWidth!,
          'liam:nose': liamNose ?? regular.liamNose!,
          'liam:eyes': liamEyes ?? regular.liamEyes!,
          'liam:fill': liamFill ?? regular.liamFill!,
          'kalil:stroke': kalilStroke ?? regular.kalilStroke!,
          'kalil:eyes': kalilEyes ?? regular.kalilEyes!,
          'kalil:nose': kalilNose ?? regular.kalilNose!,
          'kalil:whiskers': kalilWhiskers ?? regular.kalilWhiskers!,
          'kalil:bodyFill': kalilBodyFill ?? regular.kalilBodyFill!,
          'kalil:tailFill': kalilTailFill ?? regular.kalilTailFill!,
          'heart:stroke': heartStroke ?? regular.heartStroke!,
          'heart:fill': heartFill ?? regular.heartFill!,
          'liam:red': liamRed ?? regular.liamRed!,
          'kalil:purple': kalilPurple ?? regular.kalilPurple!,
        },
        namespace: 'style',
      );
}

class KaliamVectorAnimation {
  final double? yanX;
  final double? yinX;
  final double? childX;
  final double? childY;
  final double? childWidth;
  final double? childHeight;
  final double? heartScale;
  const KaliamVectorAnimation.raw({
    this.yanX,
    this.yinX,
    this.childX,
    this.childY,
    this.childWidth,
    this.childHeight,
    this.heartScale,
  });
  static KaliamVectorAnimation regular = KaliamVectorAnimation.raw(
    yanX: 0.0,
    yinX: 0.0,
    childX: 0.0,
    childY: 0.0,
    childWidth: 62.0,
    childHeight: 88.0,
    heartScale: 1.0,
  );
  KaliamVectorAnimation mergeWith(KaliamVectorAnimation other) =>
      KaliamVectorAnimation.raw(
        yanX: other.yanX ?? yanX,
        yinX: other.yinX ?? yinX,
        childX: other.childX ?? childX,
        childY: other.childY ?? childY,
        childWidth: other.childWidth ?? childWidth,
        childHeight: other.childHeight ?? childHeight,
        heartScale: other.heartScale ?? heartScale,
      );
  KaliamVectorAnimation copyWith({
    double? yanX,
    double? yinX,
    double? childX,
    double? childY,
    double? childWidth,
    double? childHeight,
    double? heartScale,
  }) =>
      KaliamVectorAnimation.raw(
        yanX: yanX ?? this.yanX,
        yinX: yinX ?? this.yinX,
        childX: childX ?? this.childX,
        childY: childY ?? this.childY,
        childWidth: childWidth ?? this.childWidth,
        childHeight: childHeight ?? this.childHeight,
        heartScale: heartScale ?? this.heartScale,
      );
  StyleResolver toStyleResolver() => StyleResolver.fromMap(
        {
          'yan:transform': TransformList([
            const Rotate(pi, -2.4011454, -26.446448),
            Translate(yanX ?? regular.yanX!, 0.0)
          ]),
          'yin:transform': TransformList([
            const Translate(-0.4893758, 0.0062),
            Translate(yinX ?? regular.yinX!, 0.0)
          ]),
          'child:x': childX ?? regular.childX!,
          'child:y': childY ?? regular.childY!,
          'child:width': childWidth ?? regular.childWidth!,
          'child:height': childHeight ?? regular.childHeight!,
          'heart:transform': Scale(heartScale ?? regular.heartScale!),
        },
        namespace: 'animation',
      );
}
