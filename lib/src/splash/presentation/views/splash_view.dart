import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/utils/app_route.dart';

import 'widgets/splash_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigateToIntroView();
  }

  @override
  Widget build(BuildContext context) {
    preCacheAppImages();
    return const Scaffold(
      body: SplashBody(),
    );
  }

  void navigateToIntroView() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        GoRouter.of(context).pushReplacement(AppRoute.kIntroView);
      },
    );
  }

  Future<void> preCacheAppImages() async {
    for (var image in AppImages.allImages) {
      await precacheImage(AssetImage(image), context);
    }
  }
}
