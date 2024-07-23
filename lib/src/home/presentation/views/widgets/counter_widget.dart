import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/context_extensions.dart';

class MotivationalCounterWidget extends StatelessWidget {
  final int points;

  const MotivationalCounterWidget({super.key, required this.points});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.90,
      height: 130,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: context.isDarkMode
              ? [AppColors.primaryColor, AppColors.loginWithButtonDarkColor]
              : [AppColors.primaryColor, Colors.blue.shade100],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue.withOpacity(0.9), width: 3),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Wrap(children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  LocaleKeys.HomePage_Home_pointWidget_keepMoving.tr(),
                  textAlign: TextAlign.start,
                  speed: const Duration(microseconds: 50000),
                  textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: context.isDarkMode ? Colors.white : Colors.black),
                ),
              ],
              totalRepeatCount: 2,
              isRepeatingAnimation: true,
            ),
          ),
        ),
        Container(height: 5),
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                LocaleKeys.HomePage_Home_pointWidget_points.tr(),
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color:
                        context.isDarkMode ? Colors.white70 : Colors.black54),
              ),
              const SizedBox(width: 40),
              DefaultTextStyle(
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                  color: context.isDarkMode
                      ? Colors.blue.shade100
                      : Colors.blue.shade900,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      '$points',
                      speed: const Duration(microseconds: 150000),
                    ),
                    /*ColorizeAnimatedText(
                      '$points',
                      textStyle: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w900,
                      ),
                      colors: [
                        Colors.purple,
                        Colors.purple.shade100,
                        Colors.yellow,
                        Colors.red,
                      ],
                      speed: Duration(milliseconds: 1000),
                    ),*/
                  ],
                  totalRepeatCount: 2,
                ),
              ),
              /*TweenAnimationBuilder(
                tween: IntTween(begin: 0, end: points),
                duration: Duration(seconds: 2),
                builder: (context, value, child) {
                  return Text(
                    '$value',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w900,
                      color: Colors.purple.shade100,
                    ),
                  );
                },
              ),*/
            ],
          ),
        ),
      ]),
    );
  }
}
