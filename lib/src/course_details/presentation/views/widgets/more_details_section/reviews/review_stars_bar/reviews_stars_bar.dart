import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../core/data/sources/remote/app_url.dart';
import '../../../../../../../../core/translations/locale_keys.g.dart';

import 'reviews_stars_button.dart';
import 'data/stars_bar_item.dart';

class ReviewsStarsBar extends StatefulWidget {
  const ReviewsStarsBar({
    super.key,
    this.initialValue = AppUrl.all,
    required this.onChanged,
  });
  final String initialValue;
  final void Function(String value) onChanged;
  @override
  State<ReviewsStarsBar> createState() => _ReviewsStarsBarState();
}

class _ReviewsStarsBarState extends State<ReviewsStarsBar> {
  late String _value;
  late List<StarsBarItem> items;
  @override
  void initState() {
    _value = widget.initialValue;
    items = [
      StarsBarItem(label: LocaleKeys.Buttons_all.tr(), value: AppUrl.all),
      StarsBarItem(label: '1', value: '1'),
      StarsBarItem(label: '2', value: '2'),
      StarsBarItem(label: '3', value: '3'),
      StarsBarItem(label: '4', value: '4'),
      StarsBarItem(label: '5', value: '5'),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              ReviewsStarsButton(
                onPressed: () {
                  setState(() {
                    _value = items[index].value;
                    widget.onChanged.call(items[index].value);
                  });
                },
                isPressed: _value == items[index].value,
                label: items[index].label,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          );
        },
      ),
    );
  }
}
