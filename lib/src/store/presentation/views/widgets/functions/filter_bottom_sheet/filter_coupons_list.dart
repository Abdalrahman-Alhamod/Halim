import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import '../../../../../../search/presentation/views/widgets/sortBy/widgets/data/sort_by_list_item.dart';

import '../../../../../../../core/translations/locale_keys.g.dart';

class FilterCouponsList extends StatefulWidget {
  const FilterCouponsList(
      {super.key, required this.onChanged, required this.initialValue});
  final String initialValue;
  final void Function(String value) onChanged;
  @override
  State<FilterCouponsList> createState() => _FilterCouponsListState();
}

class _FilterCouponsListState extends State<FilterCouponsList> {
  late String _value;
  late List<SortByListItem> items;
  @override
  void initState() {
    items = [
      SortByListItem(
        label: LocaleKeys.Achievements_Store_FilterCoupons_allCoupons.tr(),
        value: AppUrl.all,
      ),
      SortByListItem(
        label: LocaleKeys.Achievements_Store_FilterCoupons_relevantCoupons.tr(),
        value: AppUrl.kRelevant,
      ),
      SortByListItem(
        label:
            LocaleKeys.Achievements_Store_FilterCoupons_purchasableCoupons.tr(),
        value: AppUrl.kPurshasable,
      ),
    ];
    _value = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              items[index].label,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              setState(() {
                _value = items[index].value;
              });
              widget.onChanged.call(_value);
            },
            trailing: Radio<String>(
              value: items[index].value,
              groupValue: _value,
              onChanged: (value) {
                setState(
                  () {
                    _value = value!;
                  },
                );
                widget.onChanged.call(_value);
              },
            ),
          );
        },
      ),
    );
  }
}
