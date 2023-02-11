import 'package:app/sprinkles.dart';
import 'package:app/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_widgets/material_widgets.dart';
import 'package:value_listenables/value_listenables.dart';
import 'package:vector_drawable/vector_drawable.dart';

void main() {
  runDynamicallyThemedApp(
    const MyApp(),
    fallback: () => baseline3PCorePalette,
  );
}

class MyHomeController extends ControllerBase<MyHomeController> {
  final ValueNotifier<int> _counter;
  final String title;
  MyHomeController()
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const themeMode = ThemeMode.system;
  static const title = 'Flutter Demo';
  @override
  Widget build(BuildContext context) =>
      MD3ThemedApp<MyAppCustomColors, MyAppCustomColorsTheme>(
        appThemeFactory: (theme) =>
            MyAppCustomColorsTheme.fromMonetTheme(theme),
        builder: (context, light, dark) => MaterialApp(
          title: title,
          theme: light,
          darkTheme: dark,
          themeMode: themeMode,
          builder: (context, home) => AnimatedMonetColorSchemes<
              MyAppCustomColors, MyAppCustomColorsTheme>(
            themeMode: themeMode,
            child: home!,
          ),
          home: const MyHomePageBuilder(),
        ),
      );
}

class MyHomePageBuilder extends StatelessWidget {
  const MyHomePageBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ControllerInjectorBuilder(
      factory: (context) => MyHomeController(),
      builder: (context, controller) => MyHomePage(
        controller: controller,
      ),
    );
  }
}

class MyHomePage extends ControllerWidget<MyHomeController> {
  const MyHomePage({super.key, required super.controller});
  @override
  Widget build(BuildContext context) {
    return MD3AdaptativeScaffold(
      appBar: MD3CenterAlignedAppBar(
        title: Text(controller.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Expanded(
              child: Sprinkles(
                ownedListenable: controller.counter,
                child: controller.counter
                    .map(
                      (counter) => Text(
                        '$counter',
                        style: context.textTheme.displaySmall,
                      ),
                    )
                    .build(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: MD3FloatingActionButton.large(
        onPressed: controller.incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Sprinkles extends StatefulWidget {
  const Sprinkles({
    super.key,
    required this.ownedListenable,
    required this.child,
  });
  final ValueListenable<void> ownedListenable;
  final Widget child;

  @override
  State<Sprinkles> createState() => _SprinklesState();
}

class _SprinklesState extends State<Sprinkles> {
  final _avdKey = GlobalKey<AnimatedVectorState>();
  late IDisposable subscription;

  @override
  void initState() {
    super.initState();
    subscription = _createSubscription();
  }

  void onChange() {
    _avdKey.currentState!.start();
  }

  IDisposable _createSubscription() {
    return widget.ownedListenable.tap((_) => onChange());
  }

  @override
  void didUpdateWidget(Sprinkles oldWidget) {
    if (oldWidget.ownedListenable != widget.ownedListenable) {
      subscription.dispose();
      subscription = _createSubscription();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    subscription.dispose();
    super.dispose();
  }

  StyleMapping styleResolver(MyAppCustomColors colors) => StyleMapping.fromMap({
        "red": colors.red.colorContainer,
        "orange": colors.orange.colorContainer,
        "yellow": colors.yellow.colorContainer,
        "green": colors.green.colorContainer,
        "cyan": colors.cyan.colorContainer,
        "lightBlue": colors.lightBlue.colorContainer,
        "blue": colors.blue.colorContainer,
        "purple": colors.purple.colorContainer,
        "pink": colors.pink.colorContainer,
        "brown": colors.brown.colorContainer,
        "grey": colors.grey.colorContainer,
      });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: [
        Center(
          child: Transform.scale(
            scale: 4,
            child: AnimatedVectorWidget(
              key: _avdKey,
              animatedVector: sprinklesAvd.body,
              styleMapping: styleResolver(context.customColors),
            ),
          ),
        ),
        Center(
          child: widget.child,
        )
      ],
    );
  }
}
