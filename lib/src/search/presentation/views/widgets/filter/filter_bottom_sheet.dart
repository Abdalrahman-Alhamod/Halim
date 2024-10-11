import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/functions/show_custom_dialog.dart';
import '../../../../data/models/search_filter_model.dart';
import '../../../manager/search_cubit/search_cubit.dart';
import 'widgets/select_category_dialog.dart';
import '../../../../../shared/app_data.dart';
import '../../../../../../core/utils/context_extensions.dart';
import 'level_bar/level_bar.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../core/widgets/custome_elevated_button.dart';
import '../../../../../course_details/presentation/views/widgets/more_details_section/reviews/review_stars_bar/reviews_stars_bar.dart';
import 'widgets/subcategories_buttons_list.dart';

part './widgets/price_range_slider.dart';
part './widgets/duration_range_slider.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SearchFilterModel currentFilters = context.read<SearchCubit>().filters;
    context.read<SearchCubit>().fetchSubcategories();
    context.read<SearchCubit>().getCategories();
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
          physics: const NeverScrollableScrollPhysics(),
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
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Divider(
              height: 20,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '${LocaleKeys.Search_Filter_field.tr()} :  ',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                BlocBuilder<SearchCubit, SearchState>(
                  buildWhen: context.read<SearchCubit>().buildCategoriesWhen,
                  builder: (context, state) {
                    final categories = context.read<SearchCubit>().categories;
                    return context.read<SearchCubit>().buildCategorie(
                          context: context,
                          state: state,
                          child: StatefulBuilder(
                            builder: (context, setState) {
                              return TextButton(
                                onPressed: () {
                                  showCustomDialog(
                                    context: context,
                                    widget: SelectCategoryDialog(
                                      categories: categories,
                                      onSelect: (selectedCategory) {
                                        setState(() {
                                          currentFilters.category =
                                              selectedCategory;
                                          context
                                              .read<SearchCubit>()
                                              .fetchSubcategories();
                                          currentFilters.subcategory =
                                              getSubcategoryAll();
                                        });
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  currentFilters.category.name ?? '',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              LocaleKeys.Search_Filter_category.tr(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              child: BlocBuilder<SearchCubit, SearchState>(
                buildWhen: context.read<SearchCubit>().buildSubcategoriesWhen,
                builder: (context, state) {
                  final subcategories =
                      context.read<SearchCubit>().subcategories;
                  return context.read<SearchCubit>().buildSubcategorie(
                        context: context,
                        state: state,
                        child: SubcategoriesButtonsList(
                          subcategories: subcategories,
                          initialValueId: context
                                  .read<SearchCubit>()
                                  .filters
                                  .subcategory
                                  .id ??
                              allId,
                          onChange: (selectedSubcategory) {
                            currentFilters.subcategory = selectedSubcategory;
                          },
                        ),
                      );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              LocaleKeys.Search_Filter_duration.tr(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            _DurationRangeSlider(
              initialStartValue:
                  context.read<SearchCubit>().filters.startDuation,
              initialEndValue: context.read<SearchCubit>().filters.endDuration,
              onChanged: (start, end) {
                currentFilters.startDuation = start;
                currentFilters.endDuration = end;
              },
            ),
            Text(
              LocaleKeys.Search_Filter_level.tr(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            LevelBar(
              initialValue: context.read<SearchCubit>().filters.level,
              onChanged: (value) {
                currentFilters.level = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              LocaleKeys.Search_Filter_price.tr(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            _PriceRangeSlider(
              initialStartValue: context.read<SearchCubit>().filters.startPrice,
              initialEndValue: context.read<SearchCubit>().filters.endPrice,
              onChanged: (start, end) {
                currentFilters.startPrice = start;
                currentFilters.endPrice = end;
              },
            ),
            Text(
              LocaleKeys.Search_Filter_rating.tr(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            ReviewsStarsBar(
              initialValue: context.read<SearchCubit>().filters.rating,
              onChanged: (value) {
                currentFilters.rating = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 20,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: CustomElevatedButton(
                    onPressed: () {
                      context.read<SearchCubit>().setDefaultFilters();
                      context.read<SearchCubit>().refresh();
                      context.pop();
                    },
                    title: LocaleKeys.Search_reset.tr(),
                    elevation: 0,
                    backgroundColor: context.isDarkMode
                        ? Colors.grey.shade800
                        : Colors.grey.shade600,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 1,
                  child: CustomElevatedButton(
                    onPressed: () {
                      context.read<SearchCubit>().filters = currentFilters;
                      context.read<SearchCubit>().refresh();
                      context.pop();
                    },
                    title: LocaleKeys.Search_Filter_filter.tr(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
