import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../manager/store_cubit/store_cubit.dart';
import 'functions/show_filter_coupons_bottomsheet.dart';

import '../../../../../core/assets/app_svgs.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import 'course_coupon.dart';

class CouponsSection extends StatelessWidget {
  const CouponsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<StoreCubit>().refreshStoreDiscounts();
    return Column(
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () {
                showFilterCouponsBottomsheet(context: context);
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppSVGs.filter,
                    width: 24,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    LocaleKeys.Achievements_Store_FilterCoupons_filterCoupons
                        .tr(),
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: BlocConsumer<StoreCubit, StoreState>(
            buildWhen: context.read<StoreCubit>().buildStoreDiscountsWhen,
            listenWhen: context.read<StoreCubit>().listenStoreDiscountsWhen,
            listener: context.read<StoreCubit>().listenStoreDiscounts,
            builder: (context, state) {
              return context.read<StoreCubit>().buildStoreDiscountsList(
                context,
                pagingController: context
                    .read<StoreCubit>()
                    .storeDiscountsPagingAdapter
                    .pagingController,
                itemBuilder: (_, item, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CourseCoupon(
                      storeDiscountModel: item,
                    ),
                  );
                },
              );
            },
          ),
        ),
        // Expanded(
        //   child: ListView.separated(
        //     itemCount: 10,
        //     itemBuilder: (context, index) => CourseCoupon(
        //      storeDiscountModel: StoreDiscountModel(),
        //     ),
        //     separatorBuilder: (context, index) => const SizedBox(
        //       height: 16,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
