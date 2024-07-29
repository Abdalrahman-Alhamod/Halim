import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'data/sort_by_list_item.dart';

import '../../../../../../../core/translations/locale_keys.g.dart';

class SortByList extends StatefulWidget {
  const SortByList(
      {super.key, required this.initialValue, required this.onChanged});
  final String initialValue;
  final void Function(String value) onChanged;
  @override
  State<SortByList> createState() => _SortByListState();
}

class _SortByListState extends State<SortByList> {
  late String _value;
  late List<SortByListItem> items;
  @override
  void initState() {
    items = [
      SortByListItem(
        label: LocaleKeys.Search_SearchBy_mostRelevent.tr(),
        value: AppUrl.kMostRelevent,
      ),
      SortByListItem(
        label: LocaleKeys.Search_SearchBy_mostPopular.tr(),
        value: AppUrl.kMostPopular,
      ),
      SortByListItem(
        label: LocaleKeys.Search_SearchBy_topRated.tr(),
        value: AppUrl.kTopRated,
      ),
      SortByListItem(
        label: LocaleKeys.Search_SearchBy_bestSelling.tr(),
        value: AppUrl.kBestSelling,
      ),
      SortByListItem(
        label: LocaleKeys.Search_SearchBy_latest.tr(),
        value: AppUrl.kLatest,
      ),
      SortByListItem(
        label: LocaleKeys.Search_SearchBy_oldest.tr(),
        value: AppUrl.kOldest,
      ),
      SortByListItem(
        label: LocaleKeys.Search_SearchBy_priceAscending.tr(),
        value: AppUrl.kLowPrice,
      ),
      SortByListItem(
        label: LocaleKeys.Search_SearchBy_priceDescending.tr(),
        value: AppUrl.kHighPrice,
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
                widget.onChanged.call(_value);
              });
            },
            trailing: Radio<String>(
              value: items[index].value,
              groupValue: _value,
              onChanged: (value) {
                setState(
                  () {
                    _value = value!;
                    widget.onChanged.call(value);
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
