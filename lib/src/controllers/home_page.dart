import 'package:flutter/foundation.dart';
import 'package:value_listenables/value_listenables.dart';

class HomePageController extends ControllerBase<HomePageController> {
  final ValueNotifier<int> _counter;
  final String title;
  HomePageController()
      : _counter = ValueNotifier(0),
        title = 'Flutter Demo Home Page';
  ValueListenable<int> get counter => _counter.view();

  void incrementCounter() {
    _counter.value++;
  }

  @override
  void dispose() {
    IDisposable.disposeAll([
      _counter,
    ]);
    super.dispose();
  }
}
