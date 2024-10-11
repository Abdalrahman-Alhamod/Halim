import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/custome_flat_button.dart';
import '../../../data/models/student_infomations_model.dart';
import '../../../../shared/model/subcategory_model.dart';
import '../../../../../core/utils/context_extensions.dart';
import '../../manager/account_setup_cubit/account_setup_cubit.dart';
import '../widgets/interests_widget.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';

class ChooseInterestsBottomSheet {
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
                        Navigator.pop(context);

                        context
                            .read<AccountSetupCubit>()
                            .postInformationStudent();
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
                        // Navigator.pop(context);
                        context.read<AccountSetupCubit>().student.interests =
                            selectedCategories
                                .map((subcategory) =>
                                    Interests(id: subcategory.id))
                                .whereType<Interests>()
                                .toList();
                        context
                            .read<AccountSetupCubit>()
                            .postInformationStudent();
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

  static void chooseInterestsBottomSheet(
      BuildContext context, List<SubcategoryModel> categories) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return buildChooseInterestsBottomSheet(context, categories);
      },
    );
  }
}
