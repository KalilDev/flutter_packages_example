import 'package:flutter/material.dart';
import 'package:material_widgets/material_widgets.dart';

void runKaliamApp(Widget app) {
  return runDynamicallyThemedApp(
    app,
    fallback: () => baseline3PCorePalette,
  );
}
