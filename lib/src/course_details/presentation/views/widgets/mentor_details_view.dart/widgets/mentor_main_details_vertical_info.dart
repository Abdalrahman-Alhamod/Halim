
import 'package:flutter/material.dart';
import '../../../../../../../core/utils/context_extensions.dart';

class MentorMainDetailsVerticalInfo extends StatelessWidget {
  const MentorMainDetailsVerticalInfo({
    super.key,
    required this.num,
    required this.label,
  });
  final String num;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          num,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: context.isDarkMode
                ? Colors.grey.shade400
                : Colors.grey.shade600,
          ),
        )
      ],
    );
  }
}


