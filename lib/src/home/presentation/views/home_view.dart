import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/core/widgets/empty_view.dart';
import 'package:halim/core/widgets/shimmer_box.dart';
import 'package:halim/src/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:halim/src/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:halim/src/home/presentation/views/widgets/card_advertisement_local.dart';
import 'package:halim/src/home/presentation/views/widgets/card_course_loading_list.dart';
import 'package:halim/src/home/presentation/views/widgets/category_widget.dart';
import 'package:halim/src/home/presentation/views/widgets/mentor_card_loading_horizental.dart';
import 'package:halim/src/search/presentation/views/widgets/filter/widgets/subcategories_buttons_loading_list.dart';
import 'package:halim/src/shared/model/subcategory_model.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import '../../../achievements/presentation/manager/achievements_cubit/achievements_cubit.dart';
import 'widgets/counter_widget.dart';
import 'widgets/welcome_card.dart';
import 'widgets/card_advertisement.dart';
import 'widgets/card_course.dart';
import 'widgets/teacher_avatar.dart';
import 'widgets/welcome_card_loading.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeCubit homeCubit;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      context.read<AchievementsCubit>().getAchievementsBoard();
    homeCubit = context.read<HomeCubit>();
    homeCubit.getHomeCourses();
    homeCubit.getAllMentors();
    homeCubit.getInfStudent(studentId: context.read<AuthCubit>().user?.id??0);
    homeCubit.getSubcategories(categoryId: 1);
    homeCubit.getAdvertisements();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor:
                context.isDarkMode ? AppColors.darkColor : Colors.white,
            toolbarHeight: 90,
            automaticallyImplyLeading: false,
            title: BlocBuilder<HomeCubit, HomeState>(
              buildWhen: (previous, current) =>
                  current is FetchInfStudentLoading ||
                  current is FetchInfStudentSuccess ||
                  current is FetchInfStudentFailure,
              builder: (context, state) {
                 return state.maybeWhen(
                  fetchInfStudentLoading: () => const WelcomeCardLoading(),
                  fetchInfStudentFailure: (networkException) =>
                      const SizedBox.shrink(),
                  fetchInfStudentSuccess: (data, message) {
                    
                    return WelcomeCard(
                      name: data.firstName,
                      image: data.image,
                    );
                  },
                  orElse: () {
                    return const WelcomeCardLoading();
                  },
                );
              },
            ),
          ),
          backgroundColor:
              context.isDarkMode ? AppColors.darkColor : Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                BlocBuilder<HomeCubit, HomeState>(
                    buildWhen: (previous, current) =>
                        current is FetchInfStudentLoading ||
                        current is FetchInfStudentSuccess ||
                        current is FetchInfStudentFailure,
                    builder: (context, state) {
                      return state.maybeWhen(
                        fetchInfStudentLoading: () => const ShimmerBox(
                          radius: 20,
                          width: 350,
                          height: 130,
                        ),
                        fetchInfStudentFailure: (networkException) =>
                            const SizedBox.shrink(),
                        fetchInfStudentSuccess: (data, message) {
                          return MotivationalCounterWidget(
                              points: context.read<AchievementsCubit>().achievementsBoardModel!.points??0);
                        },
                        orElse: () {
                          return const ShimmerBox(
                            radius: 20,
                            width: 350,
                            height: 130,
                          );
                        },
                      );
                    }),
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<HomeCubit, HomeState>(
                  buildWhen: (previous, current) =>
                      current is FetchAdvertisementsLoading ||
                      current is FetchAdvertisementsSuccess ||
                      current is FetchAdvertisementsFailure,
                  builder: (context, state) {
                    return state.maybeWhen(
                      fetchAdvertisementsFailure: (networkException) =>
                          const SizedBox.shrink(),
                      fetchAdvertisementsLoading: () => const ShimmerBox(
                        radius: 20,
                        width: 350,
                        height: 150,
                      ),
                      fetchAdvertisementsSuccess: (advertisements, message) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: CardAdvertisement(
                              advModels: advertisements,
                            ),
                          ),
                        );
                      },
                      orElse: () => const CardAdvertisementLocal(),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.HomePage_Home_topMentors.tr(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          GoRouter.of(context).push(AppRoute.kTopMentors);
                        },
                        child: Text(
                          LocaleKeys.HomePage_Home_seeAll.tr(),
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                BlocBuilder<HomeCubit, HomeState>(
                  buildWhen: (previous, current) =>
                      current is FetchMentorsLoading ||
                      current is FetchMentorsSuccess ||
                      current is FetchMentorsFailure,
                  builder: (context, state) {
                    return state.maybeWhen(
                      fetchMentorsLoading: () =>
                          const CircularProgressIndicator(),
                      fetchMentorsFailure: (networkException) =>
                          const SizedBox.shrink(),
                      fetchMentorsSuccess: (data, message) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 95,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: const ScrollPhysics(),
                              itemCount: data.length,
                              itemBuilder: (context, index) => TeacherAvatar(
                                mentorCardModel: data[index],
                              ),
                            ),
                          ),
                        );
                      },
                      orElse: () {
                        return const SizedBox(
                          height: 120,
                          child: MentorCardLoadingListHorizontal(),
                        );
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.HomePage_Home_mostPopularCourses.tr(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          GoRouter.of(context).push(AppRoute.kPopularCourses);
                        },
                        child: Text(
                          LocaleKeys.HomePage_Home_seeAll.tr(),
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                BlocBuilder<HomeCubit, HomeState>(
                  buildWhen: (previous, current) =>
                      current is FetchSubcategoriesLoading ||
                      current is FetchSubcategoriesSuccess ||
                      current is FetchSubcategoriesFailure,
                  builder: (context, state) {
                    return state.maybeWhen(
                      fetchSubcategoriesLoading: () => const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: SizedBox(
                          height: 41,
                          child: SubcategoriesButtonsLoadingList(),
                        ),
                      ),
                      fetchSubcategoriesFailure: (networkException) =>
                          const SizedBox.shrink(),
                      fetchSubcategoriesSuccess: (data, message) {
                        List<SubcategoryModel> subcategories = List.from(data);
                        subcategories.insert(0,
                            const SubcategoryModel(id: -1, name: AppUrl.all));
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
                                  final isSelected =
                                      homeCubit.selectedCategoryIndex == index;
                                  return CategoryWidget(
                                    category: subcategories[index].name ?? '',
                                    onTap: () {
                                      context.read<HomeCubit>().subCategoryId =
                                          subcategories[index].id ?? 0;
                                      context
                                          .read<HomeCubit>()
                                          .getHomeCourses();
                                      setState(() {
                                        homeCubit.selectCategory(index);
                                      });
                                    },
                                    isSelected: isSelected,
                                  );
                                }),
                          ),
                        );
                      },
                      orElse: () {
                        return const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10),
                          child: SizedBox(
                            height: 40,
                            child: SubcategoriesButtonsLoadingList(),
                          ),
                        );
                      },
                    );
                  },
                ),
                BlocBuilder<HomeCubit, HomeState>(
                  buildWhen: (previous, current) =>
                      current is FetchCoursesLoading ||
                      current is FetchCoursesSuccess ||
                      current is FetchCoursesFailure,
                  builder: (context, state) {
                    return state.maybeWhen(
                        fetchCoursesLoading: () => const Center(
                                child: SizedBox(
                              height: 100,
                              child: Center(child: CircularProgressIndicator()),
                            )),
                        fetchCoursesFailure: (networkException) =>
                            const SizedBox.shrink(),
                        fetchCoursesSuccess: (data, message) {
                          return data.isEmpty
                              ? const EmptyView()
                              : Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 8),
                                  child: ListView.separated(
                                    itemCount: data.length,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return CardCourse(
                                        courseCardModel: data[index],
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return const SizedBox(height: 20);
                                    },
                                  ),
                                );
                        },
                        orElse: () {
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            child: CardCourseLoadList(),
                          );
                        });
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
