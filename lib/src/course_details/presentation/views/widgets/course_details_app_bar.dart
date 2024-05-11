import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/widgets/back_arrow_icon.dart';

class CourseDetailsAppBar extends StatelessWidget {
  const CourseDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BackArrowIcon(onPressed: () {
          GoRouter.of(context).pop();
        }),
      ),
    );
  }
}
