import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/src/store/presentation/manager/store_cubit/store_cubit.dart';
import '../../../../../../../core/utils/context_extensions.dart';
import 'filter_coupons_list.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../core/widgets/custome_elevated_button.dart';

class FilterCouponsBottomSheet extends StatelessWidget {
  const FilterCouponsBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String discountFilter = context.read<StoreCubit>().discountFilter;
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
            const SizedBox(
              height: 10,
            ),
            Text(
              LocaleKeys.Search_Filter_filter.tr(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 20,
              color: Colors.grey,
            ),
            FilterCouponsList(
              onChanged: (value) {
                discountFilter = value;
              },
              initialValue: discountFilter,
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
                      context.read<StoreCubit>().discountFilter = AppUrl.all;
                      context.read<StoreCubit>().refreshStoreDiscounts();
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
                      context.read<StoreCubit>().discountFilter =
                          discountFilter;
                      context.read<StoreCubit>().refreshStoreDiscounts();
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
