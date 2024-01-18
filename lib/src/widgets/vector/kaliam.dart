import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kaliam/vector.dart';
import 'package:vector_drawable/vector_drawable.dart';

class InheritedKaliamVectorStyle extends InheritedWidget {
  final KaliamVectorStyle style;
  const InheritedKaliamVectorStyle({
    required this.style,
    required super.child,
  });

  @override
  bool updateShouldNotify(InheritedKaliamVectorStyle oldWidget) {
    return true;
  }

  static Widget merge({
    required KaliamVectorStyle animation,
    required Widget child,
  }) =>
      Builder(
        builder: (context) => InheritedKaliamVectorStyle(
          style: (maybeOf(context) ?? const KaliamVectorStyle.raw())
              .mergeWith(animation),
          child: child,
        ),
      );

  static KaliamVectorStyle? maybeOf(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<InheritedKaliamVectorStyle>()
      ?.style;
  static KaliamVectorStyle of(BuildContext context) => maybeOf(context)!;
}

class InheritedKaliamVectorAnimation extends InheritedWidget {
  final KaliamVectorAnimation animation;
  const InheritedKaliamVectorAnimation({
    required this.animation,
    required super.child,
  });

  @override
  bool updateShouldNotify(InheritedKaliamVectorAnimation oldWidget) {
    return true;
  }

  static Widget merge({
    required KaliamVectorAnimation animation,
    required Widget child,
  }) =>
      Builder(
        builder: (context) => InheritedKaliamVectorAnimation(
          animation: (maybeOf(context) ?? const KaliamVectorAnimation.raw())
              .mergeWith(animation),
          child: child,
        ),
      );

  static KaliamVectorAnimation? maybeOf(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<InheritedKaliamVectorAnimation>()
      ?.animation;
  static KaliamVectorAnimation of(BuildContext context) => maybeOf(context)!;
}

class KaliamWidget extends StatelessWidget {
  const KaliamWidget({
    super.key,
    this.style,
    this.animation,
    this.clip = Clip.hardEdge,
    this.child,
  });
  final KaliamVectorStyle? style;
  final KaliamVectorAnimation? animation;
  final Clip? clip;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    var style = this.style ?? const KaliamVectorStyle.raw();
    style = style.mergeWith(InheritedKaliamVectorStyle.maybeOf(context) ??
        KaliamVectorStyle.regular);
    var animation = this.animation ?? const KaliamVectorAnimation.raw();
    animation = animation.mergeWith(
        InheritedKaliamVectorAnimation.maybeOf(context) ??
            KaliamVectorAnimation.regular);
    return VectorWidget(
      vector: kaliamVector,
      styleResolver:
          style.toStyleResolver().mergeWith(animation.toStyleResolver()),
      viewportClip: clip,
      //cachingStrategy: {},
      usingColorSchemeColors: false,
      child: child,
    );
  }
}
