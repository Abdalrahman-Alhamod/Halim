import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import 'data/level_bar_item.dart';
import 'level_button.dart';

class LevelBar extends StatefulWidget {
  const LevelBar(
      {super.key, required this.initialValue, required this.onChanged});
  final String initialValue;
  final void Function(String value) onChanged;
  @override
  State<LevelBar> createState() => _LevelBarState();
}

class _LevelBarState extends State<LevelBar> {
  late String _value;
  late List<LevelBarItem> items;
  @override
  void initState() {
    _value = widget.initialValue;
    items = [
      LevelBarItem(
        label: LocaleKeys.CourseDetails_Level_all.tr(),
        value: AppUrl.all,
      ),
      LevelBarItem(
        label: LocaleKeys.CourseDetails_Level_beginner.tr(),
        value: AppUrl.beginner,
      ),
      LevelBarItem(
        label: LocaleKeys.CourseDetails_Level_intermediate.tr(),
        value: AppUrl.intermediate,
      ),
      LevelBarItem(
        label: LocaleKeys.CourseDetails_Level_advanced.tr(),
        value: AppUrl.advanced,
      )
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
              LevelButton(
                onPressed: () {
                  setState(() {
                    _value = items[index].value;
                    widget.onChanged.call(items[index].value);
                  });
                },
                isPressed: _value == items[index].value,
                value: items[index].value,
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
