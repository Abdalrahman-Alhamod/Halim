import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/assets/app_images.dart';
import '../../../../core/utils/app_route.dart';

import 'widgets/splash_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    preCacheAppImages();
    return const Scaffold(
      body: SplashBody(),
    );
  }

  Future<void> initializeApp() async {
    try {
      await preCacheAppImages();
      await Future.delayed(const Duration(seconds: 3)); // Shortened delay
      navigateToIntroView();
    } catch (e) {
      debugPrint('Error during initialization: $e');
    }
  }

  void navigateToIntroView() {
    GoRouter.of(context).go(AppRoute.kIntroView);
  }

  Future<void> preCacheAppImages() async {
    for (var image in AppImages.allImages) {
      await precacheImage(AssetImage(image), context);
    }
  }
}
