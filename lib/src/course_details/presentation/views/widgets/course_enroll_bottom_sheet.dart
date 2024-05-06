
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custome_elevated_button.dart';

class CourseEnrollButtomSheet extends StatelessWidget {
  const CourseEnrollButtomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        border: Border.all(
          color: Colors.grey.shade800,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 24,
          right: 24,
          left: 24,
          bottom: 36,
        ),
        child: CustomElevatedButton(
          onPressed: () {},
          title: 'Enroll Course - \$40',
        ),
      ),
    );
  }
}
