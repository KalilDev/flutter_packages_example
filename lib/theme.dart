import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_widgets/material_widgets.dart';

extension MyAppCustomColorsContextE on BuildContext {
  MyAppCustomColorsTheme get customColorsTheme => InheritedAppCustomColorTheme
      .maybeOf<MyAppCustomColors, MyAppCustomColorsTheme>(this)!;

  MyAppCustomColors get customColors =>
      InheritedAppCustomColorScheme.maybeOf<MyAppCustomColors>(this)!;
}

class MyAppCustomColorsTheme
    extends AppCustomColorTheme<MyAppCustomColors, MyAppCustomColorsTheme>
    with Diagnosticable {
  const MyAppCustomColorsTheme({
    required this.redTheme,
    required this.orangeTheme,
    required this.yellowTheme,
    required this.greenTheme,
    required this.cyanTheme,
    required this.lightBlueTheme,
    required this.blueTheme,
    required this.purpleTheme,
    required this.pinkTheme,
    required this.brownTheme,
    required this.greyTheme,
  });

  static MyAppCustomColorsTheme fromMonetTheme(MonetTheme t) =>
      MyAppCustomColorsTheme(
        redTheme: t.harmonizedCustomColorTheme(redSeed),
        orangeTheme: t.harmonizedCustomColorTheme(orangeSeed),
        yellowTheme: t.harmonizedCustomColorTheme(yellowSeed),
        greenTheme: t.harmonizedCustomColorTheme(greenSeed),
        cyanTheme: t.harmonizedCustomColorTheme(cyanSeed),
        lightBlueTheme: t.harmonizedCustomColorTheme(lightBlueSeed),
        blueTheme: t.harmonizedCustomColorTheme(blueSeed),
        purpleTheme: t.harmonizedCustomColorTheme(purpleSeed),
        pinkTheme: t.harmonizedCustomColorTheme(pinkSeed),
        brownTheme: t.harmonizedCustomColorTheme(brownSeed),
        greyTheme: t.harmonizedCustomColorTheme(greySeed),
      );

  static const Color redSeed = Color(0xFFf28b82);
  static const Color orangeSeed = Color(0xFFfbbc04);
  static const Color yellowSeed = Color(0xFFfff475);
  static const Color greenSeed = Color(0xFFccff90);
  static const Color cyanSeed = Color(0xFFa7ffeb);
  static const Color lightBlueSeed = Color(0xFFcbf0f8);
  static const Color blueSeed = Color(0xFFaecbfa);
  static const Color purpleSeed = Color(0xFFd7aefb);
  static const Color pinkSeed = Color(0xFFfdcfe8);
  static const Color brownSeed = Color(0xFFe6c9a8);
  static const Color greySeed = Color(0xFFe8eaed);
  final CustomColorTheme redTheme;
  final CustomColorTheme orangeTheme;
  final CustomColorTheme yellowTheme;
  final CustomColorTheme greenTheme;
  final CustomColorTheme cyanTheme;
  final CustomColorTheme lightBlueTheme;
  final CustomColorTheme blueTheme;
  final CustomColorTheme purpleTheme;
  final CustomColorTheme pinkTheme;
  final CustomColorTheme brownTheme;
  final CustomColorTheme greyTheme;

  @override
  MyAppCustomColors get light => MyAppCustomColors(
        red: redTheme.light,
        orange: orangeTheme.light,
        yellow: yellowTheme.light,
        green: greenTheme.light,
        cyan: cyanTheme.light,
        lightBlue: lightBlueTheme.light,
        blue: blueTheme.light,
        purple: purpleTheme.light,
        pink: pinkTheme.light,
        brown: brownTheme.light,
        grey: greyTheme.light,
      );

  @override
  MyAppCustomColors get dark => MyAppCustomColors(
        red: redTheme.dark,
        orange: orangeTheme.dark,
        yellow: yellowTheme.dark,
        green: greenTheme.dark,
        cyan: cyanTheme.dark,
        lightBlue: lightBlueTheme.dark,
        blue: blueTheme.dark,
        purple: purpleTheme.dark,
        pink: pinkTheme.dark,
        brown: brownTheme.dark,
        grey: greyTheme.dark,
      );

  @override
  MyAppCustomColorsTheme lerpWith(MyAppCustomColorsTheme b, double t) =>
      lerp(this, b, t);

  @override
  int get hashCode => Object.hashAll([
        redTheme,
        orangeTheme,
        yellowTheme,
        greenTheme,
        cyanTheme,
        lightBlueTheme,
        blueTheme,
        purpleTheme,
        pinkTheme,
        brownTheme,
        greyTheme,
      ]);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) {
      return true;
    }
    if (other is MyAppCustomColorsTheme) {
      return true &&
          redTheme == other.redTheme &&
          orangeTheme == other.orangeTheme &&
          yellowTheme == other.yellowTheme &&
          greenTheme == other.greenTheme &&
          cyanTheme == other.cyanTheme &&
          lightBlueTheme == other.lightBlueTheme &&
          blueTheme == other.blueTheme &&
          purpleTheme == other.purpleTheme &&
          pinkTheme == other.pinkTheme &&
          brownTheme == other.brownTheme &&
          greyTheme == other.greyTheme;
    }
    return false;
  }

  MyAppCustomColorsTheme copyWith({
    CustomColorTheme? redTheme,
    CustomColorTheme? orangeTheme,
    CustomColorTheme? yellowTheme,
    CustomColorTheme? greenTheme,
    CustomColorTheme? cyanTheme,
    CustomColorTheme? lightBlueTheme,
    CustomColorTheme? blueTheme,
    CustomColorTheme? purpleTheme,
    CustomColorTheme? pinkTheme,
    CustomColorTheme? brownTheme,
    CustomColorTheme? greyTheme,
  }) =>
      MyAppCustomColorsTheme(
        redTheme: redTheme ?? this.redTheme,
        orangeTheme: orangeTheme ?? this.orangeTheme,
        yellowTheme: yellowTheme ?? this.yellowTheme,
        greenTheme: greenTheme ?? this.greenTheme,
        cyanTheme: cyanTheme ?? this.cyanTheme,
        lightBlueTheme: lightBlueTheme ?? this.lightBlueTheme,
        blueTheme: blueTheme ?? this.blueTheme,
        purpleTheme: purpleTheme ?? this.purpleTheme,
        pinkTheme: pinkTheme ?? this.pinkTheme,
        brownTheme: brownTheme ?? this.brownTheme,
        greyTheme: greyTheme ?? this.greyTheme,
      );

  static MyAppCustomColorsTheme lerp(
      MyAppCustomColorsTheme a, MyAppCustomColorsTheme b, double t) {
    assert(a != null);
    assert(b != null);
    assert(t != null);
    return MyAppCustomColorsTheme(
      redTheme: CustomColorTheme.lerp(a.redTheme, b.redTheme, t),
      orangeTheme: CustomColorTheme.lerp(a.orangeTheme, b.orangeTheme, t),
      yellowTheme: CustomColorTheme.lerp(a.yellowTheme, b.yellowTheme, t),
      greenTheme: CustomColorTheme.lerp(a.greenTheme, b.greenTheme, t),
      cyanTheme: CustomColorTheme.lerp(a.cyanTheme, b.cyanTheme, t),
      lightBlueTheme:
          CustomColorTheme.lerp(a.lightBlueTheme, b.lightBlueTheme, t),
      blueTheme: CustomColorTheme.lerp(a.blueTheme, b.blueTheme, t),
      purpleTheme: CustomColorTheme.lerp(a.purpleTheme, b.purpleTheme, t),
      pinkTheme: CustomColorTheme.lerp(a.pinkTheme, b.pinkTheme, t),
      brownTheme: CustomColorTheme.lerp(a.brownTheme, b.brownTheme, t),
      greyTheme: CustomColorTheme.lerp(a.greyTheme, b.greyTheme, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<CustomColorTheme>('redTheme', redTheme));
    properties
        .add(DiagnosticsProperty<CustomColorTheme>('orangeTheme', orangeTheme));
    properties
        .add(DiagnosticsProperty<CustomColorTheme>('yellowTheme', yellowTheme));
    properties
        .add(DiagnosticsProperty<CustomColorTheme>('greenTheme', greenTheme));
    properties
        .add(DiagnosticsProperty<CustomColorTheme>('cyanTheme', cyanTheme));
    properties.add(DiagnosticsProperty<CustomColorTheme>(
        'lightBlueTheme', lightBlueTheme));
    properties
        .add(DiagnosticsProperty<CustomColorTheme>('blueTheme', blueTheme));
    properties
        .add(DiagnosticsProperty<CustomColorTheme>('purpleTheme', purpleTheme));
    properties
        .add(DiagnosticsProperty<CustomColorTheme>('pinkTheme', pinkTheme));
    properties
        .add(DiagnosticsProperty<CustomColorTheme>('brownTheme', brownTheme));
    properties
        .add(DiagnosticsProperty<CustomColorTheme>('greyTheme', greyTheme));
  }
}

