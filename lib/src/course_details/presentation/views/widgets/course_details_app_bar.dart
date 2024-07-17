import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CourseDetailsAppBar extends StatelessWidget {
  const CourseDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 24,
          backgroundColor: Colors.grey.withAlpha(80),
          child: IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
