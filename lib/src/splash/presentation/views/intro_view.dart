import 'package:easy_localization/easy_localization.dart';
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
            children: [
              IntroPage(
                image: AppImages.intro1,
                title: 'intro_1'.tr(),
              ),
              IntroPage(
                image: AppImages.intro2,
                title: 'intro_2'.tr(),
              ),
              IntroPage(
                image: AppImages.intro3,
                title: 'intro_3'.tr(),
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
                    title: _isLastPage ? 'get_started'.tr() : 'next'.tr(),
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
