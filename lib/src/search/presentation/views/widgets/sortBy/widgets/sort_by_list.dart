import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'data/sort_by_list_item.dart';

import '../../../../../../../core/translations/locale_keys.g.dart';

class SortByList extends StatefulWidget {
  const SortByList({super.key, this.startIndex = 0, required this.onChanged});
  final int startIndex;
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
      SortByListItem(label: LocaleKeys.Search_SearchBy_mostPopular.tr(), value: 'most popular'),
      SortByListItem(label: LocaleKeys.Search_SearchBy_bestSelling.tr(), value: 'best selling'),
      SortByListItem(label: LocaleKeys.Search_SearchBy_newest.tr(), value: 'newst'),
      SortByListItem(label: LocaleKeys.Search_SearchBy_oldest.tr(), value: 'oldest'),
      SortByListItem(label: LocaleKeys.Search_SearchBy_rating.tr(), value: 'rating'),
      SortByListItem(label: LocaleKeys.Search_SearchBy_price.tr(), value: 'price'),
    ];
    _value = items[0].value;
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
              },
            ),
          );
        },
      ),
    );
  }
}
