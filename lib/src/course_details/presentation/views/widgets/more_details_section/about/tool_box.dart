import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../../core/assets/app_svgs.dart';

class ToolBox extends StatelessWidget {
  const ToolBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppSVGs.figma,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          'Figma',
          style: TextStyle(
            color: context.isDarkMode ? Colors.grey.shade400 : Colors.black,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
