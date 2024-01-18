import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kalil_utils/injector.dart';
import 'package:value_listenables/value_listenables.dart';
import 'package:vector_drawable/vector_drawable.dart';

import 'firebase_options.dart';
import 'target.dart';

Future<void> _initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

extension on Target {
  bool get usesFirebase =>
      const {RunningPlatform.android, RunningPlatform.web}.contains(platform);
}

void _addFirebaseImplsToInjectorScope(InjectorScopeBuilder scopeBuilder) {}
void _addMockImplsToInjectorScope(InjectorScopeBuilder scopeBuilder) {}

Future<Injector> initializeKaliamApp(Target target) async {
  initializeVectorDrawableFlutter();
  if (target.usesFirebase) {
    WidgetsFlutterBinding.ensureInitialized();
    await _initializeFirebase();
  }
  return Injector((scopeBuilder) {
    if (target.usesFirebase) {
      _addFirebaseImplsToInjectorScope(scopeBuilder);
    } else {
      _addMockImplsToInjectorScope(scopeBuilder);
    }
  });
}
