import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/functions/show_custom_dialog.dart';
import 'package:halim/core/widgets/custome_flat_button.dart';
import 'package:halim/src/account_setup/data/models/student_infomations_model.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/interests_widget.dart';
import 'package:halim/src/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:halim/src/profile_settings/presentation/manager/cubit/profile_settings_cubit.dart';
import 'package:halim/src/shared/model/subcategory_model.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../account_setup/presentation/manager/account_setup_cubit/account_setup_cubit.dart';
import '../../../../forgot_password/presentation/views/widget/accont_sucsses_dialog.dart';

class ChooseInterestsBottomSheetWhithEdit {
  static List<SubcategoryModel> selectedCategories = [];

  static Widget buildChooseInterestsBottomSheet(
      BuildContext context, List<SubcategoryModel> categories) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.isDarkMode
                ? AppColors.darkColor
                : AppColors.lightFlatButtonColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  LocaleKeys.FillYourProfile_Interests_choose.tr(),
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Divider(
                  height: 1,
                  color: Colors.grey[300],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 20),
                    child: Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: categories.map((category) {
                        return InterestsWidget(
                          category: category.name,
                          isSelected: true,
                          onTap: () {
                            setState(() {
                              if (selectedCategories.contains(category)) {
                                selectedCategories.remove(category);
                              } else {
                                selectedCategories.add(category);
                              }
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomFlatButton(
                      onPressed: () {
                        context.read<AccountSetupCubit>().student =
                            context.read<ProfileSettingsCubit>().upStudent;
                        context
                            .read<ProfileSettingsCubit>()
                            .updateInformationStudent();
                                context.read<HomeCubit>().getInfStudent(studentId: 1071);
                        Navigator.pop(context);
                        showCustomDialog(
                          context: context,
                          widget: AccontSucssesDialog(
                            () {
                              GoRouter.of(context).go(AppRoute.kHome);
                            },
                          ),
                        );
                      },
                      title: LocaleKeys.FillYourProfile_Interests_skip.tr(),
                      width: MediaQuery.of(context).size.width * 0.40,
                      height: 45,
                      kBackgroundcolor: context.isDarkMode
                          ? AppColors.darkFlatButtonColor
                          : const Color.fromARGB(255, 113, 132, 204)
                              .withOpacity(0.25),
                      kTextcolor: context.isDarkMode
                          ? AppColors.lightFlatButtonColor
                          : AppColors.primaryColor,
                    ),
                    CustomFlatButton(
                      isEnabled: selectedCategories.length == 3 ? true : false,
                      onPressed: () {
                        context
                                .read<ProfileSettingsCubit>()
                                .upStudent
                                .interests =
                            selectedCategories
                                .map((subcategory) =>
                                    Interests(id: subcategory.id))
                                .whereType<Interests>()
                                .toList();
                        context
                            .read<ProfileSettingsCubit>()
                            .updateInformationStudent();
                        context.read<AccountSetupCubit>().student =
                            context.read<ProfileSettingsCubit>().upStudent;
                        context.read<HomeCubit>().getInfStudent(studentId: 1071);
                        showCustomDialog(
                          context: context,
                          
                          widget: AccontSucssesDialog(
                            () {
                              GoRouter.of(context).go(AppRoute.kHome);
                            },
                          ),
                        );
                      },
                      title: LocaleKeys.FillYourProfile_Interests_continue.tr(),
                      width: MediaQuery.of(context).size.width * 0.40,
                      height: 45,
                      kBackgroundcolor: selectedCategories.length == 3
                          ? AppColors.primaryColor
                          : AppColors.lightFlatButtonColor.withOpacity(0.25),
                      kTextcolor: AppColors.lightFlatButtonColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static void chooseInterestsBottomSheetWith(
      BuildContext context, List<SubcategoryModel> categories) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return buildChooseInterestsBottomSheet(context, categories);
      },
    );
  }
}
