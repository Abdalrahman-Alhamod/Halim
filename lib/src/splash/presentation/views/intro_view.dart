import 'package:flutter/material.dart';
import 'package:halim/core/assets/app_images.dart';

import 'widgets/intro_button.dart';
import 'widgets/intro_page.dart';
import 'widgets/intro_page_indicator.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  final _controller = PageController();
  bool _isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                _isLastPage = value == 2;
              });
            },
            children: const [
              IntroPage(
                image: AppImages.intro1,
                title: 'We provide the best learning courses & greate mentors',
              ),
              IntroPage(
                image: AppImages.intro2,
                title: 'Learning anytime and anywhere easily and conveniently',
              ),
              IntroPage(
                image: AppImages.intro3,
                title:
                    'Let\'s improve your skills together with Halim right now!',
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IntroPageIndicator(
                controller: _controller,
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: IntroButton(
                    controller: _controller,
                    title: _isLastPage ? 'Get Started' : 'Next',
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
