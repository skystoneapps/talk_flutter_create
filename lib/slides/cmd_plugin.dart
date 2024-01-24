import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CmdVsPluginSlide extends FlutterDeckSlideWidget {
  const CmdVsPluginSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cmd-vs-plugin',
            header: FlutterDeckHeaderConfiguration(
              title: 'CMD vs Plugin',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return const Center(
          child: FlutterDeckCodeHighlight(
            code: 'flutter create my_app',
            language: 'bash',
          ),
        );
      },
      rightBuilder: (context) {
        return IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/new_vscode.png'),
              const SizedBox(height: 48),
              Flexible(child: Image.asset('assets/new_intellij.png')),
            ],
          ),
        );
      },
    );
  }
}
