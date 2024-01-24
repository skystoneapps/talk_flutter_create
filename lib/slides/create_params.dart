import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CreateParamsSlide extends FlutterDeckSlideWidget {
  const CreateParamsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/create-params',
            header: FlutterDeckHeaderConfiguration(
              title: 'flutter create params',
            ),
            steps: 7,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => Center(
        child: FlutterDeckSlideStepsBuilder(
          builder: (_, step) {
            return switch (step) {
              2 => _Directory(),
              3 => _Platforms(),
              4 => _ProjectName(),
              5 => _Organization(),
              6 => _Empty(),
              7 => _Others(),
              _ => const SizedBox(),
            };
          },
        ),
      ),
      rightBuilder: (context) {
        return IntrinsicWidth(
          child: Center(
            child: Image.asset('assets/full_create.png'),
          ),
        );
      },
    );
  }
}

const headerStyle = TextStyle(
  fontSize: 64,
);
const subHeaderStyle = TextStyle(
  fontSize: 36,
);

class _Directory extends StatelessWidget {
  const _Directory();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '<output directory>',
          style: headerStyle,
        ),
        Text(
          '- not the app name\n- recursively',
          style: subHeaderStyle,
        ),
      ],
    );
  }
}

class _Platforms extends StatelessWidget {
  const _Platforms();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '--platforms',
          style: headerStyle,
        ),
        Text(
          '- others can be added later\n- add --project-name again',
          style: subHeaderStyle,
        ),
      ],
    );
  }
}

class _ProjectName extends StatelessWidget {
  const _ProjectName();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '--project-name',
          style: headerStyle,
        ),
        Text(
          '- specific_format\n- defaults to directory name',
          style: subHeaderStyle,
        ),
      ],
    );
  }
}

class _Organization extends StatelessWidget {
  const _Organization();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '--org',
          style: headerStyle,
        ),
        Text(
          '- reverse domain name\n- defaults to com.example\n- appends package name for identifier\n- not required for adding platform 🤔\n- configurable in IDE',
          style: subHeaderStyle,
        ),
      ],
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '--empty or -e',
          style: headerStyle,
        ),
        Text(
          '- no counter app\n- no tests\n- clean pubspec.yaml\n- only for --template=app',
          style: subHeaderStyle,
        ),
      ],
    );
  }
}

class _Others extends StatelessWidget {
  const _Others();

  @override
  Widget build(BuildContext context) {
    return const Text(
      '--description\n--[no]-offline\n--[no]-pub\n--[no]-overwrite\n--template\n--sample\n--android-language\n--ios-language',
      style: subHeaderStyle,
    );
  }
}
