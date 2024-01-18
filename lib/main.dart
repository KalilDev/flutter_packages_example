import 'package:flutter/foundation.dart';

import 'app.dart';

Future<void> main() async {
  final target = getTarget();
  final injector = await initializeKaliamApp(target);
  runKaliamApp(const KaliamApp(), injector: injector);
}

Target getTarget() {
  final ExecutionMode executionMode;
  if (kDebugMode) {
    executionMode = ExecutionMode.debug;
  } else if (kProfileMode) {
    executionMode = ExecutionMode.profile;
  } else if (kReleaseMode) {
    executionMode = ExecutionMode.release;
  } else {
    throw UnimplementedError();
  }
  final flutterPlatorm = defaultTargetPlatform;
  final RunningPlatform runningPlatform;
  if (!kIsWeb) {
    switch (flutterPlatorm) {
      case TargetPlatform.android:
        runningPlatform = RunningPlatform.android;
        break;
      case TargetPlatform.linux:
        runningPlatform = RunningPlatform.linux;
        break;
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
      case TargetPlatform.fuchsia:
      case TargetPlatform.iOS:
        throw UnimplementedError();
    }
  } else {
    runningPlatform = RunningPlatform.web;
  }
  return Target(runningPlatform, executionMode);
}
