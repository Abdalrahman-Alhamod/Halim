import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/data/sources/remote/app_url.dart';
import '../../../account_setup/presentation/views/widgets/choose_your_specialty.dart';
import 'widgets/category_widget.dart';
import '../../../search/presentation/views/widgets/filter/widgets/subcategories_buttons_loading_list.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';
import '../../../shared/model/subcategory_model.dart';
import '../manager/home_cubit/home_cubit.dart';
import 'widgets/card_course.dart';

class PopularCoursesView extends StatefulWidget {
  const PopularCoursesView({super.key});

  @override
  PopularCoursesViewState createState() => PopularCoursesViewState();
}

class PopularCoursesViewState extends State<PopularCoursesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        title: Row(
          children: [
            Text(
              LocaleKeys.HomePage_Home_mostPopularCourses.tr(),
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            const Spacer(
              flex: 1,
            ),
            Icon(
              Icons.search_sharp,
              size: 28,
              color: context.isDarkMode ? Colors.white : Colors.black,
            )
          ],
        ),
        elevation: 0,
        toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kHome);
          },
        ),
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: Column(
        children: [
          ChooseYourSpecialtyWithRegister(
            hintText:
                LocaleKeys.FillYourProfile_Specialty_choose_specialty.tr(),
            onSpecialtySelected: (category) {
              context.read<HomeCubit>().categoryId = category.id ?? 0;
              context.read<HomeCubit>().getSubcategories(
                  categoryId:
                      (category.id ?? 0) == -1 ? null : category.id ?? 0);
              context.read<HomeCubit>().refresh();
            },
          ),
          BlocBuilder<HomeCubit, HomeState>(
            buildWhen: (previous, current) =>
                current is FetchSubcategoriesLoading ||
                current is FetchSubcategoriesSuccess ||
                current is FetchSubcategoriesFailure,
            builder: (context, state) {
              return state.maybeWhen(
                fetchSubcategoriesLoading: () => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: SizedBox(
                    height: 41,
                    child: SubcategoriesButtonsLoadingList(),
                  ),
                ),
                fetchSubcategoriesFailure: (networkException) =>
                    const SizedBox.shrink(),
                fetchSubcategoriesSuccess: (data, message) {
                  List<SubcategoryModel> subcategories = List.from(data);
                  subcategories.insert(
                      0, const SubcategoryModel(id: -1, name: AppUrl.all));
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10),
                    child: SizedBox(
                      height: 40,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          physics: const ScrollPhysics(),
                          itemCount: subcategories.length,
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 5);
                          },
                          itemBuilder: (context, index) {
                            final isSelected = context
                                    .read<HomeCubit>()
                                    .selectedCategoryIndex ==
                                index;
                            return CategoryWidget(
                              category: subcategories[index].name ?? '',
                              onTap: () {
                                context.read<HomeCubit>().subCategoryId =
                                    subcategories[index].id ?? 0;
                                context.read<HomeCubit>().refresh();
                                setState(() {
                                  context
                                      .read<HomeCubit>()
                                      .selectCategory(index);
                                });
                              },
                              isSelected: isSelected,
                            );
                          }),
                    ),
                  );
                },
                orElse: () {
                  List<SubcategoryModel> subcategories =
                      List.from(context.read<HomeCubit>().subcategories);
                  subcategories.insert(
                      0, const SubcategoryModel(id: -1, name: AppUrl.all));
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10),
                    child: SizedBox(
                      height: 40,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          physics: const ScrollPhysics(),
                          itemCount: subcategories.length,
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 5);
                          },
                          itemBuilder: (context, index) {
                            final isSelected = context
                                    .read<HomeCubit>()
                                    .selectedCategoryIndex ==
                                index;
                            return CategoryWidget(
                              category: subcategories[index].name ?? '',
                              onTap: () {
                                context.read<HomeCubit>().subCategoryId =
                                    subcategories[index].id ?? 0;
                                context.read<HomeCubit>().refresh();
                                setState(() {
                                  context
                                      .read<HomeCubit>()
                                      .selectCategory(index);
                                });
                              },
                              isSelected: isSelected,
                            );
                          }),
                    ),
                  );
                },
              );
            },
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: BlocBuilder<HomeCubit, HomeState>(
                buildWhen: context.read<HomeCubit>().buildPopularCoursesWhen,
                builder: (context, state) {
                  return context.read<HomeCubit>().buildPopularCoursesList(
                    context,
                    pagingController: context
                        .read<HomeCubit>()
                        .coursesPagingAdapter
                        .pagingController,
                    itemBuilder: (_, item, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: CardCourse(
                          courseCardModel: item,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
