import 'package:kaliam/pages.dart';
import 'package:kaliam/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_widgets/material_widgets.dart';

class KaliamApp extends StatelessWidget {
  const KaliamApp({super.key});
  static const themeMode = ThemeMode.system;
  @override
  Widget build(BuildContext context) =>
      MD3ThemedApp<KaliamAppCustomColors, KaliamAppCustomColorsTheme>(
        appThemeFactory: (theme) =>
            KaliamAppCustomColorsTheme.fromMonetTheme(theme),
        builder: (context, light, dark) => MaterialApp(
          title: 'Kaliam',
          theme: light,
          darkTheme: dark,
          themeMode: themeMode,
          builder: (context, home) => AnimatedMonetColorSchemes<
              KaliamAppCustomColors, KaliamAppCustomColorsTheme>(
            themeMode: themeMode,
            child: home!,
          ),
          home: const HomePageBuilder(),
        ),
      );
}
