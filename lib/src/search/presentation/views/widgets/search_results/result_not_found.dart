import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../core/utils/context_extensions.dart';

import '../../../../../../core/assets/app_images.dart';

class ResultNotFound extends StatelessWidget {
  const ResultNotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height - 250,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            Image.asset(
              AppImages.notFound,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              LocaleKeys.Search_notFound.tr(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              LocaleKeys.Search_notFoundDesc.tr(),
              textAlign: TextAlign.center,
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
