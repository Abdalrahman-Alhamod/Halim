import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halim/core/helpers/string_helper.dart';
import 'package:halim/src/course_details/data/models/course_main_section_model.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../core/assets/app_svgs.dart';
import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../core/utils/network_image_loader.dart';
part 'widgets/course_box_content.dart';
part 'widgets/rating_with_students.dart';
part 'widgets/course_category_box.dart';

class CourseBox extends StatelessWidget {
  const CourseBox({super.key});
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 450),
      child: AspectRatio(
        aspectRatio: 1.1,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.isDarkMode
                ? AppColors.loginWithButtonDarkColor
                : Colors.white,
            borderRadius: BorderRadius.circular(
              40,
            ),
            boxShadow: context.isDarkMode
                ? []
                : [
                    const BoxShadow(
                      color: Colors.grey,
                      blurRadius: 25,
                      spreadRadius: -10,
                    )
                  ],
            border: context.isDarkMode
                ? null
                : Border.all(
                    color: Colors.grey.shade300,
                  ),
          ),
          padding: const EdgeInsets.all(16),
          child: const CourseBoxContent(),
        ),
      ),
    );
  }
}
