import 'package:flutter/material.dart';
import '../../../../../../../core/utils/context_extensions.dart';

class MentorMainDetailsVerticalDivider extends StatelessWidget {
  const MentorMainDetailsVerticalDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: context.isDarkMode ? Colors.grey.shade800 : Colors.grey.shade900,
    );
  }
}
