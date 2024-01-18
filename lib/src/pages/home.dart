import 'package:flutter/material.dart';
import 'package:kaliam/controllers.dart';
import 'package:kaliam/shapes.dart';
import 'package:kaliam/widgets.dart';
import 'package:material_widgets/material_widgets.dart';
import 'package:value_listenables/value_listenables.dart';

class _KaliamVectorInterior extends StatelessWidget {
  const _KaliamVectorInterior({
    super.key,
    required this.scale,
    required this.text,
    this.textStyle,
  });
  // temp
  final double scale;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final radius = 8.0;
    final verticalPadding = 12.0;
    final horizontalPadding = 8.0;
    final materialColor = Theme.of(context).colorScheme.tertiaryContainer;
    final textColor = Theme.of(context).colorScheme.onTertiaryContainer;
    var textStyle = this.textStyle;
    textStyle ??= context.textTheme.displayMedium;
    textStyle = textStyle.copyWith(color: textColor);
    return Material(
      color: materialColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius / scale),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        ),
        child: Text(
          text,
          style: textStyle.apply(fontSizeFactor: 1 / scale),
        ),
      ),
    );
  }
}

class _PrettyVector extends StatelessWidget {
  const _PrettyVector({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = 1.0;
    return Material(
      shape: CardShape(),
      elevation: 4.0,
      clipBehavior: Clip.antiAlias,
      child: Transform.scale(
        scale: scale,
        child: KaliamWidget(
          clip: Clip.none,
          child: Center(
            child: _KaliamVectorInterior(
              scale: scale,
              text: '',
            ),
          ),
        ),
      ),
    );
  }
}

class HomePageBuilder extends StatelessWidget {
  const HomePageBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ControllerInjectorBuilder(
      factory: (context) => HomePageController(),
      builder: (context, controller) => HomePage(
        controller: controller,
      ),
    );
  }
}

class HomePage extends ControllerWidget<HomePageController> {
  const HomePage({super.key, required super.controller});
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
              child: Center(
                child: _PrettyVector(),
              ),
            ),
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