class MyAppCustomColors extends AppCustomColorScheme<MyAppCustomColors>
    with Diagnosticable {
  const MyAppCustomColors({
    required this.red,
    required this.orange,
    required this.yellow,
    required this.green,
    required this.cyan,
    required this.lightBlue,
    required this.blue,
    required this.purple,
    required this.pink,
    required this.brown,
    required this.grey,
  });

  final CustomColorScheme red;
  final CustomColorScheme orange;
  final CustomColorScheme yellow;
  final CustomColorScheme green;
  final CustomColorScheme cyan;
  final CustomColorScheme lightBlue;
  final CustomColorScheme blue;
  final CustomColorScheme purple;
  final CustomColorScheme pink;
  final CustomColorScheme brown;
  final CustomColorScheme grey;

  @override
  MyAppCustomColors lerpWith(MyAppCustomColors b, double t) => lerp(this, b, t);

  @override
  int get hashCode => Object.hashAll([
        red,
        orange,
        yellow,
        green,
        cyan,
        lightBlue,
        blue,
        purple,
        pink,
        brown,
        grey,
      ]);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) {
      return true;
    }
    if (other is MyAppCustomColors) {
      return true &&
          red == other.red &&
          orange == other.orange &&
          yellow == other.yellow &&
          green == other.green &&
          cyan == other.cyan &&
          lightBlue == other.lightBlue &&
          blue == other.blue &&
          purple == other.purple &&
          pink == other.pink &&
          brown == other.brown &&
          grey == other.grey;
    }
    return false;
  }

  MyAppCustomColors copyWith({
    CustomColorScheme? red,
    CustomColorScheme? orange,
    CustomColorScheme? yellow,
    CustomColorScheme? green,
    CustomColorScheme? cyan,
    CustomColorScheme? lightBlue,
    CustomColorScheme? blue,
    CustomColorScheme? purple,
    CustomColorScheme? pink,
    CustomColorScheme? brown,
    CustomColorScheme? grey,
  }) =>
      MyAppCustomColors(
        red: red ?? this.red,
        orange: orange ?? this.orange,
        yellow: yellow ?? this.yellow,
        green: green ?? this.green,
        cyan: cyan ?? this.cyan,
        lightBlue: lightBlue ?? this.lightBlue,
        blue: blue ?? this.blue,
        purple: purple ?? this.purple,
        pink: pink ?? this.pink,
        brown: brown ?? this.brown,
        grey: grey ?? this.grey,
      );

  static MyAppCustomColors lerp(
      MyAppCustomColors a, MyAppCustomColors b, double t) {
    assert(a != null);
    assert(b != null);
    assert(t != null);
    return MyAppCustomColors(
      red: CustomColorScheme.lerp(a.red, b.red, t),
      orange: CustomColorScheme.lerp(a.orange, b.orange, t),
      yellow: CustomColorScheme.lerp(a.yellow, b.yellow, t),
      green: CustomColorScheme.lerp(a.green, b.green, t),
      cyan: CustomColorScheme.lerp(a.cyan, b.cyan, t),
      lightBlue: CustomColorScheme.lerp(a.lightBlue, b.lightBlue, t),
      blue: CustomColorScheme.lerp(a.blue, b.blue, t),
      purple: CustomColorScheme.lerp(a.purple, b.purple, t),
      pink: CustomColorScheme.lerp(a.pink, b.pink, t),
      brown: CustomColorScheme.lerp(a.brown, b.brown, t),
      grey: CustomColorScheme.lerp(a.grey, b.grey, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<CustomColorScheme>('red', red));
    properties.add(DiagnosticsProperty<CustomColorScheme>('orange', orange));
    properties.add(DiagnosticsProperty<CustomColorScheme>('yellow', yellow));
    properties.add(DiagnosticsProperty<CustomColorScheme>('green', green));
    properties.add(DiagnosticsProperty<CustomColorScheme>('cyan', cyan));
    properties
        .add(DiagnosticsProperty<CustomColorScheme>('lightBlue', lightBlue));
    properties.add(DiagnosticsProperty<CustomColorScheme>('blue', blue));
    properties.add(DiagnosticsProperty<CustomColorScheme>('purple', purple));
    properties.add(DiagnosticsProperty<CustomColorScheme>('pink', pink));
    properties.add(DiagnosticsProperty<CustomColorScheme>('brown', brown));
    properties.add(DiagnosticsProperty<CustomColorScheme>('grey', grey));
  }
}
