import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ResearchSlide extends FlutterDeckSlideWidget {
  const ResearchSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/research',
            header: FlutterDeckHeaderConfiguration(
              title: 'Research',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: '<insert-percentage-of-raised-hands>%',
      subtitle:
          'Percentage of developers who use \'flutter create\' according to a very, very recent study.',
      theme: FlutterDeckTheme.of(context).copyWith(
        bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
          titleTextStyle: TextStyle(color: Colors.amber),
        ),
      ),
    );
  }
}
