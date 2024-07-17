import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/achievements/presentation/views/widgets/store_view/functions/filter_bottom_sheet/filter_coupons_list.dart';
import '../../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../../core/widgets/custome_elevated_button.dart';

class FilterCouponsBottomSheet extends StatefulWidget {
  const FilterCouponsBottomSheet({
    super.key,
  });

  @override
  State<FilterCouponsBottomSheet> createState() =>
      _FilterCouponsBottomSheetState();
}

class _FilterCouponsBottomSheetState extends State<FilterCouponsBottomSheet> {
  @override
  Widget build(BuildContext context) {
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
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Divider(
              height: 20,
              color: Colors.grey,
              thickness: 2,
              indent: context.width * 0.42,
              endIndent: context.width * 0.42,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              LocaleKeys.Search_Filter_filter.tr(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 20,
              color: Colors.grey,
            ),
            FilterCouponsList(
              key: UniqueKey(),
              onChanged: (value) {},
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 20,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: CustomElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    title: LocaleKeys.Search_reset.tr(),
                    elevation: 0,
                    backgroundColor: context.isDarkMode
                        ? Colors.grey.shade800
                        : Colors.grey.shade600,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 1,
                  child: CustomElevatedButton(
                    onPressed: () {
                      context.pop();
                    },
                    title: LocaleKeys.Search_Filter_filter.tr(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
