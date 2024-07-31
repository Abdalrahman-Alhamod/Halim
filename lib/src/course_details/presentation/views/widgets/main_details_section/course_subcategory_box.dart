import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/widgets.dart';
import 'package:halim/src/shared/model/subcategory_model.dart';

import '../../../../../../core/themes/app_colors.dart';

class CourseSubcategoryBox extends StatelessWidget {
  const CourseSubcategoryBox({
    super.key,
    required this.subcategory,
  });
  final SubcategoryModel subcategory;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withAlpha(20),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: AutoSizeText(
          subcategory.name ?? '',
          style: const TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
          minFontSize: 8,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
