import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/utils/context_extensions.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.pad16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Spacer(
            flex: 1,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              maxWidth: context.width * 0.8,
            ),
            child: Image.asset(
              image,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: context.height * .25,
          ),
        ],
      ),
    );
  }
}
