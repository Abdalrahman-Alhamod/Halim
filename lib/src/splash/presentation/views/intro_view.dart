import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/assets/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/translations/locale_keys.g.dart';
import 'widgets/intro_button.dart';
import 'widgets/intro_page.dart';
import 'widgets/intro_page_indicator.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  late final PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  bool _isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                _isLastPage = value == 2;
              });
            },
            children: [
              IntroPage(
                image: AppImages.intro1,
                title: LocaleKeys.Intro_intro1.tr(),
              ),
              IntroPage(
                image: AppImages.intro2,
                title: LocaleKeys.Intro_intro2.tr(),
              ),
              IntroPage(
                image: AppImages.intro3,
                title: LocaleKeys.Intro_intro3.tr(),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.pad16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IntroPageIndicator(
                    controller: _pageController,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  IntroButton(
                    pageController: _pageController,
                    isLastPage: _isLastPage,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
