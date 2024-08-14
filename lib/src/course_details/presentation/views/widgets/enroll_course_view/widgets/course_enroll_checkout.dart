import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/core/helpers/string_helper.dart';
import 'package:halim/src/course_details/data/models/wallet_model.dart';
import 'package:halim/src/shared/model/discount_model.dart';

import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../data/models/course_main_section_model.dart';
import '../../../../manager/course_details_cubit/course_details_cubit.dart';

class CourseEnrollCheckout extends StatelessWidget {
  const CourseEnrollCheckout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16);

    CourseMainSectionModel courseMainSectionModel =
        context.read<CourseDetailsCubit>().courseMainSection ??
            const CourseMainSectionModel();
    final num price = courseMainSectionModel.price ?? 0;

    context.read<CourseDetailsCubit>().discount =
        courseMainSectionModel.discount ?? const DiscountModel();

    DiscountModel discount = context.read<CourseDetailsCubit>().discount!;

    context.read<CourseDetailsCubit>().discountCode = discount.code ?? '';

    context.read<CourseDetailsCubit>().getWallet();

    WalletModel wallet =
        context.read<CourseDetailsCubit>().wallet ?? const WalletModel();

    return Column(
      children: [
        BlocConsumer<CourseDetailsCubit, CourseDetailsState>(
          buildWhen: context.read<CourseDetailsCubit>().buildWalletWhen,
          listenWhen: context.read<CourseDetailsCubit>().listenWalletWhen,
          listener: context.read<CourseDetailsCubit>().listenWallet,
          builder: (context, state) {
            state.whenOrNull(
              fetchWalletSuccess: (stateWallet, message) {
                wallet = stateWallet;
              },
            );
            return context.read<CourseDetailsCubit>().buildWallet(
                  context: context,
                  state: state,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        LocaleKeys.CourseDetails_Enroll_wallet.tr(),
                        style: textStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Text(
                        '${StringHelper.formatNum(wallet.balance ?? 0.0)}\$',
                        style: textStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        BlocConsumer<CourseDetailsCubit, CourseDetailsState>(
          buildWhen:
              context.read<CourseDetailsCubit>().buildCourseEnrollCheckoutWhen,
          listenWhen:
              context.read<CourseDetailsCubit>().listenCourseCodeDetailsWhen,
          listener: context.read<CourseDetailsCubit>().listenCourseCodeDetails,
          builder: (context, state) {
            state.whenOrNull(
              fetchCourseCodeDetailsSuccess: (stateDiscount, message) {
                discount = stateDiscount;
              },
            );
            return context.read<CourseDetailsCubit>().buildCourseEnrollCheckout(
                  context: context,
                  state: state,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.CourseDetails_Enroll_price.tr(),
                            style: textStyle,
                          ),
                          Text(
                            '${StringHelper.formatNum(price)}\$',
                            style: textStyle,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.CourseDetails_Enroll_discount.tr(),
                            style: textStyle,
                          ),
                          Text(
                            '${StringHelper.getDiscountValue(price, discount)}\$',
                            style: textStyle,
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.CourseDetails_Enroll_total.tr(),
                            style:
                                textStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${StringHelper.getDiscount(price, discount)}\$',
                            style:
                                textStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
          },
        ),
      ],
    );
  }
}
