import 'package:flutter/material.dart';
import 'package:flutter_create_slides/slides/create_params.dart';
import 'package:flutter_create_slides/slides/normal_way.dart';
import 'package:flutter_deck/flutter_deck.dart';

import 'slides/cmd_plugin.dart';
import 'slides/research.dart';
import 'slides/title.dart';
import 'speaker_info.dart';

void main() {
  runApp(const FlutterDeckExample());
}

class FlutterDeckExample extends StatelessWidget {
  const FlutterDeckExample({super.key});

  @override
  Widget build(BuildContext context) {
    // This is an entry point for the Flutter Deck app.
    return FlutterDeckApp(
      speakerInfo: speakerInfo,
      slides: const [
        TitleSlide(),
        CmdVsPluginSlide(),
        ResearchSlide(),
        NormalWaySlide(),
        CreateParamsSlide(),
      ],
    );
  }
}
