import 'package:flutter/material.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'widgets/intro_page_title.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      pages: [
        PageViewModel(
          titleWidget: const IntroPageTitle(
            title: 'We provide the best learning courses & greate mentors',
          ),
          body: '',
          image: Image.asset(AppImages.intro2),
        ),
        PageViewModel(
          titleWidget: const IntroPageTitle(
            title: 'Learning anytime and anywhere easily and conveniently',
          ),
          body: '',
          image: Image.asset(AppImages.intro2),
        ),
        PageViewModel(
          titleWidget: const IntroPageTitle(
            title: 'Let\'s improve your skills together with Halim right now!',
          ),
          body: '',
          image: Image.asset(AppImages.intro2),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }

  _onIntroEnd(BuildContext context) {}
}
