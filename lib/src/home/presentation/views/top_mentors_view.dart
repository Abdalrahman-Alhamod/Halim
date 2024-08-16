import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/about/course_about_mentor.dart';
import 'package:halim/src/home/presentation/manager/home_cubit/home_cubit.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';

class TopMonetorsView extends StatefulWidget {
  const TopMonetorsView({super.key});

  @override
  TopMonetorsViewState createState() => TopMonetorsViewState();
}

class TopMonetorsViewState extends State<TopMonetorsView> {
  @override
  void initState() {
    super.initState();

    context.read<HomeCubit>().getAllMentors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:
              context.isDarkMode ? AppColors.darkColor : Colors.white,
          title: Row(
            children: [
              Text(
                LocaleKeys.HomePage_Home_topMentors.tr(),
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: context.isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRoute.kSearch);
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 28,
                  ),
                ),
              )
            ],
          ),
          elevation: 0,
          toolbarHeight: 80,
          leading: IconButton(
            color: context.isDarkMode ? Colors.white : Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              GoRouter.of(context).push(AppRoute.kHome);
            },
          ),
        ),
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        body: Expanded(
            child: BlocBuilder<HomeCubit, HomeState>(
          buildWhen: context.read<HomeCubit>().buildTopMentorWhen,
          builder: (context, state) {
            return context.read<HomeCubit>().buildTopMentorList(
              context,
              pagingController: context
                  .read<HomeCubit>()
                  .mentorPagingAdapter
                  .pagingController,
              itemBuilder: (_, item, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 16),
                  child: CourseAboutMentor(
                    mentorCardModel: item,
                  ),
                );
              },
            );
          },
        )));
  }
}
