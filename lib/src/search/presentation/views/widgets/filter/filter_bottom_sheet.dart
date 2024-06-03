import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/search/presentation/views/widgets/filter/level_bar/level_bar.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../core/widgets/custome_elevated_button.dart';
import '../../../../../course_details/presentation/views/widgets/more_details_section/reviews/review_stars_bar/course_reviews_stars_bar.dart';
import '../../../../../home/presentation/views/widgets/category_widget.dart';

part './widgets/price_range_slider.dart';
part './widgets/duration_range_slider.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({
    super.key,
  });

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  late TapGestureRecognizer _TapGestureRecognizer;
  @override
  void initState() {
    super.initState();
    _TapGestureRecognizer = TapGestureRecognizer()..onTap = _handleTap;
  }

  @override
  void dispose() {
    _TapGestureRecognizer.dispose();
    super.dispose();
  }

  void _handleTap() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border.all(
          color:
              context.isDarkMode ? Colors.grey.shade800 : Colors.grey.shade300,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(48),
          topRight: Radius.circular(48),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Divider(
              height: 20,
              color: Colors.grey,
              thickness: 2,
              indent: context.width * 0.42,
              endIndent: context.width * 0.42,
            ),
            Text(
              LocaleKeys.Search_Filter_filter.tr(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Divider(
              height: 20,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '${LocaleKeys.Search_Filter_field.tr()} :  ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    LocaleKeys.Search_Test_mainCategory1.tr(),
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              LocaleKeys.Search_Filter_category.tr(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              child: ListView(
                key: UniqueKey(),
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                children: const [
                  CategoryWidget('🔥 All'),
                  CategoryWidget('📊 BA'),
                  CategoryWidget('💰 Business'),
                  CategoryWidget('💡 AI'),
                  CategoryWidget('🖋 3D Design'),
                  CategoryWidget('💊 Medicine '),
                  CategoryWidget('🧮 Mathematical analysis'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              LocaleKeys.Search_Filter_duration.tr(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            _DurationRangeSlider(
              key: UniqueKey(),
              onChanged: (start, end) {},
            ),
            Text(
              LocaleKeys.Search_Filter_level.tr(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            LevelBar(
              startIndex: 0,
              key: UniqueKey(),
              onChanged: (value) {},
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              LocaleKeys.Search_Filter_price.tr(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            _PriceRangeSlider(
              key: UniqueKey(),
              onChanged: (start, end) {},
            ),
            Text(
              LocaleKeys.Search_Filter_rating.tr(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            CourseReviewsStarsBar(
              startIndex: 0,
              key: UniqueKey(),
              onChanged: (value) {},
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 20,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: CustomElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    title: LocaleKeys.Search_reset.tr(),
                    elevation: 0,
                    backgroundColor: context.isDarkMode
                        ? Colors.grey.shade800
                        : Colors.grey.shade600,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 1,
                  child: CustomElevatedButton(
                    onPressed: () {
                      context.pop();
                    },
                    title: LocaleKeys.Search_Filter_filter.tr(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
