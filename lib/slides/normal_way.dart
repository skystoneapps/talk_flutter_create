import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class NormalWaySlide extends FlutterDeckSlideWidget {
  const NormalWaySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/normal-way',
            header: FlutterDeckHeaderConfiguration(
              title: 'Starting a new project! 🤩',
            ),
            steps: 7,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => FlutterDeckBulletList(
        useSteps: true,
        items: const [
          'Run `flutter create my_app` 🥳',
          'Open the project in your IDE 😁',
          'Remove 90% of `main.dart` 😀',
          'Rename the directory to `My App` 🙂',
          'Remove unnecessary platform folders 😑',
          '`Find all` instances of `com.example` and change it to yours 😩',
          'Don\'t bother with the comments in `pubspec.yaml` 😒',
        ],
      ),
    );
  }
}
