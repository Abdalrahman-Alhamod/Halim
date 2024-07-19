import 'package:flutter/material.dart';
import 'package:halim/src/achievements/presentation/views/widgets/store_view/functions/filter_bottom_sheet/filter_coupons_bottom_sheet.dart';

showFilterCouponsBottomsheet({required BuildContext context}) {
  showModalBottomSheet(
    context: context,
    builder: (context) => FilterCouponsBottomSheet(),
    scrollControlDisabledMaxHeightRatio: double.infinity,
  );
}
