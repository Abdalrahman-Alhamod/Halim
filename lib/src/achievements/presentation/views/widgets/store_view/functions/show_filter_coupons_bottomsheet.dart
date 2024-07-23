import 'package:flutter/material.dart';
import 'filter_bottom_sheet/filter_coupons_bottom_sheet.dart';

showFilterCouponsBottomsheet({required BuildContext context}) {
  showModalBottomSheet(
    context: context,
    builder: (context) => const FilterCouponsBottomSheet(),
    scrollControlDisabledMaxHeightRatio: double.infinity,
  );
}
