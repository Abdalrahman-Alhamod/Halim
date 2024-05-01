import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/translations/local_keys.g.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 1,
          child: Divider(
            thickness: 1,
            color: context.isDarkMode
                ? AppColors.darkFlatButtonColor
                : Colors.grey.shade300,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(LocaleKeys.or.tr()),
        const SizedBox(
          width: 15,
        ),
        Flexible(
          flex: 1,
          child: Divider(
            thickness: 1,
            color: context.isDarkMode
                ? AppColors.darkFlatButtonColor
                : Colors.grey.shade300,
          ),
        ),
      ],
    );
  }
}
