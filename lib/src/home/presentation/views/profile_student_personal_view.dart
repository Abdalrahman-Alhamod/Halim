

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/widgets/avatar_image_loader.dart';
import 'package:halim/src/home/presentation/manager/home_cubit/home_cubit.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../achievements/presentation/views/widgets/achievemenets_numbers.dart';

class ProfileStudentPersonalView extends StatelessWidget {
  const ProfileStudentPersonalView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 28,
                color: context.isDarkMode ? Colors.white : Colors.black,
              ),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
            IconButton(
              icon: Icon(
                Icons.edit,
                size: 28,
                color: context.isDarkMode ? Colors.white : Colors.black,
              ),
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kEditProfile);
              },
            ),
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                AvatarImageLoader(
                  imageUrl:
                      context.read<HomeCubit>().studentProfileModel!.image,
                  radius: 90,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "${context.read<HomeCubit>().studentProfileModel!.firstName} ${context.read<HomeCubit>().studentProfileModel!.lastName} ",
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "${LocaleKeys.StudentProfile_Student.tr()} ${context.read<HomeCubit>().studentProfileModel!.educationLevel} ",
                  style: TextStyle(
                    fontSize: 20,
                    color: context.isDarkMode
                        ? Colors.grey.shade400
                        : Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            AchievementsNumbers(
              rank: '1st',
              points: context
                      .read<HomeCubit>()
                      .studentProfileModel!
                      .pointsBalance ??
                  0,
              totalHours: 683,
              totalCourses: 7,
              contributions: 120,
              monthlyRate: 56.3,
            ),
          ],
        ),
      ),
    );
  }
}
